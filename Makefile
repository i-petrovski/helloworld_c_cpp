# Path definitions
MINGW32_PATH = C:\msys64\mingw32\bin
MINGW64_PATH = C:\msys64\ucrt64\bin

# Compiler definitions
CC32 = $(MINGW32_PATH)\gcc.exe
CXX32 = $(MINGW32_PATH)\g++.exe
CC64 = $(MINGW64_PATH)\gcc.exe
CXX64 = $(MINGW64_PATH)\g++.exe

# Compiler flags
CFLAGS64 = -Wall -m64
CFLAGS32 = -Wall -march=i486 -m32

# Targets
all: helloworld_c64 helloworld_cpp64 helloworld_c32 helloworld_cpp32

helloworld_c64: helloworld.c
	$(CC64) $(CFLAGS64) helloworld.c -o helloworld_c64.exe

helloworld_cpp64: helloworld.cpp
	$(CXX64) $(CFLAGS64) -L C:\msys64\ucrt64\lib -I C:\msys64\ucrt64\include helloworld.cpp -o helloworld_cpp64.exe 

helloworld_c32: helloworld.c
	$(eval PATH := $(MINGW32_PATH);$(PATH))
	$(CC32) $(CFLAGS32) helloworld.c -o helloworld_c32.exe

helloworld_cpp32: helloworld.cpp # Not working
	$(eval PATH := $(MINGW32_PATH);$(PATH))
	$(CXX32) $(CFLAGS32) helloworld.cpp -o helloworld_cpp32.exe

clean:
	del /Q helloworld_c64.exe helloworld_cpp64.exe helloworld_c32.exe helloworld_cpp32.exe