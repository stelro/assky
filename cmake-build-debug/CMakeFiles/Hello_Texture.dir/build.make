# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/stel/clion-2017.2.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/stel/clion-2017.2.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/stel/workspace/learning_opengl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stel/workspace/learning_opengl/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Hello_Texture.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Hello_Texture.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Hello_Texture.dir/flags.make

CMakeFiles/Hello_Texture.dir/main.cpp.o: CMakeFiles/Hello_Texture.dir/flags.make
CMakeFiles/Hello_Texture.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stel/workspace/learning_opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Hello_Texture.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello_Texture.dir/main.cpp.o -c /home/stel/workspace/learning_opengl/main.cpp

CMakeFiles/Hello_Texture.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello_Texture.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stel/workspace/learning_opengl/main.cpp > CMakeFiles/Hello_Texture.dir/main.cpp.i

CMakeFiles/Hello_Texture.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello_Texture.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stel/workspace/learning_opengl/main.cpp -o CMakeFiles/Hello_Texture.dir/main.cpp.s

CMakeFiles/Hello_Texture.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/Hello_Texture.dir/main.cpp.o.requires

CMakeFiles/Hello_Texture.dir/main.cpp.o.provides: CMakeFiles/Hello_Texture.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello_Texture.dir/build.make CMakeFiles/Hello_Texture.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/Hello_Texture.dir/main.cpp.o.provides

CMakeFiles/Hello_Texture.dir/main.cpp.o.provides.build: CMakeFiles/Hello_Texture.dir/main.cpp.o


CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o: CMakeFiles/Hello_Texture.dir/flags.make
CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o: ../ShaderProgram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stel/workspace/learning_opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o -c /home/stel/workspace/learning_opengl/ShaderProgram.cpp

CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stel/workspace/learning_opengl/ShaderProgram.cpp > CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.i

CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stel/workspace/learning_opengl/ShaderProgram.cpp -o CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.s

CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o.requires:

.PHONY : CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o.requires

CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o.provides: CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello_Texture.dir/build.make CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o.provides.build
.PHONY : CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o.provides

CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o.provides.build: CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o


CMakeFiles/Hello_Texture.dir/stb_image.cpp.o: CMakeFiles/Hello_Texture.dir/flags.make
CMakeFiles/Hello_Texture.dir/stb_image.cpp.o: ../stb_image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stel/workspace/learning_opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Hello_Texture.dir/stb_image.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello_Texture.dir/stb_image.cpp.o -c /home/stel/workspace/learning_opengl/stb_image.cpp

CMakeFiles/Hello_Texture.dir/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello_Texture.dir/stb_image.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stel/workspace/learning_opengl/stb_image.cpp > CMakeFiles/Hello_Texture.dir/stb_image.cpp.i

CMakeFiles/Hello_Texture.dir/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello_Texture.dir/stb_image.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stel/workspace/learning_opengl/stb_image.cpp -o CMakeFiles/Hello_Texture.dir/stb_image.cpp.s

CMakeFiles/Hello_Texture.dir/stb_image.cpp.o.requires:

.PHONY : CMakeFiles/Hello_Texture.dir/stb_image.cpp.o.requires

CMakeFiles/Hello_Texture.dir/stb_image.cpp.o.provides: CMakeFiles/Hello_Texture.dir/stb_image.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello_Texture.dir/build.make CMakeFiles/Hello_Texture.dir/stb_image.cpp.o.provides.build
.PHONY : CMakeFiles/Hello_Texture.dir/stb_image.cpp.o.provides

CMakeFiles/Hello_Texture.dir/stb_image.cpp.o.provides.build: CMakeFiles/Hello_Texture.dir/stb_image.cpp.o


CMakeFiles/Hello_Texture.dir/Camera.cpp.o: CMakeFiles/Hello_Texture.dir/flags.make
CMakeFiles/Hello_Texture.dir/Camera.cpp.o: ../Camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stel/workspace/learning_opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Hello_Texture.dir/Camera.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello_Texture.dir/Camera.cpp.o -c /home/stel/workspace/learning_opengl/Camera.cpp

CMakeFiles/Hello_Texture.dir/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello_Texture.dir/Camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stel/workspace/learning_opengl/Camera.cpp > CMakeFiles/Hello_Texture.dir/Camera.cpp.i

CMakeFiles/Hello_Texture.dir/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello_Texture.dir/Camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stel/workspace/learning_opengl/Camera.cpp -o CMakeFiles/Hello_Texture.dir/Camera.cpp.s

CMakeFiles/Hello_Texture.dir/Camera.cpp.o.requires:

.PHONY : CMakeFiles/Hello_Texture.dir/Camera.cpp.o.requires

CMakeFiles/Hello_Texture.dir/Camera.cpp.o.provides: CMakeFiles/Hello_Texture.dir/Camera.cpp.o.requires
	$(MAKE) -f CMakeFiles/Hello_Texture.dir/build.make CMakeFiles/Hello_Texture.dir/Camera.cpp.o.provides.build
.PHONY : CMakeFiles/Hello_Texture.dir/Camera.cpp.o.provides

CMakeFiles/Hello_Texture.dir/Camera.cpp.o.provides.build: CMakeFiles/Hello_Texture.dir/Camera.cpp.o


# Object files for target Hello_Texture
Hello_Texture_OBJECTS = \
"CMakeFiles/Hello_Texture.dir/main.cpp.o" \
"CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o" \
"CMakeFiles/Hello_Texture.dir/stb_image.cpp.o" \
"CMakeFiles/Hello_Texture.dir/Camera.cpp.o"

# External object files for target Hello_Texture
Hello_Texture_EXTERNAL_OBJECTS =

Hello_Texture: CMakeFiles/Hello_Texture.dir/main.cpp.o
Hello_Texture: CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o
Hello_Texture: CMakeFiles/Hello_Texture.dir/stb_image.cpp.o
Hello_Texture: CMakeFiles/Hello_Texture.dir/Camera.cpp.o
Hello_Texture: CMakeFiles/Hello_Texture.dir/build.make
Hello_Texture: /usr/lib/x86_64-linux-gnu/libGLU.so
Hello_Texture: /usr/lib/x86_64-linux-gnu/libGL.so
Hello_Texture: CMakeFiles/Hello_Texture.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stel/workspace/learning_opengl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Hello_Texture"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Hello_Texture.dir/link.txt --verbose=$(VERBOSE)
	/home/stel/clion-2017.2.2/bin/cmake/bin/cmake -E copy_directory /home/stel/workspace/learning_opengl/Shaders /home/stel/workspace/learning_opengl/cmake-build-debug/Shaders
	/home/stel/clion-2017.2.2/bin/cmake/bin/cmake -E copy_directory /home/stel/workspace/learning_opengl/assets /home/stel/workspace/learning_opengl/cmake-build-debug/assets

# Rule to build all files generated by this target.
CMakeFiles/Hello_Texture.dir/build: Hello_Texture

.PHONY : CMakeFiles/Hello_Texture.dir/build

CMakeFiles/Hello_Texture.dir/requires: CMakeFiles/Hello_Texture.dir/main.cpp.o.requires
CMakeFiles/Hello_Texture.dir/requires: CMakeFiles/Hello_Texture.dir/ShaderProgram.cpp.o.requires
CMakeFiles/Hello_Texture.dir/requires: CMakeFiles/Hello_Texture.dir/stb_image.cpp.o.requires
CMakeFiles/Hello_Texture.dir/requires: CMakeFiles/Hello_Texture.dir/Camera.cpp.o.requires

.PHONY : CMakeFiles/Hello_Texture.dir/requires

CMakeFiles/Hello_Texture.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Hello_Texture.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Hello_Texture.dir/clean

CMakeFiles/Hello_Texture.dir/depend:
	cd /home/stel/workspace/learning_opengl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stel/workspace/learning_opengl /home/stel/workspace/learning_opengl /home/stel/workspace/learning_opengl/cmake-build-debug /home/stel/workspace/learning_opengl/cmake-build-debug /home/stel/workspace/learning_opengl/cmake-build-debug/CMakeFiles/Hello_Texture.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Hello_Texture.dir/depend
