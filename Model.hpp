//
// Created by stel on 14/1/2018.
//

#ifndef HELLO_TEXTURE_MODEL_HPP
#define HELLO_TEXTURE_MODEL_HPP

#include <string>
#include <vector>
#include "ShaderProgram.h"
#include "Mesh.hpp"

#include "stb_image.hpp"
#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>



unsigned int TextureFromFile(const char *path, const std::string &directory, bool gamma = false);

class Model {
public:
    Model(const std::string& path);
    ~Model();

    void Draw(const ShaderProgram& shader);

private:
    std::vector<Mesh> m_Meshes;
    std::string m_Directory;

    void loadModel(const std::string& path) noexcept ;
    void processNode(aiNode* node, const aiScene* scene);
    Mesh processMesh(aiMesh* mesh, const aiScene* scene);
    std::vector<Texture> loadMaterialTextures(aiMaterial* mat, aiTextureType type, const std::string& typeName);

    std::vector<Texture> m_TexturesLoaded;
};


#endif //HELLO_TEXTURE_MODEL_HPP
