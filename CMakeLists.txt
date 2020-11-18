cmake_minimum_required(VERSION 3.0.0)
project(SEARCHFORWORD)

set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_STANDAED 14)

include_directories(inc)

#设置静态库 .a 存放的路径
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)

#设置可执行二进制文件 .dll 与 .exe 存放的路径
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

add_subdirectory(src)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)