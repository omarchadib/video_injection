# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/omar/video_injection

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/omar/video_injection/build

# Include any dependencies generated for this target.
include 4_Samples/Internship/CMakeFiles/internshipProg.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include 4_Samples/Internship/CMakeFiles/internshipProg.dir/compiler_depend.make

# Include the progress variables for this target.
include 4_Samples/Internship/CMakeFiles/internshipProg.dir/progress.make

# Include the compile flags for this target's objects.
include 4_Samples/Internship/CMakeFiles/internshipProg.dir/flags.make

4_Samples/Internship/CMakeFiles/internshipProg.dir/src/prog1.cpp.o: 4_Samples/Internship/CMakeFiles/internshipProg.dir/flags.make
4_Samples/Internship/CMakeFiles/internshipProg.dir/src/prog1.cpp.o: /home/omar/video_injection/4_Samples/Internship/src/prog1.cpp
4_Samples/Internship/CMakeFiles/internshipProg.dir/src/prog1.cpp.o: 4_Samples/Internship/CMakeFiles/internshipProg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/omar/video_injection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object 4_Samples/Internship/CMakeFiles/internshipProg.dir/src/prog1.cpp.o"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT 4_Samples/Internship/CMakeFiles/internshipProg.dir/src/prog1.cpp.o -MF CMakeFiles/internshipProg.dir/src/prog1.cpp.o.d -o CMakeFiles/internshipProg.dir/src/prog1.cpp.o -c /home/omar/video_injection/4_Samples/Internship/src/prog1.cpp

4_Samples/Internship/CMakeFiles/internshipProg.dir/src/prog1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/internshipProg.dir/src/prog1.cpp.i"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/omar/video_injection/4_Samples/Internship/src/prog1.cpp > CMakeFiles/internshipProg.dir/src/prog1.cpp.i

4_Samples/Internship/CMakeFiles/internshipProg.dir/src/prog1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/internshipProg.dir/src/prog1.cpp.s"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/omar/video_injection/4_Samples/Internship/src/prog1.cpp -o CMakeFiles/internshipProg.dir/src/prog1.cpp.s

4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.o: 4_Samples/Internship/CMakeFiles/internshipProg.dir/flags.make
4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.o: /home/omar/video_injection/3_Implementations/src/DataReceiver.cpp
4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.o: 4_Samples/Internship/CMakeFiles/internshipProg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/omar/video_injection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object 4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.o"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT 4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.o -MF CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.o.d -o CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.o -c /home/omar/video_injection/3_Implementations/src/DataReceiver.cpp

4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.i"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/omar/video_injection/3_Implementations/src/DataReceiver.cpp > CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.i

4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.s"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/omar/video_injection/3_Implementations/src/DataReceiver.cpp -o CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.s

4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.o: 4_Samples/Internship/CMakeFiles/internshipProg.dir/flags.make
4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.o: /home/omar/video_injection/3_Implementations/src/DataTransmetter.cpp
4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.o: 4_Samples/Internship/CMakeFiles/internshipProg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/omar/video_injection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object 4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.o"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT 4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.o -MF CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.o.d -o CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.o -c /home/omar/video_injection/3_Implementations/src/DataTransmetter.cpp

4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.i"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/omar/video_injection/3_Implementations/src/DataTransmetter.cpp > CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.i

4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.s"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/omar/video_injection/3_Implementations/src/DataTransmetter.cpp -o CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.s

4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.o: 4_Samples/Internship/CMakeFiles/internshipProg.dir/flags.make
4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.o: /home/omar/video_injection/3_Implementations/src/TcpClient.cpp
4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.o: 4_Samples/Internship/CMakeFiles/internshipProg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/omar/video_injection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object 4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.o"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT 4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.o -MF CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.o.d -o CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.o -c /home/omar/video_injection/3_Implementations/src/TcpClient.cpp

4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.i"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/omar/video_injection/3_Implementations/src/TcpClient.cpp > CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.i

4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.s"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/omar/video_injection/3_Implementations/src/TcpClient.cpp -o CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.s

4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.o: 4_Samples/Internship/CMakeFiles/internshipProg.dir/flags.make
4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.o: /home/omar/video_injection/3_Implementations/src/TcpServer.cpp
4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.o: 4_Samples/Internship/CMakeFiles/internshipProg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/omar/video_injection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object 4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.o"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT 4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.o -MF CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.o.d -o CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.o -c /home/omar/video_injection/3_Implementations/src/TcpServer.cpp

4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.i"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/omar/video_injection/3_Implementations/src/TcpServer.cpp > CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.i

4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.s"
	cd /home/omar/video_injection/build/4_Samples/Internship && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/omar/video_injection/3_Implementations/src/TcpServer.cpp -o CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.s

# Object files for target internshipProg
internshipProg_OBJECTS = \
"CMakeFiles/internshipProg.dir/src/prog1.cpp.o" \
"CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.o" \
"CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.o" \
"CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.o" \
"CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.o"

# External object files for target internshipProg
internshipProg_EXTERNAL_OBJECTS =

4_Samples/Internship/internshipProg: 4_Samples/Internship/CMakeFiles/internshipProg.dir/src/prog1.cpp.o
4_Samples/Internship/internshipProg: 4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataReceiver.cpp.o
4_Samples/Internship/internshipProg: 4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/DataTransmetter.cpp.o
4_Samples/Internship/internshipProg: 4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpClient.cpp.o
4_Samples/Internship/internshipProg: 4_Samples/Internship/CMakeFiles/internshipProg.dir/__/__/3_Implementations/src/TcpServer.cpp.o
4_Samples/Internship/internshipProg: 4_Samples/Internship/CMakeFiles/internshipProg.dir/build.make
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_alphamat.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_barcode.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_cvv.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_intensity_transform.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_mcc.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_rapid.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_wechat_qrcode.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.6.0
4_Samples/Internship/internshipProg: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.6.0
4_Samples/Internship/internshipProg: 4_Samples/Internship/CMakeFiles/internshipProg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/omar/video_injection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable internshipProg"
	cd /home/omar/video_injection/build/4_Samples/Internship && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/internshipProg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
4_Samples/Internship/CMakeFiles/internshipProg.dir/build: 4_Samples/Internship/internshipProg
.PHONY : 4_Samples/Internship/CMakeFiles/internshipProg.dir/build

4_Samples/Internship/CMakeFiles/internshipProg.dir/clean:
	cd /home/omar/video_injection/build/4_Samples/Internship && $(CMAKE_COMMAND) -P CMakeFiles/internshipProg.dir/cmake_clean.cmake
.PHONY : 4_Samples/Internship/CMakeFiles/internshipProg.dir/clean

4_Samples/Internship/CMakeFiles/internshipProg.dir/depend:
	cd /home/omar/video_injection/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/omar/video_injection /home/omar/video_injection/4_Samples/Internship /home/omar/video_injection/build /home/omar/video_injection/build/4_Samples/Internship /home/omar/video_injection/build/4_Samples/Internship/CMakeFiles/internshipProg.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : 4_Samples/Internship/CMakeFiles/internshipProg.dir/depend

