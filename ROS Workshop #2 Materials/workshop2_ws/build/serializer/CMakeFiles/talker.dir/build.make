# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/borabut/workshop2_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/borabut/workshop2_ws/build

# Include any dependencies generated for this target.
include serializer/CMakeFiles/talker.dir/depend.make

# Include the progress variables for this target.
include serializer/CMakeFiles/talker.dir/progress.make

# Include the compile flags for this target's objects.
include serializer/CMakeFiles/talker.dir/flags.make

serializer/CMakeFiles/talker.dir/src/talker.cpp.o: serializer/CMakeFiles/talker.dir/flags.make
serializer/CMakeFiles/talker.dir/src/talker.cpp.o: /home/borabut/workshop2_ws/src/serializer/src/talker.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/borabut/workshop2_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object serializer/CMakeFiles/talker.dir/src/talker.cpp.o"
	cd /home/borabut/workshop2_ws/build/serializer && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/talker.dir/src/talker.cpp.o -c /home/borabut/workshop2_ws/src/serializer/src/talker.cpp

serializer/CMakeFiles/talker.dir/src/talker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/talker.dir/src/talker.cpp.i"
	cd /home/borabut/workshop2_ws/build/serializer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/borabut/workshop2_ws/src/serializer/src/talker.cpp > CMakeFiles/talker.dir/src/talker.cpp.i

serializer/CMakeFiles/talker.dir/src/talker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/talker.dir/src/talker.cpp.s"
	cd /home/borabut/workshop2_ws/build/serializer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/borabut/workshop2_ws/src/serializer/src/talker.cpp -o CMakeFiles/talker.dir/src/talker.cpp.s

serializer/CMakeFiles/talker.dir/src/talker.cpp.o.requires:
.PHONY : serializer/CMakeFiles/talker.dir/src/talker.cpp.o.requires

serializer/CMakeFiles/talker.dir/src/talker.cpp.o.provides: serializer/CMakeFiles/talker.dir/src/talker.cpp.o.requires
	$(MAKE) -f serializer/CMakeFiles/talker.dir/build.make serializer/CMakeFiles/talker.dir/src/talker.cpp.o.provides.build
.PHONY : serializer/CMakeFiles/talker.dir/src/talker.cpp.o.provides

serializer/CMakeFiles/talker.dir/src/talker.cpp.o.provides.build: serializer/CMakeFiles/talker.dir/src/talker.cpp.o

# Object files for target talker
talker_OBJECTS = \
"CMakeFiles/talker.dir/src/talker.cpp.o"

# External object files for target talker
talker_EXTERNAL_OBJECTS =

/home/borabut/workshop2_ws/devel/lib/serializer/talker: serializer/CMakeFiles/talker.dir/src/talker.cpp.o
/home/borabut/workshop2_ws/devel/lib/serializer/talker: serializer/CMakeFiles/talker.dir/build.make
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /opt/ros/indigo/lib/libroscpp.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /opt/ros/indigo/lib/librosconsole.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /usr/lib/liblog4cxx.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /home/borabut/workshop2_ws/devel/lib/libserial.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /opt/ros/indigo/lib/librostime.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /opt/ros/indigo/lib/libcpp_common.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/borabut/workshop2_ws/devel/lib/serializer/talker: serializer/CMakeFiles/talker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/borabut/workshop2_ws/devel/lib/serializer/talker"
	cd /home/borabut/workshop2_ws/build/serializer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/talker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
serializer/CMakeFiles/talker.dir/build: /home/borabut/workshop2_ws/devel/lib/serializer/talker
.PHONY : serializer/CMakeFiles/talker.dir/build

serializer/CMakeFiles/talker.dir/requires: serializer/CMakeFiles/talker.dir/src/talker.cpp.o.requires
.PHONY : serializer/CMakeFiles/talker.dir/requires

serializer/CMakeFiles/talker.dir/clean:
	cd /home/borabut/workshop2_ws/build/serializer && $(CMAKE_COMMAND) -P CMakeFiles/talker.dir/cmake_clean.cmake
.PHONY : serializer/CMakeFiles/talker.dir/clean

serializer/CMakeFiles/talker.dir/depend:
	cd /home/borabut/workshop2_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/borabut/workshop2_ws/src /home/borabut/workshop2_ws/src/serializer /home/borabut/workshop2_ws/build /home/borabut/workshop2_ws/build/serializer /home/borabut/workshop2_ws/build/serializer/CMakeFiles/talker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : serializer/CMakeFiles/talker.dir/depend

