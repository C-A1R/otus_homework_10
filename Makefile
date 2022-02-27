# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target package
package: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool..."
	/usr/local/bin/cpack --config ./CPackConfig.cmake
.PHONY : package

# Special rule for the target package
package/fast: package
.PHONY : package/fast

# Special rule for the target package_source
package_source:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool for source..."
	/usr/local/bin/cpack --config ./CPackSourceConfig.cmake /home/runner/work/otus_homework_10/otus_homework_10/CPackSourceConfig.cmake
.PHONY : package_source

# Special rule for the target package_source
package_source/fast: package_source
.PHONY : package_source/fast

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/local/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test
.PHONY : test/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/runner/work/otus_homework_10/otus_homework_10/CMakeFiles /home/runner/work/otus_homework_10/otus_homework_10//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/runner/work/otus_homework_10/otus_homework_10/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named doc_doxygen

# Build rule for target.
doc_doxygen: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 doc_doxygen
.PHONY : doc_doxygen

# fast build rule for target.
doc_doxygen/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/doc_doxygen.dir/build.make CMakeFiles/doc_doxygen.dir/build
.PHONY : doc_doxygen/fast

#=============================================================================
# Target rules for targets named join_server

# Build rule for target.
join_server: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 join_server
.PHONY : join_server

# fast build rule for target.
join_server/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/join_server.dir/build.make CMakeFiles/join_server.dir/build
.PHONY : join_server/fast

#=============================================================================
# Target rules for targets named test_Version

# Build rule for target.
test_Version: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 test_Version
.PHONY : test_Version

# fast build rule for target.
test_Version/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_Version.dir/build.make CMakeFiles/test_Version.dir/build
.PHONY : test_Version/fast

#=============================================================================
# Target rules for targets named version_lib

# Build rule for target.
version_lib: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 version_lib
.PHONY : version_lib

# fast build rule for target.
version_lib/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/version_lib.dir/build.make CMakeFiles/version_lib.dir/build
.PHONY : version_lib/fast

#=============================================================================
# Target rules for targets named test_Storage

# Build rule for target.
test_Storage: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 test_Storage
.PHONY : test_Storage

# fast build rule for target.
test_Storage/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_Storage.dir/build.make CMakeFiles/test_Storage.dir/build
.PHONY : test_Storage/fast

src/main.o: src/main.cpp.o
.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/join_server.dir/build.make CMakeFiles/join_server.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/join_server.dir/build.make CMakeFiles/join_server.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/join_server.dir/build.make CMakeFiles/join_server.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

src/server.o: src/server.cpp.o
.PHONY : src/server.o

# target to build an object file
src/server.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/join_server.dir/build.make CMakeFiles/join_server.dir/src/server.cpp.o
.PHONY : src/server.cpp.o

src/server.i: src/server.cpp.i
.PHONY : src/server.i

# target to preprocess a source file
src/server.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/join_server.dir/build.make CMakeFiles/join_server.dir/src/server.cpp.i
.PHONY : src/server.cpp.i

src/server.s: src/server.cpp.s
.PHONY : src/server.s

# target to generate assembly for a file
src/server.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/join_server.dir/build.make CMakeFiles/join_server.dir/src/server.cpp.s
.PHONY : src/server.cpp.s

src/session.o: src/session.cpp.o
.PHONY : src/session.o

# target to build an object file
src/session.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/join_server.dir/build.make CMakeFiles/join_server.dir/src/session.cpp.o
.PHONY : src/session.cpp.o

src/session.i: src/session.cpp.i
.PHONY : src/session.i

# target to preprocess a source file
src/session.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/join_server.dir/build.make CMakeFiles/join_server.dir/src/session.cpp.i
.PHONY : src/session.cpp.i

src/session.s: src/session.cpp.s
.PHONY : src/session.s

# target to generate assembly for a file
src/session.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/join_server.dir/build.make CMakeFiles/join_server.dir/src/session.cpp.s
.PHONY : src/session.cpp.s

src/storage.o: src/storage.cpp.o
.PHONY : src/storage.o

# target to build an object file
src/storage.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/join_server.dir/build.make CMakeFiles/join_server.dir/src/storage.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_Storage.dir/build.make CMakeFiles/test_Storage.dir/src/storage.cpp.o
.PHONY : src/storage.cpp.o

src/storage.i: src/storage.cpp.i
.PHONY : src/storage.i

# target to preprocess a source file
src/storage.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/join_server.dir/build.make CMakeFiles/join_server.dir/src/storage.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_Storage.dir/build.make CMakeFiles/test_Storage.dir/src/storage.cpp.i
.PHONY : src/storage.cpp.i

src/storage.s: src/storage.cpp.s
.PHONY : src/storage.s

# target to generate assembly for a file
src/storage.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/join_server.dir/build.make CMakeFiles/join_server.dir/src/storage.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_Storage.dir/build.make CMakeFiles/test_Storage.dir/src/storage.cpp.s
.PHONY : src/storage.cpp.s

src/test_Storage.o: src/test_Storage.cpp.o
.PHONY : src/test_Storage.o

# target to build an object file
src/test_Storage.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_Storage.dir/build.make CMakeFiles/test_Storage.dir/src/test_Storage.cpp.o
.PHONY : src/test_Storage.cpp.o

src/test_Storage.i: src/test_Storage.cpp.i
.PHONY : src/test_Storage.i

# target to preprocess a source file
src/test_Storage.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_Storage.dir/build.make CMakeFiles/test_Storage.dir/src/test_Storage.cpp.i
.PHONY : src/test_Storage.cpp.i

src/test_Storage.s: src/test_Storage.cpp.s
.PHONY : src/test_Storage.s

# target to generate assembly for a file
src/test_Storage.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_Storage.dir/build.make CMakeFiles/test_Storage.dir/src/test_Storage.cpp.s
.PHONY : src/test_Storage.cpp.s

src/version/test_Version.o: src/version/test_Version.cpp.o
.PHONY : src/version/test_Version.o

# target to build an object file
src/version/test_Version.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_Version.dir/build.make CMakeFiles/test_Version.dir/src/version/test_Version.cpp.o
.PHONY : src/version/test_Version.cpp.o

src/version/test_Version.i: src/version/test_Version.cpp.i
.PHONY : src/version/test_Version.i

# target to preprocess a source file
src/version/test_Version.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_Version.dir/build.make CMakeFiles/test_Version.dir/src/version/test_Version.cpp.i
.PHONY : src/version/test_Version.cpp.i

src/version/test_Version.s: src/version/test_Version.cpp.s
.PHONY : src/version/test_Version.s

# target to generate assembly for a file
src/version/test_Version.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test_Version.dir/build.make CMakeFiles/test_Version.dir/src/version/test_Version.cpp.s
.PHONY : src/version/test_Version.cpp.s

src/version/versionLib.o: src/version/versionLib.cpp.o
.PHONY : src/version/versionLib.o

# target to build an object file
src/version/versionLib.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/version_lib.dir/build.make CMakeFiles/version_lib.dir/src/version/versionLib.cpp.o
.PHONY : src/version/versionLib.cpp.o

src/version/versionLib.i: src/version/versionLib.cpp.i
.PHONY : src/version/versionLib.i

# target to preprocess a source file
src/version/versionLib.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/version_lib.dir/build.make CMakeFiles/version_lib.dir/src/version/versionLib.cpp.i
.PHONY : src/version/versionLib.cpp.i

src/version/versionLib.s: src/version/versionLib.cpp.s
.PHONY : src/version/versionLib.s

# target to generate assembly for a file
src/version/versionLib.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/version_lib.dir/build.make CMakeFiles/version_lib.dir/src/version/versionLib.cpp.s
.PHONY : src/version/versionLib.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... install"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... package"
	@echo "... package_source"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... doc_doxygen"
	@echo "... join_server"
	@echo "... test_Storage"
	@echo "... test_Version"
	@echo "... version_lib"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/server.o"
	@echo "... src/server.i"
	@echo "... src/server.s"
	@echo "... src/session.o"
	@echo "... src/session.i"
	@echo "... src/session.s"
	@echo "... src/storage.o"
	@echo "... src/storage.i"
	@echo "... src/storage.s"
	@echo "... src/test_Storage.o"
	@echo "... src/test_Storage.i"
	@echo "... src/test_Storage.s"
	@echo "... src/version/test_Version.o"
	@echo "... src/version/test_Version.i"
	@echo "... src/version/test_Version.s"
	@echo "... src/version/versionLib.o"
	@echo "... src/version/versionLib.i"
	@echo "... src/version/versionLib.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
