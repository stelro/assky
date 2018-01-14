#ifndef MESH_H
#define MESH_H


#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include "ShaderProgram.h"
#include "Vertex.hpp"
#include "Texture.hpp"

#include <string>
#include <fstream>
#include <sstream>
#include <iostream>
#include <vector>

class Mesh {
public:
    Mesh(const std::vector<Vertex>& vertices,const std::vector<unsigned int>& indices,const std::vector<Texture>& textures) noexcept ;
    ~Mesh() noexcept ;
    void Draw(const ShaderProgram& shader) noexcept ;


    // Setters
    void setVertices(const std::vector<Vertex>& v) noexcept {
        m_Vertices = v;
    }

    void setIndices(const std::vector<unsigned int>& v) noexcept {
        m_Indices = v;
    }

    void setTextures(const std::vector<Texture>& v) noexcept {
        m_Textures = v;
    }

    // Getters

    std::vector<Vertex> getVertex() const noexcept {
        return m_Vertices;
    }

    std::vector<unsigned int> getIndices() const noexcept {
        return m_Indices;
    }

    std::vector<Texture> getTextures() const noexcept {
        return m_Textures;
    }

private:


    std::vector<Vertex> m_Vertices;
    std::vector<unsigned int> m_Indices;
    std::vector<Texture> m_Textures;

    unsigned int m_VAO;
    unsigned int m_VBO, m_EBO;


    void setupMesh() noexcept ;
};
#endif
