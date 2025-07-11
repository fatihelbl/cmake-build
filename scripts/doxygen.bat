@echo off
if not exist "build\doxygen" (
    mkdir "build\doxygen"
)
doxygen Doxyfile