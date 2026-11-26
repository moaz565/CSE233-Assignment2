CC = gcc
CFLAGS = -Wall -Wextra

TARGETS = process_creation output_program simple_program

.PHONY: all run clean

all: $(TARGETS)

process_creation: process_creation.c
	$(CC) $(CFLAGS) process_creation.c -o process_creation

output_program: file1.c file2.c
	$(CC) $(CFLAGS) file1.c file2.c -o output_program

simple_program: simple_program.c
	$(CC) $(CFLAGS) simple_program.c -o simple_program

run: all
	@echo "=== Running process_creation ==="
	./process_creation
	@echo "=== Running output_program ==="
	./output_program
	@echo "=== Running simple_program ==="
	./simple_program
	@echo "=== Dynamic libraries for simple_program ==="
	ldd simple_program

clean:
	rm -f $(TARGETS)
