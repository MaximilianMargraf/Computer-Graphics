# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_SOURCE_DIR = /home/IN/vade9658/Computer-Graphics

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/IN/vade9658/Computer-Graphics/build

# Include any dependencies generated for this target.
include CMakeFiles/solar_system.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/solar_system.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/solar_system.dir/flags.make

CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o: CMakeFiles/solar_system.dir/flags.make
CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o: ../application/source/application_solar.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/IN/vade9658/Computer-Graphics/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o -c /home/IN/vade9658/Computer-Graphics/application/source/application_solar.cpp

CMakeFiles/solar_system.dir/application/source/application_solar.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/solar_system.dir/application/source/application_solar.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/IN/vade9658/Computer-Graphics/application/source/application_solar.cpp > CMakeFiles/solar_system.dir/application/source/application_solar.cpp.i

CMakeFiles/solar_system.dir/application/source/application_solar.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/solar_system.dir/application/source/application_solar.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/IN/vade9658/Computer-Graphics/application/source/application_solar.cpp -o CMakeFiles/solar_system.dir/application/source/application_solar.cpp.s

CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o.requires:

.PHONY : CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o.requires

CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o.provides: CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o.requires
	$(MAKE) -f CMakeFiles/solar_system.dir/build.make CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o.provides.build
.PHONY : CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o.provides

CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o.provides.build: CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o


# Object files for target solar_system
solar_system_OBJECTS = \
"CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o"

# External object files for target solar_system
solar_system_EXTERNAL_OBJECTS =

Debug/solar_system: CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o
Debug/solar_system: CMakeFiles/solar_system.dir/build.make
Debug/solar_system: Debug/libframework.a
Debug/solar_system: external/glbinding-2.1.1/libglbindingd.a
Debug/solar_system: /usr/lib/libGLU.so
Debug/solar_system: Debug/libglfw3.a
Debug/solar_system: /usr/lib/libX11.so
Debug/solar_system: /usr/lib/libXrandr.so
Debug/solar_system: /usr/lib/libXinerama.so
Debug/solar_system: /usr/lib/libXi.so
Debug/solar_system: /usr/lib/libXxf86vm.so
Debug/solar_system: /usr/lib/librt.so
Debug/solar_system: /usr/lib/libm.so
Debug/solar_system: /usr/lib/libXcursor.so
Debug/solar_system: /usr/lib/libGL.so
Debug/solar_system: CMakeFiles/solar_system.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/IN/vade9658/Computer-Graphics/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Debug/solar_system"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/solar_system.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/solar_system.dir/build: Debug/solar_system

.PHONY : CMakeFiles/solar_system.dir/build

CMakeFiles/solar_system.dir/requires: CMakeFiles/solar_system.dir/application/source/application_solar.cpp.o.requires

.PHONY : CMakeFiles/solar_system.dir/requires

CMakeFiles/solar_system.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/solar_system.dir/cmake_clean.cmake
.PHONY : CMakeFiles/solar_system.dir/clean

CMakeFiles/solar_system.dir/depend:
	cd /home/IN/vade9658/Computer-Graphics/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/IN/vade9658/Computer-Graphics /home/IN/vade9658/Computer-Graphics /home/IN/vade9658/Computer-Graphics/build /home/IN/vade9658/Computer-Graphics/build /home/IN/vade9658/Computer-Graphics/build/CMakeFiles/solar_system.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/solar_system.dir/depend

