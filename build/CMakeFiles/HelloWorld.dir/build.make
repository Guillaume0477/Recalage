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
CMAKE_SOURCE_DIR = /home/bralet/CPE/Recalage/Recalage

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bralet/CPE/Recalage/Recalage/build

# Include any dependencies generated for this target.
include CMakeFiles/HelloWorld.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HelloWorld.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HelloWorld.dir/flags.make

CMakeFiles/HelloWorld.dir/HelloWorld.cxx.o: CMakeFiles/HelloWorld.dir/flags.make
CMakeFiles/HelloWorld.dir/HelloWorld.cxx.o: ../HelloWorld.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bralet/CPE/Recalage/Recalage/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HelloWorld.dir/HelloWorld.cxx.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HelloWorld.dir/HelloWorld.cxx.o -c /home/bralet/CPE/Recalage/Recalage/HelloWorld.cxx

CMakeFiles/HelloWorld.dir/HelloWorld.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HelloWorld.dir/HelloWorld.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bralet/CPE/Recalage/Recalage/HelloWorld.cxx > CMakeFiles/HelloWorld.dir/HelloWorld.cxx.i

CMakeFiles/HelloWorld.dir/HelloWorld.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HelloWorld.dir/HelloWorld.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bralet/CPE/Recalage/Recalage/HelloWorld.cxx -o CMakeFiles/HelloWorld.dir/HelloWorld.cxx.s

# Object files for target HelloWorld
HelloWorld_OBJECTS = \
"CMakeFiles/HelloWorld.dir/HelloWorld.cxx.o"

# External object files for target HelloWorld
HelloWorld_EXTERNAL_OBJECTS =

HelloWorld: CMakeFiles/HelloWorld.dir/HelloWorld.cxx.o
HelloWorld: CMakeFiles/HelloWorld.dir/build.make
HelloWorld: /usr/lib/x86_64-linux-gnu/libdouble-conversion.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libz.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libjpeg.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libpng.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libtiff.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libi2d.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmjpeg.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libijg8.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libijg12.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libijg16.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmjpls.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libcharls.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libcmr.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmwlm.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmpstat.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmrt.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmseg.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmtract.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmpmap.so.14.3.6.4
HelloWorld: /usr/lib/libITKDeprecated-4.13.so.1
HelloWorld: /usr/lib/libITKIOLSM-4.13.so.1
HelloWorld: /usr/lib/x86_64-linux-gnu/libexpat.so
HelloWorld: /usr/lib/libITKIOMesh-4.13.so.1
HelloWorld: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so
HelloWorld: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libpthread.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libsz.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libdl.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libm.so
HelloWorld: /usr/lib/libITKIOBruker-4.13.so.1
HelloWorld: /usr/lib/libITKIOCSV-4.13.so.1
HelloWorld: /usr/lib/libITKIOHDF5-4.13.so.1
HelloWorld: /usr/lib/x86_64-linux-gnu/libnetcdf.so
HelloWorld: /usr/lib/libITKIOMINC-4.13.so.1
HelloWorld: /usr/lib/libITKIOMRC-4.13.so.1
HelloWorld: /usr/lib/libITKOptimizersv4-4.13.so.1
HelloWorld: /usr/lib/libITKReview-4.13.so.1
HelloWorld: /usr/lib/libITKVideoIO-4.13.so.1
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmtls.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmsr.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmimage.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libjpeg.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libpng.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libtiff.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libxml2.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmdsig.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libssl.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libcrypto.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmqrdb.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmnet.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libwrap.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmimgle.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmfg.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmiod.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libdcmdata.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/liboflog.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libofstd.so.14.3.6.4
HelloWorld: /usr/lib/x86_64-linux-gnu/libicuuc.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libicudata.so
HelloWorld: /usr/lib/libITKDICOMParser-4.13.so.1
HelloWorld: /usr/lib/libITKgiftiio-4.13.so.1
HelloWorld: /usr/lib/x86_64-linux-gnu/libexpat.so
HelloWorld: /usr/lib/libitklbfgs-4.13.so.1
HelloWorld: /usr/lib/libITKIOBMP-4.13.so.1
HelloWorld: /usr/lib/libITKIOGDCM-4.13.so.1
HelloWorld: /usr/lib/x86_64-linux-gnu/libgdcmMSFF.so.3.0.5
HelloWorld: /usr/lib/x86_64-linux-gnu/libgdcmDICT.so.3.0.5
HelloWorld: /usr/lib/x86_64-linux-gnu/libgdcmIOD.so.3.0.5
HelloWorld: /usr/lib/x86_64-linux-gnu/libgdcmDSED.so.3.0.5
HelloWorld: /usr/lib/x86_64-linux-gnu/libgdcmCommon.so.3.0.5
HelloWorld: /usr/lib/libITKIOGIPL-4.13.so.1
HelloWorld: /usr/lib/libITKIOJPEG-4.13.so.1
HelloWorld: /usr/lib/libITKIOMeta-4.13.so.1
HelloWorld: /usr/lib/libITKIONIFTI-4.13.so.1
HelloWorld: /usr/lib/libITKIONRRD-4.13.so.1
HelloWorld: /usr/lib/libITKNrrdIO-4.13.so.1
HelloWorld: /usr/lib/libITKIOPNG-4.13.so.1
HelloWorld: /usr/lib/libITKIOTIFF-4.13.so.1
HelloWorld: /usr/lib/libITKIOVTK-4.13.so.1
HelloWorld: /usr/lib/libITKLabelMap-4.13.so.1
HelloWorld: /usr/lib/libITKQuadEdgeMesh-4.13.so.1
HelloWorld: /usr/lib/libITKPolynomials-4.13.so.1
HelloWorld: /usr/lib/libITKBiasCorrection-4.13.so.1
HelloWorld: /usr/lib/libITKBioCell-4.13.so.1
HelloWorld: /usr/lib/libITKFFT-4.13.so.1
HelloWorld: /usr/lib/x86_64-linux-gnu/libfftw3.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libfftw3_threads.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libfftw3f.so
HelloWorld: /usr/lib/x86_64-linux-gnu/libfftw3f_threads.so
HelloWorld: /usr/lib/libITKIOBioRad-4.13.so.1
HelloWorld: /usr/lib/libITKIOStimulate-4.13.so.1
HelloWorld: /usr/lib/libITKIOSpatialObjects-4.13.so.1
HelloWorld: /usr/lib/libITKIOXML-4.13.so.1
HelloWorld: /usr/lib/libITKFEM-4.13.so.1
HelloWorld: /usr/lib/libITKMetaIO-4.13.so.1
HelloWorld: /usr/lib/x86_64-linux-gnu/libz.so
HelloWorld: /usr/lib/libITKOptimizers-4.13.so.1
HelloWorld: /usr/lib/libITKIOGE-4.13.so.1
HelloWorld: /usr/lib/libITKIOSiemens-4.13.so.1
HelloWorld: /usr/lib/libITKIOIPL-4.13.so.1
HelloWorld: /usr/lib/libITKIOTransformHDF5-4.13.so.1
HelloWorld: /usr/lib/libITKIOTransformInsightLegacy-4.13.so.1
HelloWorld: /usr/lib/libITKIOTransformMatlab-4.13.so.1
HelloWorld: /usr/lib/libITKIOTransformBase-4.13.so.1
HelloWorld: /usr/lib/libITKTransformFactory-4.13.so.1
HelloWorld: /usr/lib/libITKKLMRegionGrowing-4.13.so.1
HelloWorld: /usr/lib/libITKVTK-4.13.so.1
HelloWorld: /usr/lib/libITKWatersheds-4.13.so.1
HelloWorld: /usr/lib/libITKStatistics-4.13.so.1
HelloWorld: /usr/lib/libitkNetlibSlatec-4.13.so.1
HelloWorld: /usr/lib/libITKSpatialObjects-4.13.so.1
HelloWorld: /usr/lib/libITKMesh-4.13.so.1
HelloWorld: /usr/lib/libITKTransform-4.13.so.1
HelloWorld: /usr/lib/libITKPath-4.13.so.1
HelloWorld: /usr/lib/libitkopenjpeg-4.13.so.1
HelloWorld: /usr/lib/libITKIOImageBase-4.13.so.1
HelloWorld: /usr/lib/libITKVideoCore-4.13.so.1
HelloWorld: /usr/lib/libITKCommon-4.13.so.1
HelloWorld: /usr/lib/libitksys-4.13.so.1
HelloWorld: /usr/lib/libITKVNLInstantiation-4.13.so.1
HelloWorld: /usr/lib/libitkvnl_algo-4.13.so.1
HelloWorld: /usr/lib/libitkvnl-4.13.so.1
HelloWorld: /usr/lib/libitkv3p_netlib-4.13.so.1
HelloWorld: /usr/lib/libitknetlib-4.13.so.1
HelloWorld: /usr/lib/libitkvcl-4.13.so.1
HelloWorld: CMakeFiles/HelloWorld.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bralet/CPE/Recalage/Recalage/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable HelloWorld"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HelloWorld.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HelloWorld.dir/build: HelloWorld

.PHONY : CMakeFiles/HelloWorld.dir/build

CMakeFiles/HelloWorld.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HelloWorld.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HelloWorld.dir/clean

CMakeFiles/HelloWorld.dir/depend:
	cd /home/bralet/CPE/Recalage/Recalage/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bralet/CPE/Recalage/Recalage /home/bralet/CPE/Recalage/Recalage /home/bralet/CPE/Recalage/Recalage/build /home/bralet/CPE/Recalage/Recalage/build /home/bralet/CPE/Recalage/Recalage/build/CMakeFiles/HelloWorld.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HelloWorld.dir/depend

