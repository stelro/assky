//
// Created by stel on 14/1/2018.
//

#ifndef HELLO_TEXTURE_VERTEX_HPP
#define HELLO_TEXTURE_VERTEX_HPP

#include <glm/glm.hpp>

struct Vertex {
    // position
    glm::vec3 Position;
    // normal
    glm::vec3 Normal;
    // texCoords
    glm::vec2 TexCoords;
    // tangent
    glm::vec3 Tangent;
    // bitangent
    glm::vec3 Bitangent;
};

#endif //HELLO_TEXTURE_VERTEX_HPP
