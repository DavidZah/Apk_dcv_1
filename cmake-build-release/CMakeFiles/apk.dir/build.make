# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\David\CLionProjects\apk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\David\CLionProjects\apk\cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/apk.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/apk.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/apk.dir/flags.make

CMakeFiles/apk.dir/main.c.obj: CMakeFiles/apk.dir/flags.make
CMakeFiles/apk.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\David\CLionProjects\apk\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/apk.dir/main.c.obj"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\apk.dir\main.c.obj   -c C:\Users\David\CLionProjects\apk\main.c

CMakeFiles/apk.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/apk.dir/main.c.i"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\David\CLionProjects\apk\main.c > CMakeFiles\apk.dir\main.c.i

CMakeFiles/apk.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/apk.dir/main.c.s"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\David\CLionProjects\apk\main.c -o CMakeFiles\apk.dir\main.c.s

# Object files for target apk
apk_OBJECTS = \
"CMakeFiles/apk.dir/main.c.obj"

# External object files for target apk
apk_EXTERNAL_OBJECTS =

apk.exe: CMakeFiles/apk.dir/main.c.obj
apk.exe: CMakeFiles/apk.dir/build.make
apk.exe: CMakeFiles/apk.dir/linklibs.rsp
apk.exe: CMakeFiles/apk.dir/objects1.rsp
apk.exe: CMakeFiles/apk.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\David\CLionProjects\apk\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable apk.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\apk.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/apk.dir/build: apk.exe

.PHONY : CMakeFiles/apk.dir/build

CMakeFiles/apk.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\apk.dir\cmake_clean.cmake
.PHONY : CMakeFiles/apk.dir/clean

CMakeFiles/apk.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\David\CLionProjects\apk C:\Users\David\CLionProjects\apk C:\Users\David\CLionProjects\apk\cmake-build-release C:\Users\David\CLionProjects\apk\cmake-build-release C:\Users\David\CLionProjects\apk\cmake-build-release\CMakeFiles\apk.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/apk.dir/depend

