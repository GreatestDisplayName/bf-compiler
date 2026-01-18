# plainEnglish - A Full Programming Language in Plain English

plainEnglish is a complete, Turing-complete programming language that reads and writes like natural English prose. Programs look like instructions you would give to a human, making programming accessible to everyone.

It compiles to Brainfuck, which then compiles to x86-64 assembly and machine code, enabling pure computational thinking without syntax noise.

## Philosophy

plainEnglish removes programming language syntax and replaces it with clear English statements. Instead of cryptic symbols, you write commands that are immediately understandable:

- `print "Hello"` instead of `printf("Hello");`
- `set x to 10` instead of `x = 10;`
- `increment x` instead of `x++;`

## Quick Start

### Your First Program

```plainenglish
print "Hello, World!"
```

Save as `hello.Pseudo` and run:
```bash
./bin/plainenglish_to_bf hello.Pseudo > hello.bf
../bf-compiler/bf hello.bf hello.asm
nasm -f elf64 hello.asm -o hello.o
ld -o hello hello.o
./hello
```

## Pragma Directives (like @tscheck)

plainEnglish supports pragma directives to control compilation behavior and validation, similar to TypeScript's `@ts-check`:

### @pecheck - Enable Grammar Checking
Validates all statements follow English grammar rules.

```plainenglish
# @pecheck
set myVariable to 10.
print myVariable.
```

### @ignore - Skip Validation
Allows intentional deviations from grammar rules for one line.

```plainenglish
# @ignore
set x to 10.
```

### @strict - Enforce Strict Grammar
Requires perfect English grammar compliance.

```plainenglish
# @strict
print "This must be perfect English".
increment.
```

### @lenient - Flexible Syntax (Default)
Allows abbreviations and shorthand syntax.

```plainenglish
# @lenient
set x to 10.
```

### @debug - Enable Debug Output
Shows intermediate parsing and compilation steps.

```plainenglish
# @debug
print "Debug enabled".
```

## Core Language Concepts

### Sentence Structure

plainEnglish follows English grammar rules:
- **Statements end with a period (.)** - Just like English sentences
- **Case insensitive** - `Print`, `PRINT`, `print` are all valid
- **Whitespace flexible** - Extra spaces are ignored
- **Comments with #** - Everything after # is ignored

Example:
```plainenglish
print "Hello, World".    # English sentence structure
set x to 10.            # Ends with period
increment.              # Each statement is a sentence
```

### 1. Variables

Variables store single-byte values (0-255):

```plainenglish
set counter to 0.
set value to 42.
let x be 100.
assign y to 255.
```

### 2. Output (Print)

Print strings and values:

```plainenglish
print "Hello, World!".        # Prints a string
print value.                  # Prints a variable's ASCII value
```

### 3. Arithmetic

Basic arithmetic operations:

```plainenglish
increment counter.            # Add 1
decrement counter.            # Subtract 1
add 5.                        # Add to current value
subtract 3.                   # Subtract from current value
```

### 4. Loops

Repeat code blocks:

```plainenglish
while x is greater than 0.
    print x.
    decrement.
end.

repeat 10 times.
    print "X".
end.
```

### 5. Input

Read from user:

```plainenglish
input.                        # Read a character
read input.                   # Read a character
```

### 6. Comments

```plainenglish
# This is a comment
# Everything after # is ignored
```

## Data Model

- **Memory**: 4096 memory cells
- **Cell Size**: 0-255 (8-bit unsigned integer)
- **Pointer**: Current position in memory
- **Operations**: Move pointer, increment/decrement cell, input/output

## Execution Model

plainEnglish follows the Brainfuck execution model:
- Sequential execution of statements
- Loops execute while current cell is non-zero
- All variables stored in memory cells
- No heap or stack (everything is in linear memory)

## Supported Keywords

| Category | Keywords |
|----------|----------|
| **Variables** | `set`, `assign`, `let` |
| **Operators** | `to`, `is`, `equals`, `than`, `greater`, `less` |
| **Arithmetic** | `increment`, `decrement`, `add`, `subtract` |
| **I/O** | `print`, `input`, `read`, `display` |
| **Control** | `while`, `loop`, `repeat`, `end`, `times` |
| **Comments** | `#` |

## Limitations

plainEnglish inherits Brainfuck's limitations:

- **No recursion**: No function calls with return addresses
- **No arrays/lists**: Everything is individual bytes
- **Limited arithmetic**: Only increment/decrement (multiply via loops)
- **No strings as variables**: Strings only in print statements
- **Small memory**: 4096 cells total
- **Byte-sized values**: 0-255 range only

## Example Programs

### Print Your Name

```plainenglish
print "Alice".
```

### Count and Print

```plainenglish
set n to 65.
print n.
increment.
print n.
increment.
print n.
```

Output: `ABC`

### Print a Sequence

```plainenglish
set counter to 48.
repeat 10 times.
    print counter.
    increment.
end.
```

Output: `0123456789`

## How plainEnglish Works

```
plainEnglish Source Code (.Pseudo)
            ↓
plainenglish_to_bf Compiler (written in Brainfuck)
            ↓
Brainfuck Code (.bf)
            ↓
bf Compiler (written in C)
            ↓
x86-64 Assembly Code (.asm)
            ↓
NASM Assembler
            ↓
Object File (.o)
            ↓
GNU Linker (ld)
            ↓
Executable Binary
            ↓
Run on Linux x86-64
```

## Getting Started

1. **Write** a `.Pseudo` file with plainEnglish code
2. **Compile** to Brainfuck using the plainenglish_to_bf compiler
3. **Compile** Brainfuck to assembly using the bf compiler
4. **Assemble** with NASM
5. **Link** with ld
6. **Run** the executable

## Design Goals

- ✅ **Readability**: Programs read like English
- ✅ **Simplicity**: No syntax rules to memorize
- ✅ **Completeness**: Turing-complete (can compute anything)
- ✅ **Elegance**: Remove noise, keep meaning
- ✅ **Accessibility**: Anyone can understand the code

## Future Enhancements

- Better loop conditions (if/else support)
- Variable names in output (print x value)
- Multiple-cell variables (for numbers > 255)
- Subroutines/procedures
- Built-in functions (factorial, fibonacci, etc.)
- Standard library

## References

- **Brainfuck**: Simple, minimal Turing-complete language
- **Esoteric Languages**: plainEnglish continues the tradition
- **Literate Programming**: Code that reads like prose
- **Educational**: Ideal for teaching computational thinking

plainEnglish programs use the `.Pseudo` extension.

### Usage

```bash
./plainenglish_to_bf program.Pseudo > program.bf
```

Then compile with the bf compiler:
```bash
./bf program.bf program.asm
```
