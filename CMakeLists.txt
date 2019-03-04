cmake_minimum_required(VERSION 2.8)
project(tp-task2)
set(PROJECT_NAME "tp-task2")
set(SOURCES "C/main.cpp")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
execute_process(COMMAND python3 preparing.py WORKING_DIRECTORY A)
include_directories(${CMAKE_CURRENT_SOURCE_DIR})
add_executable(${PROJECT_NAME} ${SOURCES})
add_subdirectory(B)
target_link_libraries(${PROJECT_NAME} ${LIB_NAME})


