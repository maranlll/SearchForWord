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
include src/QueryResult/CMakeFiles/QueryResult.dir/depend.make

# Include the progress variables for this target.
include src/QueryResult/CMakeFiles/QueryResult.dir/progress.make

# Include the compile flags for this target's objects.
include src/QueryResult/CMakeFiles/QueryResult.dir/flags.make

src/QueryResult/CMakeFiles/QueryResult.dir/QueryResult.cpp.obj: src/QueryResult/CMakeFiles/QueryResult.dir/flags.make
src/QueryResult/CMakeFiles/QueryResult.dir/QueryResult.cpp.obj: src/QueryResult/CMakeFiles/QueryResult.dir/includes_CXX.rsp
src/QueryResult/CMakeFiles/QueryResult.dir/QueryResult.cpp.obj: ../src/QueryResult/QueryResult.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\C++primer\SearchForWord\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/QueryResult/CMakeFiles/QueryResult.dir/QueryResult.cpp.obj"
	cd /d D:\C++primer\SearchForWord\build\src\QueryResult && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\QueryResult.dir\QueryResult.cpp.obj -c D:\C++primer\SearchForWord\src\QueryResult\QueryResult.cpp

src/QueryResult/CMakeFiles/QueryResult.dir/QueryResult.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/QueryResult.dir/QueryResult.cpp.i"
	cd /d D:\C++primer\SearchForWord\build\src\QueryResult && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\C++primer\SearchForWord\src\QueryResult\QueryResult.cpp > CMakeFiles\QueryResult.dir\QueryResult.cpp.i

src/QueryResult/CMakeFiles/QueryResult.dir/QueryResult.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/QueryResult.dir/QueryResult.cpp.s"
	cd /d D:\C++primer\SearchForWord\build\src\QueryResult && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\C++primer\SearchForWord\src\QueryResult\QueryResult.cpp -o CMakeFiles\QueryResult.dir\QueryResult.cpp.s

# Object files for target QueryResult
QueryResult_OBJECTS = \
"CMakeFiles/QueryResult.dir/QueryResult.cpp.obj"

# External object files for target QueryResult
QueryResult_EXTERNAL_OBJECTS =

../lib/libQueryResult.a: src/QueryResult/CMakeFiles/QueryResult.dir/QueryResult.cpp.obj
../lib/libQueryResult.a: src/QueryResult/CMakeFiles/QueryResult.dir/build.make
../lib/libQueryResult.a: src/QueryResult/CMakeFiles/QueryResult.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\C++primer\SearchForWord\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ..\..\..\lib\libQueryResult.a"
	cd /d D:\C++primer\SearchForWord\build\src\QueryResult && $(CMAKE_COMMAND) -P CMakeFiles\QueryResult.dir\cmake_clean_target.cmake
	cd /d D:\C++primer\SearchForWord\build\src\QueryResult && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\QueryResult.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/QueryResult/CMakeFiles/QueryResult.dir/build: ../lib/libQueryResult.a

.PHONY : src/QueryResult/CMakeFiles/QueryResult.dir/build

src/QueryResult/CMakeFiles/QueryResult.dir/clean:
	cd /d D:\C++primer\SearchForWord\build\src\QueryResult && $(CMAKE_COMMAND) -P CMakeFiles\QueryResult.dir\cmake_clean.cmake
.PHONY : src/QueryResult/CMakeFiles/QueryResult.dir/clean

src/QueryResult/CMakeFiles/QueryResult.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\C++primer\SearchForWord D:\C++primer\SearchForWord\src\QueryResult D:\C++primer\SearchForWord\build D:\C++primer\SearchForWord\build\src\QueryResult D:\C++primer\SearchForWord\build\src\QueryResult\CMakeFiles\QueryResult.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/QueryResult/CMakeFiles/QueryResult.dir/depend
