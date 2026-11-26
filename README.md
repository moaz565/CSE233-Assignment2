# CSE233 - Assignment 2: Basic forks and C Style Development

Operating Systems (CSE233) assignment demonstrating Linux process creation with `fork()`, process management commands, and the roles of the linker and loader in C development.

## Prerequisites

This project is designed for a Linux environment with the following tools installed:

- `gcc` (GNU Compiler Collection)
- `make`
- `ldd` (included with `glibc` on most Linux distributions)

On Debian/Ubuntu, install `gcc` and `make` with:

```bash
sudo apt update
sudo apt install build-essential
```

## Installation & Build

Clone the repository and compile all programs using the `Makefile`:

```bash
git clone https://github.com/moaz565/CSE233-Assignment2.git
cd CSE233-Assignment2
make
```

## Usage

Compile and run all programs (and inspect `simple_program` dependencies with `ldd`):

```bash
make run
```

Or run each executable individually:

```bash
./process_creation
./output_program
./simple_program
ldd simple_program
```

To remove compiled binaries:

```bash
make clean
```

## Project Structure

- `process_creation.c` - Demonstrates process creation using `fork()` and `getpid()`.
- `file1.c` & `file2.c` - Demonstrates multi-file compilation and linking (`output_program`).
- `simple_program.c` - Simple C program used to inspect dynamic library dependencies with `ldd`.
- `Makefile` - Automates compiling, running, and cleaning the C programs.
- `answers.txt` - Written explanations for all Lab 5 exercises, the Linker, and the Loader.
- `LICENSE` - Open-source MIT License.

## Contributing

- me

## License

This project is licensed under the [MIT License](LICENSE).
