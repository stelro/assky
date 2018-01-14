cmake_minimum_required(VERSION 3.8)
project(Hello_Texture)

set(CMAKE_CXX_STANDARD 14)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

set(SOURCE_FILES main.cpp ShaderProgram.cpp ShaderProgram.h stb_image.hpp stb_image.cpp Camera.cpp Camera.hpp Vertex.cpp Vertex.hpp Texture.hpp Mesh.cpp Mesh.hpp Model.cpp Model.hpp)
add_executable(${PROJECT_NAME} ${SOURCE_FILES})

find_package(OpenGL REQUIRED)
find_package(PkgConfig REQUIRED)

find_package(assimp REQUIRED)


pkg_search_module(GLFW REQUIRED glfw3)
message(STATUS "Found GLFW3 in ${GLFW3_INCLUDE_DIR}")
include_directories(${ASSIMP_INCLUDE_DIRS})

include_directories(${OPENGL_INCLUDE_DIRS}  ${GLUT_INCLUDE_DIRS} ${GLEW_INCLUDE_DIRS} )
include_directories(${GLFW_INCLUDE_DIRS})

target_link_libraries(${PROJECT_NAME} ${OPENGL_LIBRARIES} ${GLUT_LIBRARY})
target_link_libraries(${PROJECT_NAME} ${GLFW_LIBRARIES} GLEW)
target_link_libraries(${PROJECT_NAME} ${ASSIMP_LIBRARIES})


target_link_libraries(${PROJECT_NAME} ${GLFW_LIBRARIES} )

add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_directory
        ${CMAKE_SOURCE_DIR}/Shaders
        $<TARGET_FILE_DIR:${PROJECT_NAME}>/Shaders)

add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_directory
        ${CMAKE_SOURCE_DIR}/assets
        $<TARGET_FILE_DIR:${PROJECT_NAME}>/assets)
