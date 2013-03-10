cmake_minimum_required(VERSION 2.8)

project(TODO_set_project_name)

# Google Mock & Test
###############################################################################
set(GOOGLE_MOCK_PATH "lib/gmock") 
set(GOOGLE_TEST_PATH "lib/gtest")

add_subdirectory("${GOOGLE_MOCK_PATH}")

include_directories("${GOOGLE_MOCK_PATH}/include")
include_directories("${GOOGLE_TEST_PATH}/include")

# Executable
###############################################################################
set(EXECUTABLE_NAME "TODO_change_this")

# Source files
file(GLOB SRC_FILES "src/*.cpp")

# Test files
file(GLOB TEST_FILES "tests/*.cpp")

# Executable dependencies
add_executable("${EXECUTABLE_NAME}" ${SRC_FILES} ${TEST_FILES})

# Set link libraries (order matters)
target_link_libraries(${EXECUTABLE_NAME} gmock_main gtest gtest pthread)

# Include root directory
include_directories(BEFORE ".")
include_directories(BEFORE "src/")

# Activate C++0x support
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")

# Extra warnings
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wextra")

