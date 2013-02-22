cmake_minimum_required(VERSION 2.8)

project(TODO_set_project_name)

# Google Mock & Test paths
###############################################################################
# You must set here the appropiate library paths for your environment.
set(GOOGLE_MOCK_PATH "TODO_set_path") 
set(GOOGLE_TEST_PATH "TODO_set_path")

# Executable
###############################################################################
set(EXECUTABLE_NAME "TODO_change_this")

# Source files
file(GLOB SRC_FILES "src/*.cpp")
# Test files
file(GLOB TEST_FILES "tests/*.cpp")

# Pata executable
add_executable("${EXECUTABLE_NAME}" ${SRC_FILES} ${TEST_FILES})

# Set link libraries (order matters)
target_link_libraries(${EXECUTABLE_NAME} GoogleMockMain GoogleTest GoogleMock pthread)

# Include root directory
include_directories(BEFORE ".")

# Activate C++0x support
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")

# Google Mock
###############################################################################
add_library(GoogleMock STATIC IMPORTED)

set_property(TARGET GoogleMock PROPERTY IMPORTED_LOCATION 
             "${GOOGLE_MOCK_PATH}/lib/libgmock.a")

add_library(GoogleMockMain STATIC IMPORTED)

set_property(TARGET GoogleMockMain PROPERTY IMPORTED_LOCATION 
             "${GOOGLE_MOCK_PATH}/lib/libgmock_main.a")

include_directories("${GOOGLE_MOCK_PATH}/include")

# Google Test
###############################################################################
add_library(GoogleTest STATIC IMPORTED)

set_property(TARGET GoogleTest PROPERTY IMPORTED_LOCATION 
             "${GOOGLE_TEST_PATH}/lib/libgtest.a")

include_directories("${GOOGLE_TEST_PATH}/include")

