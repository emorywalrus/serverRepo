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
CMAKE_SOURCE_DIR = /home/ubuntu/serverRepo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/ubuntu/serverRepo/out/build/GCC 11.4.0 x86_64-linux-gnu"

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

server_autogen/timestamp: /usr/lib/qt6/libexec/moc
server_autogen/timestamp: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir="/home/ubuntu/serverRepo/out/build/GCC 11.4.0 x86_64-linux-gnu/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target server"
	/usr/bin/cmake -E cmake_autogen "/home/ubuntu/serverRepo/out/build/GCC 11.4.0 x86_64-linux-gnu/CMakeFiles/server_autogen.dir/AutogenInfo.json" Debug
	/usr/bin/cmake -E touch "/home/ubuntu/serverRepo/out/build/GCC 11.4.0 x86_64-linux-gnu/server_autogen/timestamp"

CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.o: server_autogen/mocs_compilation.cpp
CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/ubuntu/serverRepo/out/build/GCC 11.4.0 x86_64-linux-gnu/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.o -MF CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.o -c "/home/ubuntu/serverRepo/out/build/GCC 11.4.0 x86_64-linux-gnu/server_autogen/mocs_compilation.cpp"

CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ubuntu/serverRepo/out/build/GCC 11.4.0 x86_64-linux-gnu/server_autogen/mocs_compilation.cpp" > CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.i

CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ubuntu/serverRepo/out/build/GCC 11.4.0 x86_64-linux-gnu/server_autogen/mocs_compilation.cpp" -o CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.s

CMakeFiles/server.dir/main.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/main.cpp.o: /home/ubuntu/serverRepo/main.cpp
CMakeFiles/server.dir/main.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/ubuntu/serverRepo/out/build/GCC 11.4.0 x86_64-linux-gnu/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/server.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/main.cpp.o -MF CMakeFiles/server.dir/main.cpp.o.d -o CMakeFiles/server.dir/main.cpp.o -c /home/ubuntu/serverRepo/main.cpp

CMakeFiles/server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/serverRepo/main.cpp > CMakeFiles/server.dir/main.cpp.i

CMakeFiles/server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/serverRepo/main.cpp -o CMakeFiles/server.dir/main.cpp.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/server.dir/main.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

server: CMakeFiles/server.dir/server_autogen/mocs_compilation.cpp.o
server: CMakeFiles/server.dir/main.cpp.o
server: CMakeFiles/server.dir/build.make
server: /usr/lib/x86_64-linux-gnu/libQt6Network.so.6.4.2
server: /usr/lib/x86_64-linux-gnu/libQt6Core.so.6.4.2
server: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/home/ubuntu/serverRepo/out/build/GCC 11.4.0 x86_64-linux-gnu/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: server
.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend: server_autogen/timestamp
	cd "/home/ubuntu/serverRepo/out/build/GCC 11.4.0 x86_64-linux-gnu" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/serverRepo /home/ubuntu/serverRepo "/home/ubuntu/serverRepo/out/build/GCC 11.4.0 x86_64-linux-gnu" "/home/ubuntu/serverRepo/out/build/GCC 11.4.0 x86_64-linux-gnu" "/home/ubuntu/serverRepo/out/build/GCC 11.4.0 x86_64-linux-gnu/CMakeFiles/server.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/server.dir/depend

