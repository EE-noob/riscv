CFLAGS=-Wall -g
help:
	@echo help, dir, comp:pre com asm link, clr, run, all:comp run, //sta, dyn
all:comp run
dir:
	mkdir src;mkdir sim;mkdir lib;mkdir include; 
comp:
	gcc $(CFLAGS) ./src/*.c -o ./sim/run.exe
clr:
	rm -rf ./sim/*
run: 
	./sim/run.exe


