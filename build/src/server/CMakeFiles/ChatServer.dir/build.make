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
CMAKE_COMMAND = /usr/local/cmake/bin/cmake

# The command to remove a file.
RM = /usr/local/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chakming/linux/project/chatServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chakming/linux/project/chatServer/build

# Include any dependencies generated for this target.
include src/server/CMakeFiles/ChatServer.dir/depend.make

# Include the progress variables for this target.
include src/server/CMakeFiles/ChatServer.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/CMakeFiles/ChatServer.dir/flags.make

src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.o: ../src/server/chatserivce.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakming/linux/project/chatServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.o"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/chatserivce.cc.o -c /home/chakming/linux/project/chatServer/src/server/chatserivce.cc

src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/chatserivce.cc.i"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chakming/linux/project/chatServer/src/server/chatserivce.cc > CMakeFiles/ChatServer.dir/chatserivce.cc.i

src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/chatserivce.cc.s"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chakming/linux/project/chatServer/src/server/chatserivce.cc -o CMakeFiles/ChatServer.dir/chatserivce.cc.s

src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.o.requires

src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.o.provides: src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.o.provides

src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.o.provides.build: src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.o


src/server/CMakeFiles/ChatServer.dir/chatserver.cc.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/chatserver.cc.o: ../src/server/chatserver.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakming/linux/project/chatServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/server/CMakeFiles/ChatServer.dir/chatserver.cc.o"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/chatserver.cc.o -c /home/chakming/linux/project/chatServer/src/server/chatserver.cc

src/server/CMakeFiles/ChatServer.dir/chatserver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/chatserver.cc.i"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chakming/linux/project/chatServer/src/server/chatserver.cc > CMakeFiles/ChatServer.dir/chatserver.cc.i

src/server/CMakeFiles/ChatServer.dir/chatserver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/chatserver.cc.s"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chakming/linux/project/chatServer/src/server/chatserver.cc -o CMakeFiles/ChatServer.dir/chatserver.cc.s

src/server/CMakeFiles/ChatServer.dir/chatserver.cc.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/chatserver.cc.o.requires

src/server/CMakeFiles/ChatServer.dir/chatserver.cc.o.provides: src/server/CMakeFiles/ChatServer.dir/chatserver.cc.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/chatserver.cc.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/chatserver.cc.o.provides

src/server/CMakeFiles/ChatServer.dir/chatserver.cc.o.provides.build: src/server/CMakeFiles/ChatServer.dir/chatserver.cc.o


src/server/CMakeFiles/ChatServer.dir/main.cc.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/main.cc.o: ../src/server/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakming/linux/project/chatServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/server/CMakeFiles/ChatServer.dir/main.cc.o"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/main.cc.o -c /home/chakming/linux/project/chatServer/src/server/main.cc

src/server/CMakeFiles/ChatServer.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/main.cc.i"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chakming/linux/project/chatServer/src/server/main.cc > CMakeFiles/ChatServer.dir/main.cc.i

src/server/CMakeFiles/ChatServer.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/main.cc.s"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chakming/linux/project/chatServer/src/server/main.cc -o CMakeFiles/ChatServer.dir/main.cc.s

src/server/CMakeFiles/ChatServer.dir/main.cc.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/main.cc.o.requires

src/server/CMakeFiles/ChatServer.dir/main.cc.o.provides: src/server/CMakeFiles/ChatServer.dir/main.cc.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/main.cc.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/main.cc.o.provides

src/server/CMakeFiles/ChatServer.dir/main.cc.o.provides.build: src/server/CMakeFiles/ChatServer.dir/main.cc.o


src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.o: ../src/server/db/mysqldb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakming/linux/project/chatServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.o"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/db/mysqldb.cc.o -c /home/chakming/linux/project/chatServer/src/server/db/mysqldb.cc

src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/db/mysqldb.cc.i"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chakming/linux/project/chatServer/src/server/db/mysqldb.cc > CMakeFiles/ChatServer.dir/db/mysqldb.cc.i

src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/db/mysqldb.cc.s"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chakming/linux/project/chatServer/src/server/db/mysqldb.cc -o CMakeFiles/ChatServer.dir/db/mysqldb.cc.s

src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.o.requires

src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.o.provides: src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.o.provides

src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.o.provides.build: src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.o


src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.o: ../src/server/model/friendmodel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakming/linux/project/chatServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.o"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/model/friendmodel.cc.o -c /home/chakming/linux/project/chatServer/src/server/model/friendmodel.cc

src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/model/friendmodel.cc.i"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chakming/linux/project/chatServer/src/server/model/friendmodel.cc > CMakeFiles/ChatServer.dir/model/friendmodel.cc.i

src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/model/friendmodel.cc.s"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chakming/linux/project/chatServer/src/server/model/friendmodel.cc -o CMakeFiles/ChatServer.dir/model/friendmodel.cc.s

src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.o.requires

src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.o.provides: src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.o.provides

src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.o.provides.build: src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.o


src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.o: ../src/server/model/groupmodel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakming/linux/project/chatServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.o"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/model/groupmodel.cc.o -c /home/chakming/linux/project/chatServer/src/server/model/groupmodel.cc

src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/model/groupmodel.cc.i"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chakming/linux/project/chatServer/src/server/model/groupmodel.cc > CMakeFiles/ChatServer.dir/model/groupmodel.cc.i

src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/model/groupmodel.cc.s"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chakming/linux/project/chatServer/src/server/model/groupmodel.cc -o CMakeFiles/ChatServer.dir/model/groupmodel.cc.s

src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.o.requires

src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.o.provides: src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.o.provides

src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.o.provides.build: src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.o


src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o: ../src/server/model/offlinemessagemodel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakming/linux/project/chatServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o -c /home/chakming/linux/project/chatServer/src/server/model/offlinemessagemodel.cc

src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.i"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chakming/linux/project/chatServer/src/server/model/offlinemessagemodel.cc > CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.i

src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.s"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chakming/linux/project/chatServer/src/server/model/offlinemessagemodel.cc -o CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.s

src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o.requires

src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o.provides: src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o.provides

src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o.provides.build: src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o


src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.o: ../src/server/model/usermodel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakming/linux/project/chatServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.o"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/model/usermodel.cc.o -c /home/chakming/linux/project/chatServer/src/server/model/usermodel.cc

src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/model/usermodel.cc.i"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chakming/linux/project/chatServer/src/server/model/usermodel.cc > CMakeFiles/ChatServer.dir/model/usermodel.cc.i

src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/model/usermodel.cc.s"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chakming/linux/project/chatServer/src/server/model/usermodel.cc -o CMakeFiles/ChatServer.dir/model/usermodel.cc.s

src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.o.requires

src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.o.provides: src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.o.provides

src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.o.provides.build: src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.o


src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.o: ../src/server/redis/redis.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakming/linux/project/chatServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.o"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/redis/redis.cc.o -c /home/chakming/linux/project/chatServer/src/server/redis/redis.cc

src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/redis/redis.cc.i"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chakming/linux/project/chatServer/src/server/redis/redis.cc > CMakeFiles/ChatServer.dir/redis/redis.cc.i

src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/redis/redis.cc.s"
	cd /home/chakming/linux/project/chatServer/build/src/server && /opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chakming/linux/project/chatServer/src/server/redis/redis.cc -o CMakeFiles/ChatServer.dir/redis/redis.cc.s

src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.o.requires

src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.o.provides: src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.o.provides

src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.o.provides.build: src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.o


# Object files for target ChatServer
ChatServer_OBJECTS = \
"CMakeFiles/ChatServer.dir/chatserivce.cc.o" \
"CMakeFiles/ChatServer.dir/chatserver.cc.o" \
"CMakeFiles/ChatServer.dir/main.cc.o" \
"CMakeFiles/ChatServer.dir/db/mysqldb.cc.o" \
"CMakeFiles/ChatServer.dir/model/friendmodel.cc.o" \
"CMakeFiles/ChatServer.dir/model/groupmodel.cc.o" \
"CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o" \
"CMakeFiles/ChatServer.dir/model/usermodel.cc.o" \
"CMakeFiles/ChatServer.dir/redis/redis.cc.o"

# External object files for target ChatServer
ChatServer_EXTERNAL_OBJECTS =

../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/chatserver.cc.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/main.cc.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/build.make
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chakming/linux/project/chatServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable ../../../bin/ChatServer"
	cd /home/chakming/linux/project/chatServer/build/src/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ChatServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/CMakeFiles/ChatServer.dir/build: ../bin/ChatServer

.PHONY : src/server/CMakeFiles/ChatServer.dir/build

src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/chatserivce.cc.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/chatserver.cc.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/main.cc.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/db/mysqldb.cc.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/model/friendmodel.cc.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/model/groupmodel.cc.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cc.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/model/usermodel.cc.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/redis/redis.cc.o.requires

.PHONY : src/server/CMakeFiles/ChatServer.dir/requires

src/server/CMakeFiles/ChatServer.dir/clean:
	cd /home/chakming/linux/project/chatServer/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/ChatServer.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/ChatServer.dir/clean

src/server/CMakeFiles/ChatServer.dir/depend:
	cd /home/chakming/linux/project/chatServer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chakming/linux/project/chatServer /home/chakming/linux/project/chatServer/src/server /home/chakming/linux/project/chatServer/build /home/chakming/linux/project/chatServer/build/src/server /home/chakming/linux/project/chatServer/build/src/server/CMakeFiles/ChatServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/CMakeFiles/ChatServer.dir/depend

