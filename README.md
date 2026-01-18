# Brainfuck Compiler & plainEnglish Language
*By Truttle1 & GreatestDisplayName*

This project contains a complete compiler toolchain:
- A Brainfuck to x86-64 assembly compiler (written in C)
- The self-hosted Brainfuck compiler v2 (written in Brainfuck itself)
- **plainEnglish**: A full programming language with English-like syntax that compiles to Brainfuck

All compilers turn code into x86-64 assembly, which can then be assembled and run on Linux.

## Installation & Setup

### Requirements
- **gcc** - C compiler for compiling bf.c
- **nasm** - x86-64 assembler for assembly → machine code  
- **ld** - GNU linker for creating executables
- **Linux x86-64** - Tested on Ubuntu 24.04

### Build the Compiler
```bash
git clone https://github.com/GreatestDisplayName/bf-compiler
cd bf-compiler/bf-compiler
gcc -o bf tools/bf.c
cd ..  # Back to project root
```

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

### 1. Compile the bf Compiler
```bash
cd bf-compiler
gcc -o bf tools/bf.c
cd ..
```

### 2. Run a Brainfuck Program
```bash
./bf-compiler/bf bf-compiler/examples/game.bf game.asm
nasm -f elf64 game.asm -o game.o
ld game.o -o game
./game
```

### 3. Try plainEnglish (Recommended for Beginners)

plainEnglish lets you write programs in natural English instead of Brainfuck:

```bash
# Simple hello world
echo 'print "Hello, World!".' > hello.Pseudo

# Compile and run
plainEnglish/bin/plainenglish_to_bf hello.Pseudo | \
  ./bf-compiler/bf /dev/stdin hello.asm && \
  nasm -f elf64 hello.asm -o hello.o && \
  ld hello.o -o hello && \
  ./hello
```

## plainEnglish - A Full Programming Language

plainEnglish lets you write programs using plain English syntax:

```plainenglish
# Print "Hello, World!"
print "Hello, World!".
```

### Features

- **Variables**: `set x to 10`
- **Arithmetic**: `increment`, `decrement`, `add 5 to x`
- **I/O**: `print "text"`, `read input`
- **Loops**: `while x is greater than 0`, `repeat 10 times`
- **Conditionals**: `if x equals 5 then ... end`
- **Comments**: `# This is a comment`
- **Grammar Rules**: Enforces English-like sentence structure
- **Pragma Directives**: Control validation with English comments
- **Turing-Complete**: Can compute any computable function

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

### Why Choose plainEnglish?

**For Learning:**
- Perfect introduction to programming without cryptic syntax
- English structure makes algorithms clear and understandable
- Grammar rules teach computational thinking

**For Accessibility:**
- Non-programmers can read and understand plainEnglish code
- No symbols to memorize (no `{}()[]<>;,` etc.)
- Familiar English grammar rules apply

**For Fun:**
- Write actual working programs that read like English prose
- Challenge: Can you make your program read as a coherent story?
- Educational value with Turing-complete capabilities

## Testing & Examples

### Quick Test: Run a Simple Program

```bash
cd /workspaces/bf-compiler
# Compile and run hello world
plainEnglish/bin/plainenglish_to_bf plainEnglish/examples/hello_world.Pseudo | \
  ./bf-compiler/bf /dev/stdin hello.asm && \
  nasm -f elf64 hello.asm -o hello.o && \
  ld hello.o -o hello && \
  ./hello
```

### Run the Interactive Game
```bash
cd bf-compiler
./game
```

### Run All Examples
```bash
cd plainEnglish
for file in examples/*.Pseudo; do
  echo "Testing: $file"
  ../bf-compiler/bf <(./bin/plainenglish_to_bf "$file") out.asm && \
  nasm -f elf64 out.asm -o out.o && \
  ld -o out out.o && ./out
done
```

## Supported Platforms

- **Tested on**: Ubuntu 24.04 (Linux 64-bit)
- **Processor**: x86-64
- **Assembler**: NASM
- **Linker**: GNU ld

## Version History

### v2 Improvements (Brainfuck Compiler)
- Fixed loop depth limitation (v1 supported max 253 pairs)
- Now uses two cells for ID tracking instead of one
- Enables complex programs like `game.bf`

### Current Release
- Enhanced error handling in bf.c compiler
- Fixed memory addressing bugs in I/O functions
- Introduced plainEnglish language
- Added comprehensive documentation
- Implemented pragma directive system
- Grammar rule enforcement
- Introduced plainEnglish language as a user-friendly front-end
- Improved code organization and documentation
