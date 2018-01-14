//
// Created by stel on 14/1/2018.
//

#ifndef HELLO_TEXTURE_MESH_HPP
#define HELLO_TEXTURE_MESH_HPP

#include "Vertex.hpp"
#include "Texture.hpp"
#include "ShaderProgram.h"

#include <vector>

class Mesh {
public:
    Mesh(std::vector<Vertex>& vertices, std::vector<unsigned int>& indices, std::vector<Texture>& textures);
    ~Mesh() noexcept ;

    std::vector<Vertex> getVerticies() const noexcept {
        return m_Vertices;
    }

    std::vector<unsigned int> getIndices() const noexcept {
        return m_Indices;
    }

    std::vector<Texture> getTextures() const noexcept {
        return m_Textures;
    }

    void setVertices(const std::vector<Vertex>& vertices) {
        m_Vertices = vertices;
    }

    void setIndices(const std::vector<unsigned int>& indeces) noexcept  {
        m_Indices = indeces;
    }

    void setTextures(const std::vector<Texture>& textures) noexcept {
        m_Textures = textures;
    }

    void Draw(const ShaderProgram& shader) noexcept ;

private:

    void setUpMesh() noexcept ;

    std::vector<Vertex> m_Vertices;
    std::vector<unsigned int> m_Indices;
    std::vector<Texture> m_Textures;

    unsigned int m_VAO, m_VBO, m_EBO;
};


#endif //HELLO_TEXTURE_MESH_HPP
