section .bss
    data resb 4096

section .text
    global _start

_start:
    lea r9, [rel data]  ; data pointer in r9
    xor r8, r8          ; data index in r8

loop_start_0:
    cmp byte [r9 + r8], 0
    jz loop_end_0
    jmp loop_start_0
loop_end_0:

    ; Exit program
    mov rax, 60
    xor rdi, rdi
    syscall

print_char:
    mov rax, 1          ; write syscall
    mov rdi, 1          ; stdout
    mov rsi, r9         ; data pointer
    add rsi, r8         ; add offset
    mov rdx, 1          ; 1 byte
    syscall
    ret

read_char:
    mov rax, 0          ; read syscall
    mov rdi, 0          ; stdin
    mov rsi, r9         ; data pointer
    add rsi, r8         ; add offset
    mov rdx, 1          ; 1 byte
    syscall
    ret
