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
CMAKE_SOURCE_DIR = /home/dr/CLionProjects/hw13

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dr/CLionProjects/hw13/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/hw13.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hw13.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hw13.dir/flags.make

CMakeFiles/hw13.dir/main.cpp.o: CMakeFiles/hw13.dir/flags.make
CMakeFiles/hw13.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dr/CLionProjects/hw13/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hw13.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hw13.dir/main.cpp.o -c /home/dr/CLionProjects/hw13/main.cpp

CMakeFiles/hw13.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw13.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dr/CLionProjects/hw13/main.cpp > CMakeFiles/hw13.dir/main.cpp.i

CMakeFiles/hw13.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw13.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dr/CLionProjects/hw13/main.cpp -o CMakeFiles/hw13.dir/main.cpp.s

CMakeFiles/hw13.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/hw13.dir/main.cpp.o.requires

CMakeFiles/hw13.dir/main.cpp.o.provides: CMakeFiles/hw13.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/hw13.dir/build.make CMakeFiles/hw13.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/hw13.dir/main.cpp.o.provides

CMakeFiles/hw13.dir/main.cpp.o.provides.build: CMakeFiles/hw13.dir/main.cpp.o


# Object files for target hw13
hw13_OBJECTS = \
"CMakeFiles/hw13.dir/main.cpp.o"

# External object files for target hw13
hw13_EXTERNAL_OBJECTS =

hw13: CMakeFiles/hw13.dir/main.cpp.o
hw13: CMakeFiles/hw13.dir/build.make
hw13: CMakeFiles/hw13.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dr/CLionProjects/hw13/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hw13"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw13.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hw13.dir/build: hw13

.PHONY : CMakeFiles/hw13.dir/build

CMakeFiles/hw13.dir/requires: CMakeFiles/hw13.dir/main.cpp.o.requires

.PHONY : CMakeFiles/hw13.dir/requires

CMakeFiles/hw13.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hw13.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hw13.dir/clean

CMakeFiles/hw13.dir/depend:
	cd /home/dr/CLionProjects/hw13/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dr/CLionProjects/hw13 /home/dr/CLionProjects/hw13 /home/dr/CLionProjects/hw13/cmake-build-debug /home/dr/CLionProjects/hw13/cmake-build-debug /home/dr/CLionProjects/hw13/cmake-build-debug/CMakeFiles/hw13.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hw13.dir/depend

