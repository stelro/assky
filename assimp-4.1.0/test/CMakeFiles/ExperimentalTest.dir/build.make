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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/stel/workspace/learning_opengl/assimp-4.1.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stel/workspace/learning_opengl/assimp-4.1.0

# Utility rule file for ExperimentalTest.

# Include the progress variables for this target.
include test/CMakeFiles/ExperimentalTest.dir/progress.make

test/CMakeFiles/ExperimentalTest:
	cd /home/stel/workspace/learning_opengl/assimp-4.1.0/test && /usr/bin/ctest -D ExperimentalTest

ExperimentalTest: test/CMakeFiles/ExperimentalTest
ExperimentalTest: test/CMakeFiles/ExperimentalTest.dir/build.make

.PHONY : ExperimentalTest

# Rule to build all files generated by this target.
test/CMakeFiles/ExperimentalTest.dir/build: ExperimentalTest

.PHONY : test/CMakeFiles/ExperimentalTest.dir/build

test/CMakeFiles/ExperimentalTest.dir/clean:
	cd /home/stel/workspace/learning_opengl/assimp-4.1.0/test && $(CMAKE_COMMAND) -P CMakeFiles/ExperimentalTest.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/ExperimentalTest.dir/clean

test/CMakeFiles/ExperimentalTest.dir/depend:
	cd /home/stel/workspace/learning_opengl/assimp-4.1.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stel/workspace/learning_opengl/assimp-4.1.0 /home/stel/workspace/learning_opengl/assimp-4.1.0/test /home/stel/workspace/learning_opengl/assimp-4.1.0 /home/stel/workspace/learning_opengl/assimp-4.1.0/test /home/stel/workspace/learning_opengl/assimp-4.1.0/test/CMakeFiles/ExperimentalTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/ExperimentalTest.dir/depend

