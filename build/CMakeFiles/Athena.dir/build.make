# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\MITRA\Desktop\Projects\Athena-BT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\MITRA\Desktop\Projects\Athena-BT\build

# Include any dependencies generated for this target.
include CMakeFiles/Athena.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Athena.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Athena.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Athena.dir/flags.make

CMakeFiles/Athena.dir/codegen:
.PHONY : CMakeFiles/Athena.dir/codegen

CMakeFiles/Athena.dir/beast.cpp.obj: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/beast.cpp.obj: CMakeFiles/Athena.dir/includes_CXX.rsp
CMakeFiles/Athena.dir/beast.cpp.obj: C:/Users/MITRA/Desktop/Projects/Athena-BT/beast.cpp
CMakeFiles/Athena.dir/beast.cpp.obj: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\MITRA\Desktop\Projects\Athena-BT\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Athena.dir/beast.cpp.obj"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/beast.cpp.obj -MF CMakeFiles\Athena.dir\beast.cpp.obj.d -o CMakeFiles\Athena.dir\beast.cpp.obj -c C:\Users\MITRA\Desktop\Projects\Athena-BT\beast.cpp

CMakeFiles/Athena.dir/beast.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Athena.dir/beast.cpp.i"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\MITRA\Desktop\Projects\Athena-BT\beast.cpp > CMakeFiles\Athena.dir\beast.cpp.i

CMakeFiles/Athena.dir/beast.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/beast.cpp.s"
	C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\MITRA\Desktop\Projects\Athena-BT\beast.cpp -o CMakeFiles\Athena.dir\beast.cpp.s

# Object files for target Athena
Athena_OBJECTS = \
"CMakeFiles/Athena.dir/beast.cpp.obj"

# External object files for target Athena
Athena_EXTERNAL_OBJECTS =

Athena.exe: CMakeFiles/Athena.dir/beast.cpp.obj
Athena.exe: CMakeFiles/Athena.dir/build.make
Athena.exe: libimgui.a
Athena.exe: C:/msys64/mingw64/lib/libglfw3.dll.a
Athena.exe: CMakeFiles/Athena.dir/linkLibs.rsp
Athena.exe: CMakeFiles/Athena.dir/objects1.rsp
Athena.exe: CMakeFiles/Athena.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\MITRA\Desktop\Projects\Athena-BT\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Athena.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Athena.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Athena.dir/build: Athena.exe
.PHONY : CMakeFiles/Athena.dir/build

CMakeFiles/Athena.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Athena.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Athena.dir/clean

CMakeFiles/Athena.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\MITRA\Desktop\Projects\Athena-BT C:\Users\MITRA\Desktop\Projects\Athena-BT C:\Users\MITRA\Desktop\Projects\Athena-BT\build C:\Users\MITRA\Desktop\Projects\Athena-BT\build C:\Users\MITRA\Desktop\Projects\Athena-BT\build\CMakeFiles\Athena.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Athena.dir/depend
