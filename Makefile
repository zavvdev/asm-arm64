# Mac OS X on Apple Silicon (M1) - ARM64

run:
	make compile && make link && ./main

compile:
	as main.s -o main.o

link:
	ld main.o -o main -l System -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64
