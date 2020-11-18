set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_STANDAED 14)

add_library(NotQuery STATIC NotQuery.cpp)

# target_link_libraries(NotQuery Query WordQuery Query_base TextQuery QueryResult)
target_link_libraries(NotQuery Query)