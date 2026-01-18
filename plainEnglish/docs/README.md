# plainEnglish - A Full Programming Language in Plain English

plainEnglish is a complete, Turing-complete programming language that reads and writes like English prose. It compiles to Brainfuck, which then compiles to machine code.

## Language Features

### 1. Variables and Assignment
```
set counter to 0
set name to "Hello"
assign value to 42
let x be 10
```

### 2. Arithmetic Operations
```
increment counter
decrement counter
add 5 to x
subtract 3 from y
multiply x by 2
divide y by 2
```

### 3. Input and Output
```
print "Hello, World!"
print counter
display "The value is " followed by x
read input into variable
input number
```

### 4. Conditionals
```
if x equals 5 then
    print "x is 5"
end

if x is greater than 10 then
    increment counter
else
    decrement counter
end
```

### 5. Loops
```
repeat 10 times
    print "Hello"
end

while x is greater than 0
    print x
    decrement x
end

for each item in range 1 to 10
    print item
end
```

### 6. Functions and Procedures
```
define greet takes name
    print "Hello, "
    print name
end

call greet with "Alice"
```

### 7. Comments
```
# This is a comment
# It can span multiple lines
```

### 8. Data Types
- **Numbers**: 0-255 (Brainfuck cell limit)
- **Strings**: ASCII characters
- **Boolean**: true (1) or false (0)

### 9. Operators
- Comparison: `equals`, `is greater than`, `is less than`, `is not`
- Logical: `and`, `or`, `not`
- Arithmetic: `plus`, `minus`, `times`, `divided by`

## Example Programs

### Program 1: Count from 1 to 10
```
set counter to 0

while counter is less than 10
    increment counter
    print counter
end
```

### Program 2: Print "Hello, World!"
```
print "Hello, World!"
```

### Program 3: Sum of numbers
```
set total to 0
set i to 1

while i is less than or equal to 5
    add i to total
    increment i
end

print "The sum is "
print total
```

### Program 4: Function Definition
```
define fibonacci takes n
    if n is less than or equal to 1 then
        return n
    end
    
    return fibonacci of n minus 1 plus fibonacci of n minus 2
end

print fibonacci of 10
```

## Syntax Rules

1. **Statements end naturally** - No semicolons required
2. **Blocks are explicit** - Use `end` to close blocks
3. **Variables are created on first use** - No separate declaration needed
4. **Case insensitive** - `Print`, `PRINT`, and `print` are equivalent
5. **Readable operators** - Use English words instead of symbols
6. **Natural grammar** - Follows English word order

## Compilation Process

```
plainEnglish (.Pseudo) 
    ↓
plainenglish_to_bf compiler (written in Brainfuck)
    ↓
Brainfuck (.bf)
    ↓
bf compiler (written in C)
    ↓
x86-64 Assembly (.asm)
    ↓
NASM Assembler
    ↓
Machine Code (executable)
```

## Implementation Notes

- The compiler tokenizes English keywords and converts them to Brainfuck operations
- Complex features like functions are translated to loops and labels
- String literals are converted to ASCII values
- Variables are mapped to memory cells
- The language is fully Turing-complete

## Limitations

- Variables are single bytes (0-255)
- Memory is limited to 4096 cells
- Recursion depth depends on available memory
- No floating-point arithmetic (only integers)

## Future Extensions

- Array/List support
- String manipulation functions
- File I/O operations
- Standard library functions
- Optimization passes
- Better error messages

plainEnglish programs use the `.Pseudo` extension.

### Usage

```bash
./plainenglish_to_bf program.Pseudo > program.bf
```

Then compile with the bf compiler:
```bash
./bf program.bf program.asm
```
