set(CMAKE_SYSTEM_NAME               Generic)
set(CMAKE_SYSTEM_PROCESSOR          arm)

# Some default GCC settings
# arm-none-eabi- must be part of path environment

set(TOOLCHAIN_PREFIX "arm-none-eabi-")

if(WIN32)
    set(CMAKE_C_COMPILER                ${TOOLCHAIN_PREFIX}gcc.exe)
    set(CMAKE_CXX_COMPILER                ${TOOLCHAIN_PREFIX}g++.exe)
    message("operating system : windows")
elseif(UNIX AND NOT APPLE)
    set(CMAKE_C_COMPILER                ${TOOLCHAIN_PREFIX}gcc)
    set(CMAKE_CXX_COMPILER                ${TOOLCHAIN_PREFIX}g++)
    message("operating system : unix")
elseif(APPLE)
    set(CMAKE_C_COMPILER                ${TOOLCHAIN_PREFIX}gcc)
    set(CMAKE_CXX_COMPILER                ${TOOLCHAIN_PREFIX}g++)
    message("operating system : MAC")
else()
    message(FATAL_ERROR "Unsupported operating system")
endif()

set(CMAKE_ASM_COMPILER              ${CMAKE_C_COMPILER})
set(CMAKE_LINKER                    ${TOOLCHAIN_PREFIX}g++)
set(CMAKE_OBJCOPY                   ${TOOLCHAIN_PREFIX}objcopy)
set(CMAKE_SIZE                      ${TOOLCHAIN_PREFIX}size)

set(CMAKE_EXECUTABLE_SUFFIX_ASM     ".elf")
set(CMAKE_EXECUTABLE_SUFFIX_C       ".elf")
set(CMAKE_EXECUTABLE_SUFFIX_CXX     ".elf")

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)