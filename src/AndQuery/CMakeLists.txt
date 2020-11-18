set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_STANDAED 14)

add_library(AndQuery STATIC AndQuery.cpp)

# target_link_libraries(AndQuery BinaryQuery Query WordQuery Query_base TextQuery QueryResult)
target_link_libraries(AndQuery BinaryQuery)