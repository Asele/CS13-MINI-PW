insort: main.o insort.o
	g++ main.o insort.o -o insort

main.o:	main.cpp
	g++ -Wall -pedantic -c main.cpp -o main.o

insort.o: insort.asm
	nasm -f elf64 insort.asm -o insort.o

clear:
	rm -f insort main.o insort.o insortc.o
