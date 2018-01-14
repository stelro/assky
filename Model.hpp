#ifndef MODEL_H
#define MODEL_H


#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include "stb_image.hpp"
#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>

#include "ShaderProgram.h"
#include "Mesh.hpp"

#include <string>
#include <fstream>
#include <sstream>
#include <iostream>
#include <map>
#include <vector>

unsigned int TextureFromFile(const char *path, const std::string &directory, bool gamma);

class Model
{
public:

    explicit Model(const std::string& path, bool gamma = false);
    ~Model();

    void Draw(const ShaderProgram& shader) noexcept ;

private:

    std::vector<Texture> m_TexturesLoaded;
    std::vector<Mesh> m_Meshes;
    std::string m_Directory;

    bool m_GammaCorrection;

    void loadModel(const std::string& path) noexcept ;
    void processNode(aiNode *node, const aiScene *scene) noexcept ;
    Mesh processMesh(aiMesh *mesh, const aiScene *scene) noexcept ;
    std::vector<Texture> loadMaterialTextures(aiMaterial *mat, aiTextureType type, const std::string& typeName) noexcept ;
};



#endif

