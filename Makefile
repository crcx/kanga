d:
	clang -c kanga.c -o kanga.o
	clang -c nga.c -o nga.o
	clang kanga.o nga.o -lcurses -o kanga
	rm -f *.o
