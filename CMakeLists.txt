cmake_minimum_required(VERSION 3.5.0)
project(server VERSION 0.1.0 LANGUAGES C CXX)

find_package(Qt6 REQUIRED COMPONENTS Core Network)
qt_standard_project_setup()

qt_add_executable(server main.cpp server.h)

target_link_libraries(server PRIVATE Qt6::Core Qt6::Network)