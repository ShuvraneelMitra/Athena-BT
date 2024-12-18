cmake_minimum_required(VERSION 3.10)

project(AthenaBT VERSION 1.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Boost 1.82.0 REQUIRED COMPONENTS system thread)

include_directories(${Boost_INCLUDE_DIRS})

add_library(imgui
    imgui/imgui.cpp
    imgui/imgui_draw.cpp
    imgui/imgui_widgets.cpp
    imgui/imgui_tables.cpp
    imgui/backends/imgui_impl_glfw.cpp 
    imgui/backends/imgui_impl_opengl3.cpp
)

target_include_directories(imgui PUBLIC
    ${CMAKE_SOURCE_DIR}/imgui
    ${CMAKE_SOURCE_DIR}/imgui/backends
)
add_executable(Athena beast.cpp)
target_include_directories(Athena PRIVATE ${Boost_INCLUDE_DIRS})
find_package(OpenGL REQUIRED)
find_package(glfw3 REQUIRED)

target_link_libraries(Athena PRIVATE imgui OpenGL::GL glfw Boost::system Boost::thread)
