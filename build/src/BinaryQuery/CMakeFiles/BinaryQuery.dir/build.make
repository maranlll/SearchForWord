# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\C++primer\SearchForWord

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\C++primer\SearchForWord\build

# Include any dependencies generated for this target.
include src/BinaryQuery/CMakeFiles/BinaryQuery.dir/depend.make

# Include the progress variables for this target.
include src/BinaryQuery/CMakeFiles/BinaryQuery.dir/progress.make

# Include the compile flags for this target's objects.
include src/BinaryQuery/CMakeFiles/BinaryQuery.dir/flags.make

src/BinaryQuery/CMakeFiles/BinaryQuery.dir/BinaryQuery.cpp.obj: src/BinaryQuery/CMakeFiles/BinaryQuery.dir/flags.make
src/BinaryQuery/CMakeFiles/BinaryQuery.dir/BinaryQuery.cpp.obj: src/BinaryQuery/CMakeFiles/BinaryQuery.dir/includes_CXX.rsp
src/BinaryQuery/CMakeFiles/BinaryQuery.dir/BinaryQuery.cpp.obj: ../src/BinaryQuery/BinaryQuery.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\C++primer\SearchForWord\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/BinaryQuery/CMakeFiles/BinaryQuery.dir/BinaryQuery.cpp.obj"
	cd /d D:\C++primer\SearchForWord\build\src\BinaryQuery && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\BinaryQuery.dir\BinaryQuery.cpp.obj -c D:\C++primer\SearchForWord\src\BinaryQuery\BinaryQuery.cpp

src/BinaryQuery/CMakeFiles/BinaryQuery.dir/BinaryQuery.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BinaryQuery.dir/BinaryQuery.cpp.i"
	cd /d D:\C++primer\SearchForWord\build\src\BinaryQuery && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\C++primer\SearchForWord\src\BinaryQuery\BinaryQuery.cpp > CMakeFiles\BinaryQuery.dir\BinaryQuery.cpp.i

src/BinaryQuery/CMakeFiles/BinaryQuery.dir/BinaryQuery.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BinaryQuery.dir/BinaryQuery.cpp.s"
	cd /d D:\C++primer\SearchForWord\build\src\BinaryQuery && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\C++primer\SearchForWord\src\BinaryQuery\BinaryQuery.cpp -o CMakeFiles\BinaryQuery.dir\BinaryQuery.cpp.s

# Object files for target BinaryQuery
BinaryQuery_OBJECTS = \
"CMakeFiles/BinaryQuery.dir/BinaryQuery.cpp.obj"

# External object files for target BinaryQuery
BinaryQuery_EXTERNAL_OBJECTS =

../lib/libBinaryQuery.a: src/BinaryQuery/CMakeFiles/BinaryQuery.dir/BinaryQuery.cpp.obj
../lib/libBinaryQuery.a: src/BinaryQuery/CMakeFiles/BinaryQuery.dir/build.make
../lib/libBinaryQuery.a: src/BinaryQuery/CMakeFiles/BinaryQuery.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\C++primer\SearchForWord\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ..\..\..\lib\libBinaryQuery.a"
	cd /d D:\C++primer\SearchForWord\build\src\BinaryQuery && $(CMAKE_COMMAND) -P CMakeFiles\BinaryQuery.dir\cmake_clean_target.cmake
	cd /d D:\C++primer\SearchForWord\build\src\BinaryQuery && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\BinaryQuery.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/BinaryQuery/CMakeFiles/BinaryQuery.dir/build: ../lib/libBinaryQuery.a

.PHONY : src/BinaryQuery/CMakeFiles/BinaryQuery.dir/build

src/BinaryQuery/CMakeFiles/BinaryQuery.dir/clean:
	cd /d D:\C++primer\SearchForWord\build\src\BinaryQuery && $(CMAKE_COMMAND) -P CMakeFiles\BinaryQuery.dir\cmake_clean.cmake
.PHONY : src/BinaryQuery/CMakeFiles/BinaryQuery.dir/clean

src/BinaryQuery/CMakeFiles/BinaryQuery.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\C++primer\SearchForWord D:\C++primer\SearchForWord\src\BinaryQuery D:\C++primer\SearchForWord\build D:\C++primer\SearchForWord\build\src\BinaryQuery D:\C++primer\SearchForWord\build\src\BinaryQuery\CMakeFiles\BinaryQuery.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/BinaryQuery/CMakeFiles/BinaryQuery.dir/depend

