cmake_minimum_required(VERSION 2.8)

project(TODO_set_project_name)

# General
###############################################################################
# Activate C++0x support (if you encounter gmock errors, use 1.6.0 version)
add_definitions(-std=c++0x)

# Extra warnings
add_definitions(-Wextra)

# Google Mock & Test
###############################################################################
set(GMOCK_HOME "$ENV{GMOCK_HOME}") 

include_directories("${GMOCK_HOME}/include")
include_directories("${GMOCK_HOME}/gtest/include")
link_directories("${GMOCK_HOME}/lib/.libs")
link_directories("${GMOCK_HOME}/gtest/lib/.libs")

# Main program executable
###############################################################################
set(EXECUTABLE_NAME "TODO_change_this")

# Source files
file(GLOB SRC_FILES "src/*.cpp")

# Executable dependencies
if(SRC_FILES)

    add_executable("${EXECUTABLE_NAME}" ${SRC_FILES}) 

endif(SRC_FILES)

# Set link libraries
# target_link_libraries($EXECUTABLE_NAME ...)

# Unit Tests executable
###############################################################################
set(UT_EXECUTABLE_NAME "unittests")

# Test files
file(GLOB TEST_FILES "unittests/*.cpp")

add_executable("${UT_EXECUTABLE_NAME}" ${TEST_FILES} ${SRC_FILES})

# Set link libraries (order matters)
target_link_libraries("${UT_EXECUTABLE_NAME}" gmock gtest pthread)

# Include root directory
include_directories(BEFORE ".")
include_directories(BEFORE "src/")

