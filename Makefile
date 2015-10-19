# Makefile for Poolball demo

ifeq ($(OS),Windows_NT)
    EXE = .exe
    DEL = del
else
    EXE =
    DEL = rm -f
endif

FILES   = main.cpp Poolball.cpp Pooltable.cpp
OBJS    = $(FILES:.cpp=.o)
APP     = demo$(EXE)

all:    $(APP)

$(APP): $(OBJS)
	$(CXX) -o $@ $^

%.o:    %.cpp
	$(CXX) -c $< -o $@

clean:
	$(DEL) $(APP) $(OBJS)

