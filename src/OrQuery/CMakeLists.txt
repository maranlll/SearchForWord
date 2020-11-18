set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_STANDAED 14)

add_library(OrQuery STATIC OrQuery.cpp)

# target_link_libraries(OrQuery BinaryQuery Query WordQuery Query_base TextQuery QueryResult)
target_link_libraries(OrQuery BinaryQuery)