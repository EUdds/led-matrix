# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/eudlis/led-matrix/app/libs/piolib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eudlis/led-matrix/app/libs/piolib

# Include any dependencies generated for this target.
include examples/CMakeFiles/piows2812.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/piows2812.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/piows2812.dir/flags.make

examples/CMakeFiles/piows2812.dir/ws2812.c.o: examples/CMakeFiles/piows2812.dir/flags.make
examples/CMakeFiles/piows2812.dir/ws2812.c.o: examples/ws2812.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eudlis/led-matrix/app/libs/piolib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/CMakeFiles/piows2812.dir/ws2812.c.o"
	cd /home/eudlis/led-matrix/app/libs/piolib/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/piows2812.dir/ws2812.c.o   -c /home/eudlis/led-matrix/app/libs/piolib/examples/ws2812.c

examples/CMakeFiles/piows2812.dir/ws2812.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/piows2812.dir/ws2812.c.i"
	cd /home/eudlis/led-matrix/app/libs/piolib/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eudlis/led-matrix/app/libs/piolib/examples/ws2812.c > CMakeFiles/piows2812.dir/ws2812.c.i

examples/CMakeFiles/piows2812.dir/ws2812.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/piows2812.dir/ws2812.c.s"
	cd /home/eudlis/led-matrix/app/libs/piolib/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eudlis/led-matrix/app/libs/piolib/examples/ws2812.c -o CMakeFiles/piows2812.dir/ws2812.c.s

# Object files for target piows2812
piows2812_OBJECTS = \
"CMakeFiles/piows2812.dir/ws2812.c.o"

# External object files for target piows2812
piows2812_EXTERNAL_OBJECTS = \
"/home/eudlis/led-matrix/app/libs/piolib/CMakeFiles/pio.dir/piolib.c.o" \
"/home/eudlis/led-matrix/app/libs/piolib/CMakeFiles/pio.dir/pio_rp1.c.o"

examples/piows2812: examples/CMakeFiles/piows2812.dir/ws2812.c.o
examples/piows2812: CMakeFiles/pio.dir/piolib.c.o
examples/piows2812: CMakeFiles/pio.dir/pio_rp1.c.o
examples/piows2812: examples/CMakeFiles/piows2812.dir/build.make
examples/piows2812: examples/CMakeFiles/piows2812.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eudlis/led-matrix/app/libs/piolib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable piows2812"
	cd /home/eudlis/led-matrix/app/libs/piolib/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/piows2812.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/piows2812.dir/build: examples/piows2812

.PHONY : examples/CMakeFiles/piows2812.dir/build

examples/CMakeFiles/piows2812.dir/clean:
	cd /home/eudlis/led-matrix/app/libs/piolib/examples && $(CMAKE_COMMAND) -P CMakeFiles/piows2812.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/piows2812.dir/clean

examples/CMakeFiles/piows2812.dir/depend:
	cd /home/eudlis/led-matrix/app/libs/piolib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eudlis/led-matrix/app/libs/piolib /home/eudlis/led-matrix/app/libs/piolib/examples /home/eudlis/led-matrix/app/libs/piolib /home/eudlis/led-matrix/app/libs/piolib/examples /home/eudlis/led-matrix/app/libs/piolib/examples/CMakeFiles/piows2812.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/piows2812.dir/depend

