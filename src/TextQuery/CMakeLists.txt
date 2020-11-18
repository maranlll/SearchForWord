set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_STANDAED 14)

add_library(TextQuery STATIC TextQuery.cpp)

target_link_libraries(TextQuery QueryResult)