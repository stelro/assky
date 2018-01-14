//
// Created by stel on 25/3/2017.
//

#ifndef OPENGLTUTORIAL_SHADERPROGRAM_H
#define OPENGLTUTORIAL_SHADERPROGRAM_H

#include <string>
#include <GL/glew.h>
#include <glm/glm.hpp>

class ShaderProgram {
public:
    ShaderProgram();
    ~ShaderProgram();

    bool loadShaders(const std::string& vertexShader, const std::string& fragmentShader);
    void use();

    GLuint getShaderProgram() const { return m_Program; }

    void refreshShaders();

    void setMat4(const std::string& location, const glm::mat4& mat4);

    void setBool(const std::string &name, bool value) const
    {
        glUniform1i(glGetUniformLocation(m_Program, name.c_str()), (int)value);
    }
    // ------------------------------------------------------------------------
    void setInt(const std::string &name, int value) const
    {
        glUniform1i(glGetUniformLocation(m_Program, name.c_str()), value);
    }
    // ------------------------------------------------------------------------
    void setFloat(const std::string &name, float value) const
    {
        glUniform1f(glGetUniformLocation(m_Program, name.c_str()), value);
    }
    // ------------------------------------------------------------------------
    void setVec2(const std::string &name, const glm::vec2 &value) const
    {
        glUniform2fv(glGetUniformLocation(m_Program, name.c_str()), 1, &value[0]);
    }
    void setVec2(const std::string &name, float x, float y) const
    {
        glUniform2f(glGetUniformLocation(m_Program, name.c_str()), x, y);
    }
    // ------------------------------------------------------------------------
    void setVec3(const std::string &name, const glm::vec3 &value) const
    {
        glUniform3fv(glGetUniformLocation(m_Program, name.c_str()), 1, &value[0]);
    }
    void setVec3(const std::string &name, float x, float y, float z) const
    {
        glUniform3f(glGetUniformLocation(m_Program, name.c_str()), x, y, z);
    }
    // ------------------------------------------------------------------------
    void setVec4(const std::string &name, const glm::vec4 &value) const
    {
        glUniform4fv(glGetUniformLocation(m_Program, name.c_str()), 1, &value[0]);
    }
    void setVec4(const std::string &name, float x, float y, float z, float w)
    {
        glUniform4f(glGetUniformLocation(m_Program, name.c_str()), x, y, z, w);
    }
    // ------------------------------------------------------------------------
    void setMat2(const std::string &name, const glm::mat2 &mat) const
    {
        glUniformMatrix2fv(glGetUniformLocation(m_Program, name.c_str()), 1, GL_FALSE, &mat[0][0]);
    }
    // ------------------------------------------------------------------------
    void setMat3(const std::string &name, const glm::mat3 &mat) const
    {
        glUniformMatrix3fv(glGetUniformLocation(m_Program, name.c_str()), 1, GL_FALSE, &mat[0][0]);
    }
    // ------------------------------------------------------------------------
    void setMat4(const std::string &name, const glm::mat4 &mat) const
    {
        glUniformMatrix4fv(glGetUniformLocation(m_Program, name.c_str()), 1, GL_FALSE, &mat[0][0]);
    }


private:

    bool checkCompileErrors(GLuint& shader_id);
    bool checkLinkStatus();

    GLuint m_Program;
    GLuint m_VertexShader;
    GLuint m_FragmentShader;

    std::string m_VertexShaderPath;
    std::string m_FragmentShaderPath;

};


#endif //OPENGLTUTORIAL_SHADERPROGRAM_H
