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
CMAKE_COMMAND = /opt/clion-2017.3.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion-2017.3.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dr/CLionProjects/hw15

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dr/CLionProjects/hw15/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/hw15.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hw15.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hw15.dir/flags.make

CMakeFiles/hw15.dir/main.cpp.o: CMakeFiles/hw15.dir/flags.make
CMakeFiles/hw15.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dr/CLionProjects/hw15/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hw15.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hw15.dir/main.cpp.o -c /home/dr/CLionProjects/hw15/main.cpp

CMakeFiles/hw15.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw15.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dr/CLionProjects/hw15/main.cpp > CMakeFiles/hw15.dir/main.cpp.i

CMakeFiles/hw15.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw15.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dr/CLionProjects/hw15/main.cpp -o CMakeFiles/hw15.dir/main.cpp.s

CMakeFiles/hw15.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/hw15.dir/main.cpp.o.requires

CMakeFiles/hw15.dir/main.cpp.o.provides: CMakeFiles/hw15.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/hw15.dir/build.make CMakeFiles/hw15.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/hw15.dir/main.cpp.o.provides

CMakeFiles/hw15.dir/main.cpp.o.provides.build: CMakeFiles/hw15.dir/main.cpp.o


# Object files for target hw15
hw15_OBJECTS = \
"CMakeFiles/hw15.dir/main.cpp.o"

# External object files for target hw15
hw15_EXTERNAL_OBJECTS =

hw15: CMakeFiles/hw15.dir/main.cpp.o
hw15: CMakeFiles/hw15.dir/build.make
hw15: CMakeFiles/hw15.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dr/CLionProjects/hw15/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hw15"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw15.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hw15.dir/build: hw15

.PHONY : CMakeFiles/hw15.dir/build

CMakeFiles/hw15.dir/requires: CMakeFiles/hw15.dir/main.cpp.o.requires

.PHONY : CMakeFiles/hw15.dir/requires

CMakeFiles/hw15.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hw15.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hw15.dir/clean

CMakeFiles/hw15.dir/depend:
	cd /home/dr/CLionProjects/hw15/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dr/CLionProjects/hw15 /home/dr/CLionProjects/hw15 /home/dr/CLionProjects/hw15/cmake-build-debug /home/dr/CLionProjects/hw15/cmake-build-debug /home/dr/CLionProjects/hw15/cmake-build-debug/CMakeFiles/hw15.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hw15.dir/depend

