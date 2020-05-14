cmake_minimum_required(VERSION 3.0.0)
project(maxplusabcCmake VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(maxplusabcCmake main.cpp)


include_directories(  " C:/Users/admin/Documents/Tridu33/C++/Eigen/eigen-3.3.7" )



set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
