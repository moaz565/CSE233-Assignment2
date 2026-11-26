CC = gcc
TARGETS = process_creation output_program simple_program

all: $(TARGETS)

process_creation: process_creation.c
	$(CC) process_creation.c -o process_creation

output_program: file1.c file2.c
	$(CC) file1.c file2.c -o output_program

simple_program: simple_program.c
	$(CC) simple_program.c -o simple_program

run: all
	./process_creation
	./output_program
	./simple_program
	ldd simple_program

clean:
	rm -f $(TARGETS)
