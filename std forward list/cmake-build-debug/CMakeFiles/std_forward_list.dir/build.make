# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /cygdrive/c/Users/cameron/.CLion2018.3/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/cameron/.CLion2018.3/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/cygdrive/c/Users/cameron/Documents/Development/C++/std forward list"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/c/Users/cameron/Documents/Development/C++/std forward list/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/std_forward_list.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/std_forward_list.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/std_forward_list.dir/flags.make

CMakeFiles/std_forward_list.dir/main.cpp.o: CMakeFiles/std_forward_list.dir/flags.make
CMakeFiles/std_forward_list.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/cameron/Documents/Development/C++/std forward list/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/std_forward_list.dir/main.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/std_forward_list.dir/main.cpp.o -c "/cygdrive/c/Users/cameron/Documents/Development/C++/std forward list/main.cpp"

CMakeFiles/std_forward_list.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/std_forward_list.dir/main.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/cygdrive/c/Users/cameron/Documents/Development/C++/std forward list/main.cpp" > CMakeFiles/std_forward_list.dir/main.cpp.i

CMakeFiles/std_forward_list.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/std_forward_list.dir/main.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/cygdrive/c/Users/cameron/Documents/Development/C++/std forward list/main.cpp" -o CMakeFiles/std_forward_list.dir/main.cpp.s

# Object files for target std_forward_list
std_forward_list_OBJECTS = \
"CMakeFiles/std_forward_list.dir/main.cpp.o"

# External object files for target std_forward_list
std_forward_list_EXTERNAL_OBJECTS =

std_forward_list.exe: CMakeFiles/std_forward_list.dir/main.cpp.o
std_forward_list.exe: CMakeFiles/std_forward_list.dir/build.make
std_forward_list.exe: CMakeFiles/std_forward_list.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/c/Users/cameron/Documents/Development/C++/std forward list/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable std_forward_list.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/std_forward_list.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/std_forward_list.dir/build: std_forward_list.exe

.PHONY : CMakeFiles/std_forward_list.dir/build

CMakeFiles/std_forward_list.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/std_forward_list.dir/cmake_clean.cmake
.PHONY : CMakeFiles/std_forward_list.dir/clean

CMakeFiles/std_forward_list.dir/depend:
	cd "/cygdrive/c/Users/cameron/Documents/Development/C++/std forward list/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/c/Users/cameron/Documents/Development/C++/std forward list" "/cygdrive/c/Users/cameron/Documents/Development/C++/std forward list" "/cygdrive/c/Users/cameron/Documents/Development/C++/std forward list/cmake-build-debug" "/cygdrive/c/Users/cameron/Documents/Development/C++/std forward list/cmake-build-debug" "/cygdrive/c/Users/cameron/Documents/Development/C++/std forward list/cmake-build-debug/CMakeFiles/std_forward_list.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/std_forward_list.dir/depend
