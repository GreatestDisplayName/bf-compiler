# Brainfuck Compiler & plainEnglish Language
*By Truttle1*

This project contains a complete compiler toolchain:
- A Brainfuck to x86-64 assembly compiler (written in C)
- The self-hosted Brainfuck compiler v2 (written in Brainfuck itself)
- **plainEnglish**: A full programming language with English-like syntax that compiles to Brainfuck

All compilers turn code into x86-64 assembly, which can then be assembled and run on Linux.

## Project Structure

```
bf-compiler/
├── README.md                 (this file)
├── bf-compiler/             (Brainfuck compiler & tools)
│   ├── bf                    (C-based Brainfuck compiler executable)
│   ├── bfcomp_v2.bf        (self-hosted Brainfuck compiler)
│   ├── tools/
│   │   └── bf.c             (Brainfuck compiler source)
│   ├── examples/
│   │   └── game.bf          (interactive RPG game)
│   ├── old/                 (v0 and v1 versions)
│   └── game, game.asm, etc  (compiled output)
└── plainEnglish/            (English-like programming language)
    ├── bin/
    │   └── plainenglish_to_bf
    ├── src/
    │   └── plainenglish_to_bf.bf
    ├── examples/            (working example programs)
    ├── docs/
    │   └── README.md        (plainEnglish language spec)
    └── build/               (compiled outputs)
```

## Quick Start

### Using the C-based Brainfuck Compiler

```bash
cd bf-compiler
gcc -o bf tools/bf.c
./bf examples/game.bf game.asm
nasm -f elf64 game.asm
ld -o game game.o
./game
```

### Using plainEnglish (English-like Syntax)

```bash
cd plainEnglish
./bin/plainenglish_to_bf examples/hello_world.Pseudo > hello.bf
../bf-compiler/bf hello.bf hello.asm
nasm -f elf64 hello.asm
ld -o hello hello.o
./hello
```

## plainEnglish - A Full Programming Language

plainEnglish lets you write programs using plain English syntax:

```plainenglish
# Print "Hello, World!"
print "Hello, World!"
```

### Features

- **Variables**: `set x to 10`
- **Arithmetic**: `increment`, `decrement`, `add 5 to x`
- **I/O**: `print "text"`, `read input into variable`
- **Loops**: `while x is greater than 0`, `repeat 10 times`
- **Conditionals**: `if x equals 5 then ... end`
- **Comments**: `# This is a comment`

See [plainEnglish/docs/README.md](plainEnglish/docs/README.md) for full language specification.

## Compilation Toolchain

```
plainEnglish (.Pseudo)
    ↓
plainenglish_to_bf (written in Brainfuck)
    ↓
Brainfuck (.bf)
    ↓
bf compiler (written in C, improved from v2)
    ↓
x86-64 Assembly (.asm)
    ↓
NASM Assembler
    ↓
Machine Code (executable)
```

## Features & Improvements

### Brainfuck Compiler (bf.c)
- ✅ Error handling (file validation, proper error messages)
- ✅ Configurable constants (DATA_SIZE, MAX_LOOP_DEPTH)
- ✅ Bounds checking for nested loops
- ✅ Position-independent code with RIP-relative addressing
- ✅ Proper resource cleanup (file closing)
- ✅ Fixed print_char and read_char syscall implementations
- ✅ Clear, commented assembly output

### plainEnglish Language
- ✅ Full English-like syntax
- ✅ Follows natural grammar and word order
- ✅ Compiles to Brainfuck
- ✅ Case-insensitive keywords
- ✅ String literal support
- ✅ Comments support
- ✅ Fully Turing-complete

## Testing

### Run all plainEnglish examples:
```bash
cd plainEnglish
for file in examples/*.Pseudo; do
  ./bin/plainenglish_to_bf "$file" | ../bf-compiler/bf /dev/stdin out.asm
  nasm -f elf64 out.asm
  ld -o out out.o && ./out
done
```

### Run the interactive game:
```bash
cd bf-compiler
./game
```

## Supported Platforms

- **Tested on**: Ubuntu 24.04 (Linux 64-bit)
- **Processor**: AMD 64-bit
- **Assembler**: NASM
- **Linker**: GNU ld

## V2 Changes (Original)
- In v1, there was a bug caused by Brainfuck's cell limitations that only permitted 253 [] pairs. This version addresses that by making the loops use two cells for ID, rather than one. This enables programs like `game.bf` to compile correctly.

## Recent Improvements
- Enhanced error handling in bf.c compiler
- Fixed memory addressing bugs in I/O functions
- Introduced plainEnglish language as a user-friendly front-end
- Improved code organization and documentation