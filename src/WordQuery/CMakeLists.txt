set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_STANDAED 14)

add_library(WordQuery STATIC WordQuery.cpp)

# target_link_libraries(WordQuery Query_base TextQuery QueryResult)
target_link_libraries(WordQuery Query_base)