cmake_minimum_required(VERSION 2.8)

project(my_project)

# General
###############################################################################
# Activate C++0x support (if you encounter gmock errors, use 1.6.0 version)
add_definitions(-std=c++0x)

# Extra warnings
add_definitions(-Wextra)

# Google Mock & Test
###############################################################################
add_subdirectory(${GMOCK_ROOT})
include_directories(${GMOCK_ROOT}/include)
include_directories(${GMOCK_ROOT}/gtest/include)

# Main program executable
###############################################################################
set(EXECUTABLE_NAME "program")

# Source files
file(GLOB SRC_FILES "src/*.cpp")

# Executable dependencies
if(SRC_FILES)
    add_executable("${EXECUTABLE_NAME}" ${SRC_FILES}) 
endif(SRC_FILES)

# Set link libraries
# target_link_libraries($EXECUTABLE_NAME ...)

# Tests executable
###############################################################################
set(TEST_EXECUTABLE_NAME "tests")

# Test files
file(GLOB TEST_FILES "test/*.cpp")

# Don't include Main.cpp from src
file(GLOB MAIN_SRC "src/Main.cpp")
list(REMOVE_ITEM SRC_FILES ${MAIN_SRC})

add_executable("${TEST_EXECUTABLE_NAME}" ${TEST_FILES} ${SRC_FILES})

# Set link libraries (order matters)
target_link_libraries("${TEST_EXECUTABLE_NAME}" gmock gtest pthread)

# Include root directory
include_directories(BEFORE ".")
include_directories(BEFORE "src/")

