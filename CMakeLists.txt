cmake_minimum_required(VERSION 3.21)

# Setup cmake module path and compiler settings
message("Build type: "              ${CMAKE_BUILD_TYPE})
set(CMAKE_C_STANDARD                11)
set(CMAKE_C_STANDARD_REQUIRED       ON)
set(CMAKE_C_EXTENSIONS              ON)
set(CMAKE_CXX_STANDARD              17)
set(CMAKE_CXX_STANDARD_REQUIRED     ON)
set(CMAKE_CXX_EXTENSIONS            ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS	ON)
set(PROJ_PATH                       ${CMAKE_CURRENT_SOURCE_DIR})

if(BUILD_ARM)
    include("Core/cmake/gcc-arm-none-eabi.cmake")
endif()

# Set the project name
set(CMAKE_PROJECT_NAME cmake_build)
project(${CMAKE_PROJECT_NAME})
enable_language(C CXX ASM)

if(BUILD_ARM)
    set(linker_script_SRC               ${PROJ_PATH}/STM32F407VGTX_FLASH.ld)
    set(EXECUTABLE                      ${CMAKE_PROJECT_NAME})
    add_subdirectory(${CMAKE_SOURCE_DIR}/Core)
endif()

if(BUILD_TEST)
    #add_subdirectory(${CMAKE_SOURCE_DIR}/test)
endif()