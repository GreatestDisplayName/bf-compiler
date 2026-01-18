#include <stdio.h>
#include <stdlib.h>

#define DATA_SIZE 4096
#define MAX_LOOP_DEPTH 256

// Basic Brainfuck to x86-64 assembly compiler
int main(int argc, char* argv[]) {
    int loop_stk[MAX_LOOP_DEPTH];
    int loop_stk_ptr = 0;
    int loop_count = 0;

    if(argc != 3) {
        fprintf(stderr, "Usage: %s <input.bf> <output.asm>\n", argv[0]);
        return 1;
    }

    FILE* input = fopen(argv[1], "r");
    if (!input) {
        perror("Cannot open input file");
        return 1;
    }

    FILE* output = fopen(argv[2], "w");
    if (!output) {
        perror("Cannot open output file");
        fclose(input);
        return 1;
    }
    // Write assembly header
    fprintf(output, "section .bss\n");
    fprintf(output, "    data resb %d\n\n", DATA_SIZE);
    
    fprintf(output, "section .text\n");
    fprintf(output, "    global _start\n\n");
    
    fprintf(output, "_start:\n");
    fprintf(output, "    lea r9, [rel data]  ; data pointer in r9\n");
    fprintf(output, "    xor r8, r8          ; data index in r8\n\n");
    
    // Process Brainfuck instructions

    char c;
    while ((c = fgetc(input)) != EOF) {
        switch(c) {
            case '>':
                fprintf(output, "    inc r8\n");
                fprintf(output, "    and r8, 0x%X\n", DATA_SIZE - 1);
                break;

            case '<':
                fprintf(output, "    dec r8\n");
                fprintf(output, "    and r8, 0x%X\n", DATA_SIZE - 1);
                break;

            case '+':
                fprintf(output, "    add byte [r9 + r8], 1\n");
                break;

            case '-':
                fprintf(output, "    sub byte [r9 + r8], 1\n");
                break;

            case '.':
                fprintf(output, "    call print_char\n");
                break;

            case ',':
                fprintf(output, "    call read_char\n");
                break;

            case '[':
                if (loop_stk_ptr >= MAX_LOOP_DEPTH) {
                    fprintf(stderr, "Error: Loop nesting too deep\n");
                    fclose(input);
                    fclose(output);
                    return 1;
                }
                fprintf(output, "loop_start_%d:\n", loop_count);
                loop_stk[loop_stk_ptr++] = loop_count;
                fprintf(output, "    cmp byte [r9 + r8], 0\n");
                fprintf(output, "    jz loop_end_%d\n", loop_count);
                loop_count++;
                break;

            case ']':
                if (loop_stk_ptr == 0) {
                    fprintf(stderr, "Error: Unmatched ']'\n");
                    fclose(input);
                    fclose(output);
                    return 1;
                }
                loop_stk_ptr--;
                fprintf(output, "    jmp loop_start_%d\n", loop_stk[loop_stk_ptr]);
                fprintf(output, "loop_end_%d:\n", loop_stk[loop_stk_ptr]);
                break;
        }
    }

    fprintf(output, "\n    ; Exit program\n");
    fprintf(output, "    mov rax, 60\n");
    fprintf(output, "    xor rdi, rdi\n");
    fprintf(output, "    syscall\n\n");

    fprintf(output, "print_char:\n");
    fprintf(output, "    mov rax, 1          ; write syscall\n");
    fprintf(output, "    mov rdi, 1          ; stdout\n");
    fprintf(output, "    mov rsi, r9         ; data pointer\n");
    fprintf(output, "    add rsi, r8         ; add offset\n");
    fprintf(output, "    mov rdx, 1          ; 1 byte\n");
    fprintf(output, "    syscall\n");
    fprintf(output, "    ret\n\n");

    fprintf(output, "read_char:\n");
    fprintf(output, "    mov rax, 0          ; read syscall\n");
    fprintf(output, "    mov rdi, 0          ; stdin\n");
    fprintf(output, "    mov rsi, r9         ; data pointer\n");
    fprintf(output, "    add rsi, r8         ; add offset\n");
    fprintf(output, "    mov rdx, 1          ; 1 byte\n");
    fprintf(output, "    syscall\n");
    fprintf(output, "    ret\n");

    fclose(input);
    fclose(output);
    return 0;
}