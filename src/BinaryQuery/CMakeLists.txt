set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_STANDAED 14)

add_library(BinaryQuery STATIC BinaryQuery.cpp)

# target_link_libraries(BinaryQuery Query WordQuery Query_base TextQuery QueryResult)
target_link_libraries(BinaryQuery Query)