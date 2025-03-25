## Install VSCode
```
add C/C++ Extensions
```

## Install MSYS2
```
https://www.msys2.org/
```

## Install Toolchain
toolchain for 64bit
```
pacman -S --needed base-devel mingw-w64-ucrt-x86_64-toolchain
```

toolchain for 32bit
```
pacman -S --needed base-devel mingw-w64-i686-toolchain
```

## Add to Windows Path
```
C:\msys64\ucrt64\bin
```

## Check your MinGW installation
```
gcc --version
g++ --version
gdb --version
```