# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_SOURCE_DIR = /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build

# Include any dependencies generated for this target.
include CMakeFiles/projector_demo_sequence.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/projector_demo_sequence.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/projector_demo_sequence.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/projector_demo_sequence.dir/flags.make

CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.o: CMakeFiles/projector_demo_sequence.dir/flags.make
CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.o: ../examples/projector_demo_sequence.cpp
CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.o: CMakeFiles/projector_demo_sequence.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.o -MF CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.o.d -o CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.o -c /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/examples/projector_demo_sequence.cpp

CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/examples/projector_demo_sequence.cpp > CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.i

CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/examples/projector_demo_sequence.cpp -o CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.s

# Object files for target projector_demo_sequence
projector_demo_sequence_OBJECTS = \
"CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.o"

# External object files for target projector_demo_sequence
projector_demo_sequence_EXTERNAL_OBJECTS =

bin/projector_demo_sequence: CMakeFiles/projector_demo_sequence.dir/examples/projector_demo_sequence.cpp.o
bin/projector_demo_sequence: CMakeFiles/projector_demo_sequence.dir/build.make
bin/projector_demo_sequence: lib/libDLP_SDK.a
bin/projector_demo_sequence: lib/libglfw3.a
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libopencv_highgui.so.4.5.4
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libopencv_calib3d.so.4.5.4
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libX11.so
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libXrandr.so
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libXi.so
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libXxf86vm.so
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/librt.so
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libm.so
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libGL.so
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libusb-1.0.so
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libudev.so
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libopencv_videoio.so.4.5.4
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libopencv_imgcodecs.so.4.5.4
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libopencv_features2d.so.4.5.4
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libopencv_flann.so.4.5.4
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libopencv_imgproc.so.4.5.4
bin/projector_demo_sequence: /usr/lib/aarch64-linux-gnu/libopencv_core.so.4.5.4
bin/projector_demo_sequence: CMakeFiles/projector_demo_sequence.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/projector_demo_sequence"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/projector_demo_sequence.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/projector_demo_sequence.dir/build: bin/projector_demo_sequence
.PHONY : CMakeFiles/projector_demo_sequence.dir/build

CMakeFiles/projector_demo_sequence.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/projector_demo_sequence.dir/cmake_clean.cmake
.PHONY : CMakeFiles/projector_demo_sequence.dir/clean

CMakeFiles/projector_demo_sequence.dir/depend:
	cd /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/CMakeFiles/projector_demo_sequence.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/projector_demo_sequence.dir/depend

