cmake_minimum_required(VERSION 3.4.1)

set(CMAKE_CXX_STANDARD 14)
add_subdirectory(lib)
include_directories(lib/include)
include_directories(lib/src)

#add_executable(test test/test_hook.cc)
#target_link_libraries(test plathook)
