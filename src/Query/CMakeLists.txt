set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_STANDAED 14)

add_library(Query STATIC Query.cpp)

# target_link_libraries(Query WordQuery Query_base TextQuery QueryResult)
target_link_libraries(Query WordQuery)