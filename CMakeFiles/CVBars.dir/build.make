# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dylan/Documents/ElsewhereStuff/ComputerVisionBars

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dylan/Documents/ElsewhereStuff/ComputerVisionBars

# Include any dependencies generated for this target.
include CMakeFiles/CVBars.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CVBars.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CVBars.dir/flags.make

CMakeFiles/CVBars.dir/CVBars.cpp.o: CMakeFiles/CVBars.dir/flags.make
CMakeFiles/CVBars.dir/CVBars.cpp.o: CVBars.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dylan/Documents/ElsewhereStuff/ComputerVisionBars/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CVBars.dir/CVBars.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CVBars.dir/CVBars.cpp.o -c /Users/dylan/Documents/ElsewhereStuff/ComputerVisionBars/CVBars.cpp

CMakeFiles/CVBars.dir/CVBars.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CVBars.dir/CVBars.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dylan/Documents/ElsewhereStuff/ComputerVisionBars/CVBars.cpp > CMakeFiles/CVBars.dir/CVBars.cpp.i

CMakeFiles/CVBars.dir/CVBars.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CVBars.dir/CVBars.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dylan/Documents/ElsewhereStuff/ComputerVisionBars/CVBars.cpp -o CMakeFiles/CVBars.dir/CVBars.cpp.s

CMakeFiles/CVBars.dir/CVBars.cpp.o.requires:

.PHONY : CMakeFiles/CVBars.dir/CVBars.cpp.o.requires

CMakeFiles/CVBars.dir/CVBars.cpp.o.provides: CMakeFiles/CVBars.dir/CVBars.cpp.o.requires
	$(MAKE) -f CMakeFiles/CVBars.dir/build.make CMakeFiles/CVBars.dir/CVBars.cpp.o.provides.build
.PHONY : CMakeFiles/CVBars.dir/CVBars.cpp.o.provides

CMakeFiles/CVBars.dir/CVBars.cpp.o.provides.build: CMakeFiles/CVBars.dir/CVBars.cpp.o


# Object files for target CVBars
CVBars_OBJECTS = \
"CMakeFiles/CVBars.dir/CVBars.cpp.o"

# External object files for target CVBars
CVBars_EXTERNAL_OBJECTS =

CVBars: CMakeFiles/CVBars.dir/CVBars.cpp.o
CVBars: CMakeFiles/CVBars.dir/build.make
CVBars: /usr/local/lib/libopencv_videostab.a
CVBars: /usr/local/lib/libopencv_videoio.a
CVBars: /usr/local/lib/libopencv_video.a
CVBars: /usr/local/lib/libopencv_superres.a
CVBars: /usr/local/lib/libopencv_stitching.a
CVBars: /usr/local/lib/libopencv_shape.a
CVBars: /usr/local/lib/libopencv_photo.a
CVBars: /usr/local/lib/libopencv_objdetect.a
CVBars: /usr/local/lib/libopencv_ml.a
CVBars: /usr/local/lib/libopencv_imgproc.a
CVBars: /usr/local/lib/libopencv_imgcodecs.a
CVBars: /usr/local/lib/libopencv_highgui.a
CVBars: /usr/local/lib/libopencv_hal.a
CVBars: /usr/local/lib/libopencv_flann.a
CVBars: /usr/local/lib/libopencv_features2d.a
CVBars: /usr/local/lib/libopencv_core.a
CVBars: /usr/local/lib/libopencv_calib3d.a
CVBars: /usr/local/lib/libopencv_features2d.a
CVBars: /usr/local/lib/libopencv_ml.a
CVBars: /usr/local/lib/libopencv_highgui.a
CVBars: /usr/local/lib/libopencv_videoio.a
CVBars: /usr/local/lib/libopencv_imgcodecs.a
CVBars: /usr/local/share/OpenCV/3rdparty/lib/liblibjpeg.a
CVBars: /usr/local/share/OpenCV/3rdparty/lib/liblibwebp.a
CVBars: /usr/local/share/OpenCV/3rdparty/lib/liblibpng.a
CVBars: /usr/local/share/OpenCV/3rdparty/lib/liblibtiff.a
CVBars: /usr/local/share/OpenCV/3rdparty/lib/liblibjasper.a
CVBars: /usr/local/share/OpenCV/3rdparty/lib/libIlmImf.a
CVBars: /usr/local/lib/libopencv_flann.a
CVBars: /usr/local/lib/libopencv_video.a
CVBars: /usr/local/lib/libopencv_imgproc.a
CVBars: /usr/local/lib/libopencv_core.a
CVBars: /usr/local/lib/libopencv_hal.a
CVBars: /usr/local/share/OpenCV/3rdparty/lib/libzlib.a
CVBars: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
CVBars: CMakeFiles/CVBars.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/dylan/Documents/ElsewhereStuff/ComputerVisionBars/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CVBars"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CVBars.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CVBars.dir/build: CVBars

.PHONY : CMakeFiles/CVBars.dir/build

CMakeFiles/CVBars.dir/requires: CMakeFiles/CVBars.dir/CVBars.cpp.o.requires

.PHONY : CMakeFiles/CVBars.dir/requires

CMakeFiles/CVBars.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CVBars.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CVBars.dir/clean

CMakeFiles/CVBars.dir/depend:
	cd /Users/dylan/Documents/ElsewhereStuff/ComputerVisionBars && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dylan/Documents/ElsewhereStuff/ComputerVisionBars /Users/dylan/Documents/ElsewhereStuff/ComputerVisionBars /Users/dylan/Documents/ElsewhereStuff/ComputerVisionBars /Users/dylan/Documents/ElsewhereStuff/ComputerVisionBars /Users/dylan/Documents/ElsewhereStuff/ComputerVisionBars/CMakeFiles/CVBars.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CVBars.dir/depend

