set(CPU_PARAMETERS ${CPU_PARAMETERS}
    -fno-exceptions
    -fno-rtti
    -mcpu=cortex-m33
    -mthumb
    -mfpu=fpv5-sp-d16
    -mfloat-abi=hard
    -fdata-sections
    -ffunction-sections
    -fno-exceptions
    -Wall
    #-v
    -MMD
    -MP
    -MF $<TARGET_FILE_DIR:${EXECUTABLE}>/${CMAKE_PROJECT_NAME}.d
    -MT $<TARGET_FILE_DIR:${EXECUTABLE}>/${CMAKE_PROJECT_NAME}.o
    -dD
    -dumpdir $<TARGET_FILE_DIR:${EXECUTABLE}>
    #-dumpbase ${CMAKE_PROJECT_NAME}
    #-dumpbase-ext .c
    $<$<CONFIG:Debug>:-O0>
)
set(LINK_PARAMETERS ${LINK_PARAMETERS}
 	-T${linker_script_SRC}
	-Wl,-Map=${CMAKE_PROJECT_NAME}.map,--cref
	-specs=nano.specs
	--specs=nosys.specs
	-Wl,--gc-sections
	-Wl,--start-group
	-lc
	-lm
	-lstdc++
	-lsupc++
	-Wl,--end-group
	-Wl,--print-memory-usage
)

set(compiler_define ${compiler_define}
    -DUSE_HAL_DRIVER
    -DSTM32F407xx
    -DDEBUG
)