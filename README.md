# 🚀 CMake Build System for ARM Projects

A cross-platform build environment for ARM-based embedded development using CMake and the GNU Arm Embedded Toolchain.  
Includes scripts for building, cleaning, and running unit tests on Windows, macOS, and Linux systems.

---

### ✅ Requirements

To use this build system, make sure the following tools are installed and available in your system's `PATH`:

- [CMake](https://cmake.org/)  
- [GNU Arm Embedded Toolchain](https://developer.arm.com/downloads/-/gnu-rm) 

---

### 🧹 Clean the Build Directory

Before building the project, it's recommended to clear the previous build artifacts:

```bash
# On Windows
scripts\clear.bat

# On macOS/Linux
scripts/clear.sh
```

### 📋 List Presets
```bash
# On Windows
scripts\list_presets.bat

# On macOS/Linux
scripts/list_presets.sh
```
###  For ARM Build (Generate Hex File)
```bash
# On Windows
scripts\app-windows.bat

# On macOS/Linux
scripts/app-unix.sh
```