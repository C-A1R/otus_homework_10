# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/runner/work/otus_homework_10/otus_homework_10

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/runner/work/otus_homework_10/otus_homework_10

# Include any dependencies generated for this target.
include CMakeFiles/test_Storage.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_Storage.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_Storage.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_Storage.dir/flags.make

CMakeFiles/test_Storage.dir/src/test_Storage.cpp.o: CMakeFiles/test_Storage.dir/flags.make
CMakeFiles/test_Storage.dir/src/test_Storage.cpp.o: src/test_Storage.cpp
CMakeFiles/test_Storage.dir/src/test_Storage.cpp.o: CMakeFiles/test_Storage.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/runner/work/otus_homework_10/otus_homework_10/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_Storage.dir/src/test_Storage.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_Storage.dir/src/test_Storage.cpp.o -MF CMakeFiles/test_Storage.dir/src/test_Storage.cpp.o.d -o CMakeFiles/test_Storage.dir/src/test_Storage.cpp.o -c /home/runner/work/otus_homework_10/otus_homework_10/src/test_Storage.cpp

CMakeFiles/test_Storage.dir/src/test_Storage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_Storage.dir/src/test_Storage.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/runner/work/otus_homework_10/otus_homework_10/src/test_Storage.cpp > CMakeFiles/test_Storage.dir/src/test_Storage.cpp.i

CMakeFiles/test_Storage.dir/src/test_Storage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_Storage.dir/src/test_Storage.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/runner/work/otus_homework_10/otus_homework_10/src/test_Storage.cpp -o CMakeFiles/test_Storage.dir/src/test_Storage.cpp.s

CMakeFiles/test_Storage.dir/src/storage.cpp.o: CMakeFiles/test_Storage.dir/flags.make
CMakeFiles/test_Storage.dir/src/storage.cpp.o: src/storage.cpp
CMakeFiles/test_Storage.dir/src/storage.cpp.o: CMakeFiles/test_Storage.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/runner/work/otus_homework_10/otus_homework_10/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test_Storage.dir/src/storage.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_Storage.dir/src/storage.cpp.o -MF CMakeFiles/test_Storage.dir/src/storage.cpp.o.d -o CMakeFiles/test_Storage.dir/src/storage.cpp.o -c /home/runner/work/otus_homework_10/otus_homework_10/src/storage.cpp

CMakeFiles/test_Storage.dir/src/storage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_Storage.dir/src/storage.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/runner/work/otus_homework_10/otus_homework_10/src/storage.cpp > CMakeFiles/test_Storage.dir/src/storage.cpp.i

CMakeFiles/test_Storage.dir/src/storage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_Storage.dir/src/storage.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/runner/work/otus_homework_10/otus_homework_10/src/storage.cpp -o CMakeFiles/test_Storage.dir/src/storage.cpp.s

# Object files for target test_Storage
test_Storage_OBJECTS = \
"CMakeFiles/test_Storage.dir/src/test_Storage.cpp.o" \
"CMakeFiles/test_Storage.dir/src/storage.cpp.o"

# External object files for target test_Storage
test_Storage_EXTERNAL_OBJECTS =

test_Storage: CMakeFiles/test_Storage.dir/src/test_Storage.cpp.o
test_Storage: CMakeFiles/test_Storage.dir/src/storage.cpp.o
test_Storage: CMakeFiles/test_Storage.dir/build.make
test_Storage: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so.1.71.0
test_Storage: CMakeFiles/test_Storage.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/runner/work/otus_homework_10/otus_homework_10/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test_Storage"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_Storage.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_Storage.dir/build: test_Storage
.PHONY : CMakeFiles/test_Storage.dir/build

CMakeFiles/test_Storage.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_Storage.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_Storage.dir/clean

CMakeFiles/test_Storage.dir/depend:
	cd /home/runner/work/otus_homework_10/otus_homework_10 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/runner/work/otus_homework_10/otus_homework_10 /home/runner/work/otus_homework_10/otus_homework_10 /home/runner/work/otus_homework_10/otus_homework_10 /home/runner/work/otus_homework_10/otus_homework_10 /home/runner/work/otus_homework_10/otus_homework_10/CMakeFiles/test_Storage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_Storage.dir/depend
