//
// Created by stel on 14/1/2018.
//

#include "Mesh.hpp"
#include <GL/glew.h>

Mesh::Mesh(std::vector<Vertex> &vertices, std::vector<unsigned int> &indices, std::vector<Texture> &textures)
    : m_Vertices(vertices),
      m_Indices(indices),
      m_Textures(textures)
{
    setUpMesh();
}

Mesh::~Mesh() noexcept
{

}

void Mesh::Draw(const ShaderProgram &shader) noexcept
{
    unsigned int diffuseNr = 1;
    unsigned int specularNr = 1;

    for (auto i = 0; i < m_Textures.size(); i++) {

        glActiveTexture(GL_TEXTURE0 + static_cast<GLenum>(i) );
        // retrive texture number ( the N in diffuse_textureN)

        std::string number;
        std::string name = m_Textures[i].type;

        if ( name == "texture_diffuse" ) {
            number = std::to_string(diffuseNr++);
        } else if ( name == "texture_specualr" ) {
            number = std::to_string(specularNr++);
        }

        shader.setFloat(("material." + name + number).c_str(), i);
        glBindTexture(GL_TEXTURE_2D, m_Textures[i].id);
    }

    glActiveTexture(GL_TEXTURE0);

    //Draw mesh
    glBindVertexArray(m_VAO);
    glDrawElements(GL_TRIANGLES, m_Indices.size(), GL_UNSIGNED_INT, 0);
    glBindVertexArray(0);
}

void Mesh::setUpMesh() noexcept
{
    glGenVertexArrays(1, &m_VAO);
    glGenBuffers(1, &m_VBO);
    glGenBuffers(1, &m_EBO);

    glBindVertexArray(m_VAO);
    glBindBuffer(GL_ARRAY_BUFFER, m_VBO);

    glBufferData(GL_ARRAY_BUFFER, m_Vertices.size() * sizeof(Vertex), &m_Vertices[0], GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, m_Indices.size() * sizeof(unsigned int), &m_Indices[0], GL_STATIC_DRAW);

    //vertex positions
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)0);

    //vertex normals
    glEnableVertexAttribArray(1);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)offsetof(Vertex, Normal));

    //vertex texture coordinates
    glEnableVertexAttribArray(2);
    glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)offsetof(Vertex, TexCoords));

    // unbind
    glBindVertexArray(0);
}





