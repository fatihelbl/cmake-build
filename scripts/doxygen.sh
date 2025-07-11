#!/bin/bash
if [ ! -d "build/doxygen" ]; then
  mkdir -p "build/doxygen"
fi
doxygen Doxyfile