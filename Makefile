.PHONY: all clean install debug

CXXFLAGS = $(shell root-config --cflags)
LDLIBS = $(shell root-config --libs)

SRC = $(wildcard *.cc)
EXE= $(SRC:.cc=)

all: $(EXE)
	@echo make install: copy $(EXE) to ~/bin
	@echo make clean: delete $(EXE)
	@echo make debug: check contents of Makefile variables


debug:
	@echo SRC = $(SRC)
	@echo EXE = $(EXE)
	@echo $(CXXFLAGS)
	@echo $(LIBS)

clean:
	$(RM) $(EXE)

install:
	mkdir -p ~/bin
	install $(EXE) ~/bin
	@echo PLease add $(shell root-config --libdir)
	@echo to your LD_LIBRARY_PATH before you run any executable



