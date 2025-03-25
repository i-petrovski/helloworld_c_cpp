# Makefile for compiling helloworld.c with gcc and helloworld.cpp with g++

# Check the OS type
ifeq ($(OS),Windows_NT)
    DEL = del /f /q
    EXE_EXT = .exe
else
    DEL = rm -f
    EXE_EXT = 
endif

# Compiler definitions
CC = gcc.exe
CXX = g++.exe

# Compiler flags
CFLAGS = -Wall
CXXFLAGS = -Wall

# Targets
all: helloworld_c helloworld_cpp

helloworld_c: helloworld.c
	$(CC) $(CFLAGS) helloworld.c -o helloworld_c.exe

helloworld_cpp: helloworld.cpp
	$(CXX) $(CXXFLAGS) helloworld.cpp -o helloworld_cpp.exe

clean:
	$(DEL) helloworld_c$(EXE_EXT) helloworld_cpp$(EXE_EXT)