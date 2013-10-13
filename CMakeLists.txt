cmake_minimum_required(VERSION 2.8)

project(TODO_set_project_name)

# General
###############################################################################
# Activate C++0x support
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")

# Extra warnings
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wextra")

# Google Mock & Test
###############################################################################
set(GMOCK_HOME "$ENV{GMOCK_HOME}") 

add_subdirectory("${GMOCK_HOME}")

include_directories("${GMOCK_HOME}/include")
include_directories("${GMOCK_HOME}/gtest/include")

# Main program executable
###############################################################################
set(EXECUTABLE_NAME "TODO_change_this")

# Source files
file(GLOB SRC_FILES "src/*.cpp")

# Executable dependencies
add_executable(${EXECUTABLE_NAME} ${SRC_FILES}) 

# Set link libraries
# target_link_libraries($EXECUTABLE_NAME ...)

# Unit Tests executable
###############################################################################
set(UT_EXECUTABLE_NAME "unittests")

# Test files
file(GLOB TEST_FILES "tests/*.cpp")

add_executable(${UT_EXECUTABLE_NAME} $TEST_FILES $SRC_FILES)

# Set link libraries (order matters)
target_link_libraries(${UT_EXECUTABLE_NAME} gmock gtest pthread)

# Include root directory
include_directories(BEFORE ".")
include_directories(BEFORE "src/")

