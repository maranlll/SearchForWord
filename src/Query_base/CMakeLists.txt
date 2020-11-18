set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_STANDAED 14)

add_library(Query_base STATIC Query_base.cpp)

# target_link_libraries(Query_base TextQuery QueryResult)
target_link_libraries(Query_base TextQuery)