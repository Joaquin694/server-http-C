# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/joaquin/Desktop/JOAQUIN-PROYECTOS/Proyectos-C/Server-HTTP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joaquin/Desktop/JOAQUIN-PROYECTOS/Proyectos-C/Server-HTTP/build

# Include any dependencies generated for this target.
include CMakeFiles/Server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Server.dir/flags.make

CMakeFiles/Server.dir/src/main.c.o: CMakeFiles/Server.dir/flags.make
CMakeFiles/Server.dir/src/main.c.o: ../src/main.c
CMakeFiles/Server.dir/src/main.c.o: CMakeFiles/Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joaquin/Desktop/JOAQUIN-PROYECTOS/Proyectos-C/Server-HTTP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Server.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Server.dir/src/main.c.o -MF CMakeFiles/Server.dir/src/main.c.o.d -o CMakeFiles/Server.dir/src/main.c.o -c /home/joaquin/Desktop/JOAQUIN-PROYECTOS/Proyectos-C/Server-HTTP/src/main.c

CMakeFiles/Server.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Server.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joaquin/Desktop/JOAQUIN-PROYECTOS/Proyectos-C/Server-HTTP/src/main.c > CMakeFiles/Server.dir/src/main.c.i

CMakeFiles/Server.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Server.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joaquin/Desktop/JOAQUIN-PROYECTOS/Proyectos-C/Server-HTTP/src/main.c -o CMakeFiles/Server.dir/src/main.c.s

# Object files for target Server
Server_OBJECTS = \
"CMakeFiles/Server.dir/src/main.c.o"

# External object files for target Server
Server_EXTERNAL_OBJECTS =

Server: CMakeFiles/Server.dir/src/main.c.o
Server: CMakeFiles/Server.dir/build.make
Server: CMakeFiles/Server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joaquin/Desktop/JOAQUIN-PROYECTOS/Proyectos-C/Server-HTTP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Server.dir/build: Server
.PHONY : CMakeFiles/Server.dir/build

CMakeFiles/Server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Server.dir/clean

CMakeFiles/Server.dir/depend:
	cd /home/joaquin/Desktop/JOAQUIN-PROYECTOS/Proyectos-C/Server-HTTP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joaquin/Desktop/JOAQUIN-PROYECTOS/Proyectos-C/Server-HTTP /home/joaquin/Desktop/JOAQUIN-PROYECTOS/Proyectos-C/Server-HTTP /home/joaquin/Desktop/JOAQUIN-PROYECTOS/Proyectos-C/Server-HTTP/build /home/joaquin/Desktop/JOAQUIN-PROYECTOS/Proyectos-C/Server-HTTP/build /home/joaquin/Desktop/JOAQUIN-PROYECTOS/Proyectos-C/Server-HTTP/build/CMakeFiles/Server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Server.dir/depend

