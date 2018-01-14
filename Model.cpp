//
// Created by stel on 14/1/2018.
//

#include "Model.hpp"
#include <iostream>

unsigned int TextureFromFile(const char *path, const std::string &directory, bool gamma)
{
    std::string filename = std::string(path);
    filename = directory + '/' + filename;

    unsigned int textureID;
    glGenTextures(1, &textureID);

    int width, height, nrComponents;
    unsigned char *data = stbi_load(filename.c_str(), &width, &height, &nrComponents, 0);
    if (data)
    {
        GLenum format;
        if (nrComponents == 1)
            format = GL_RED;
        else if (nrComponents == 3)
            format = GL_RGB;
        else if (nrComponents == 4)
            format = GL_RGBA;

        glBindTexture(GL_TEXTURE_2D, textureID);
        glTexImage2D(GL_TEXTURE_2D, 0, format, width, height, 0, format, GL_UNSIGNED_BYTE, data);
        glGenerateMipmap(GL_TEXTURE_2D);

        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

        stbi_image_free(data);
    }
    else
    {
        std::cout << "Texture failed to load at path: " << path << std::endl;
        stbi_image_free(data);
    }

    return textureID;
}

Model::Model(const std::string &path)
{

}


Model::~Model()
{

}

void Model::Draw(const ShaderProgram &shader)
{
    for (auto& mesh : m_Meshes) {
        mesh.Draw(shader);
    }
}

void Model::loadModel(const std::string &path) noexcept
{
    Assimp::Importer importer;
    const aiScene* scene = importer.ReadFile(path, aiProcess_Triangulate | aiProcess_FlipUVs);

    if ( !scene || scene->mFlags & AI_SCENE_FLAGS_INCOMPLETE || !scene->mRootNode ) {
        std::cerr << "Error ASSIPM::" << importer.GetErrorString() << '\n';
        return;
    }

    m_Directory = path.substr(0, path.find_last_of('/'));

    processNode(scene->mRootNode, scene);
}

void Model::processNode(aiNode *node, const aiScene *scene)
{
    // Process all the node's meshes ( if any )
    for ( auto i = 0; i < node->mNumMeshes; i++ ) {
        aiMesh *mesh = scene->mMeshes[ node->mMeshes[i] ];
        m_Meshes.push_back( this->processMesh(mesh,scene) );
    }

    // then do the same for each of its children
    for ( auto i = 0; i < node->mNumChildren; i++ ) {
        processNode( node->mChildren[i], scene );
    }
}

Mesh Model::processMesh(aiMesh *mesh, const aiScene *scene)
{
    std::vector<Vertex> vertices;
    std::vector<unsigned int> indices;
    std::vector<Texture> textures;

    for ( auto i = 0; i < mesh->mNumVertices; i++ ) {
        Vertex vertex;

        glm::vec3 vector;
        vector.x = mesh->mVertices[i].x;
        vector.y = mesh->mVertices[i].y;
        vector.z = mesh->mVertices[i].z;
        vertex.Position = vector;

        vector.x = mesh->mNormals[i].x;
        vector.y = mesh->mNormals[i].y;
        vector.z = mesh->mNormals[i].z;
        vertex.Normal = vector;

        if ( mesh->mTextureCoords[0] ) {
            glm::vec2 vec;
            vec.x = mesh->mTextureCoords[0][i].x;
            vec.y = mesh->mTextureCoords[0][i].y;
            vertex.TexCoords = vec;
        }

        vertices.push_back(vertex);
    }

    // Process indices

    for ( auto i = 0; i < mesh->mNumFaces; i++ ) {

        aiFace face = mesh->mFaces[i];

        for ( auto j = 0; j < face.mNumIndices; j++ ) {
            indices.push_back( face.mIndices[i] );
        }
    }

    // Process Material

    if ( mesh->mMaterialIndex >= 0 ) {

        aiMaterial *material = scene->mMaterials[ mesh->mMaterialIndex ];
        std::vector< Texture > diffuseMaps = loadMaterialTextures( material, aiTextureType_DIFFUSE, "texture_diffuse");
        textures.insert( textures.end(), diffuseMaps.begin(), diffuseMaps.end() );

        std::vector< Texture > specualrMaps = loadMaterialTextures( material, aiTextureType_SPECULAR, "texture_specualr");
        textures.insert( textures.end(), specualrMaps.begin(), specualrMaps.end() );

    }

    return Mesh( vertices, indices, textures );
}

std::vector<Texture> Model::loadMaterialTextures(aiMaterial *mat, aiTextureType type, const std::string &typeName)
{
    std::vector<Texture> textures;
    for(unsigned int i = 0; i < mat->GetTextureCount(type); i++)
    {
        aiString str;
        mat->GetTexture(type, i, &str);
        bool skip = false;
        for(unsigned int j = 0; j < m_TexturesLoaded.size(); j++)
        {
            if(std::strcmp(m_TexturesLoaded[j].path.data(), str.C_Str()) == 0)
            {
                textures.push_back(m_TexturesLoaded[j]);
                skip = true;
                break;
            }
        }
        if(!skip)
        {   // if texture hasn't been loaded already, load it
            Texture texture;
            texture.id = TextureFromFile(str.C_Str(), m_Directory);
            texture.type = typeName;
            texture.path = str.C_Str();
            textures.push_back(texture);
            m_TexturesLoaded.push_back(texture); // add to loaded textures
        }
    }
    return textures;
}




