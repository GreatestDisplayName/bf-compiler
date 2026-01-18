section .bss
    data resb 4096

section .text
    global _start

_start:
    lea r9, [rel data]  ; data pointer in r9
    xor r8, r8          ; data index in r8

    inc r8
    and r8, 0xFFF
loop_start_0:
    cmp byte [r9 + r8], 0
    jz loop_end_0
    sub byte [r9 + r8], 1
    jmp loop_start_0
loop_end_0:
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_1:
    cmp byte [r9 + r8], 0
    jz loop_end_1
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_1
loop_end_1:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_2:
    cmp byte [r9 + r8], 0
    jz loop_end_2
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_2
loop_end_2:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_3:
    cmp byte [r9 + r8], 0
    jz loop_end_3
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_3
loop_end_3:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_4:
    cmp byte [r9 + r8], 0
    jz loop_end_4
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_4
loop_end_4:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_5:
    cmp byte [r9 + r8], 0
    jz loop_end_5
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_5
loop_end_5:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_6:
    cmp byte [r9 + r8], 0
    jz loop_end_6
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_6
loop_end_6:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_7:
    cmp byte [r9 + r8], 0
    jz loop_end_7
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_7
loop_end_7:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_8:
    cmp byte [r9 + r8], 0
    jz loop_end_8
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_8
loop_end_8:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_9:
    cmp byte [r9 + r8], 0
    jz loop_end_9
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_9
loop_end_9:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_10:
    cmp byte [r9 + r8], 0
    jz loop_end_10
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_10
loop_end_10:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_11:
    cmp byte [r9 + r8], 0
    jz loop_end_11
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_11
loop_end_11:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_12:
    cmp byte [r9 + r8], 0
    jz loop_end_12
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_12
loop_end_12:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_13:
    cmp byte [r9 + r8], 0
    jz loop_end_13
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_13
loop_end_13:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_14:
    cmp byte [r9 + r8], 0
    jz loop_end_14
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_14
loop_end_14:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_15:
    cmp byte [r9 + r8], 0
    jz loop_end_15
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_15
loop_end_15:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_16:
    cmp byte [r9 + r8], 0
    jz loop_end_16
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_16
loop_end_16:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_17:
    cmp byte [r9 + r8], 0
    jz loop_end_17
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_17
loop_end_17:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_18:
    cmp byte [r9 + r8], 0
    jz loop_end_18
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_18
loop_end_18:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_19:
    cmp byte [r9 + r8], 0
    jz loop_end_19
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_19
loop_end_19:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_20:
    cmp byte [r9 + r8], 0
    jz loop_end_20
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_20
loop_end_20:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_21:
    cmp byte [r9 + r8], 0
    jz loop_end_21
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_21
loop_end_21:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_22:
    cmp byte [r9 + r8], 0
    jz loop_end_22
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_22
loop_end_22:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_23:
    cmp byte [r9 + r8], 0
    jz loop_end_23
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_23
loop_end_23:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_24:
    cmp byte [r9 + r8], 0
    jz loop_end_24
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_24
loop_end_24:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_25:
    cmp byte [r9 + r8], 0
    jz loop_end_25
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_25
loop_end_25:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_26:
    cmp byte [r9 + r8], 0
    jz loop_end_26
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_26
loop_end_26:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_27:
    cmp byte [r9 + r8], 0
    jz loop_end_27
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_27
loop_end_27:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_28:
    cmp byte [r9 + r8], 0
    jz loop_end_28
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_28
loop_end_28:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_29:
    cmp byte [r9 + r8], 0
    jz loop_end_29
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_29
loop_end_29:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_30:
    cmp byte [r9 + r8], 0
    jz loop_end_30
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_30
loop_end_30:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_31:
    cmp byte [r9 + r8], 0
    jz loop_end_31
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_31
loop_end_31:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_32:
    cmp byte [r9 + r8], 0
    jz loop_end_32
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_32
loop_end_32:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_33:
    cmp byte [r9 + r8], 0
    jz loop_end_33
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_33
loop_end_33:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_34:
    cmp byte [r9 + r8], 0
    jz loop_end_34
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_34
loop_end_34:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_35:
    cmp byte [r9 + r8], 0
    jz loop_end_35
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_35
loop_end_35:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_36:
    cmp byte [r9 + r8], 0
    jz loop_end_36
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_36
loop_end_36:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_37:
    cmp byte [r9 + r8], 0
    jz loop_end_37
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_37
loop_end_37:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_38:
    cmp byte [r9 + r8], 0
    jz loop_end_38
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_38
loop_end_38:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_39:
    cmp byte [r9 + r8], 0
    jz loop_end_39
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_39
loop_end_39:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_40:
    cmp byte [r9 + r8], 0
    jz loop_end_40
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_40
loop_end_40:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_41:
    cmp byte [r9 + r8], 0
    jz loop_end_41
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_41
loop_end_41:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_42:
    cmp byte [r9 + r8], 0
    jz loop_end_42
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_42
loop_end_42:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_43:
    cmp byte [r9 + r8], 0
    jz loop_end_43
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_43
loop_end_43:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_44:
    cmp byte [r9 + r8], 0
    jz loop_end_44
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_44
loop_end_44:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_45:
    cmp byte [r9 + r8], 0
    jz loop_end_45
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_45
loop_end_45:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_46:
    cmp byte [r9 + r8], 0
    jz loop_end_46
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_46
loop_end_46:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_47:
    cmp byte [r9 + r8], 0
    jz loop_end_47
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_47
loop_end_47:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_48:
    cmp byte [r9 + r8], 0
    jz loop_end_48
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_48
loop_end_48:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_49:
    cmp byte [r9 + r8], 0
    jz loop_end_49
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_49
loop_end_49:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_50:
    cmp byte [r9 + r8], 0
    jz loop_end_50
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_50
loop_end_50:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_51:
    cmp byte [r9 + r8], 0
    jz loop_end_51
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_51
loop_end_51:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_52:
    cmp byte [r9 + r8], 0
    jz loop_end_52
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_52
loop_end_52:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_53:
    cmp byte [r9 + r8], 0
    jz loop_end_53
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_53
loop_end_53:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    call print_char
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_54:
    cmp byte [r9 + r8], 0
    jz loop_end_54
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_54
loop_end_54:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_55:
    cmp byte [r9 + r8], 0
    jz loop_end_55
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_55
loop_end_55:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_56:
    cmp byte [r9 + r8], 0
    jz loop_end_56
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_56
loop_end_56:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_57:
    cmp byte [r9 + r8], 0
    jz loop_end_57
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_57
loop_end_57:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_58:
    cmp byte [r9 + r8], 0
    jz loop_end_58
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_58
loop_end_58:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_59:
    cmp byte [r9 + r8], 0
    jz loop_end_59
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_59
loop_end_59:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_60:
    cmp byte [r9 + r8], 0
    jz loop_end_60
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_60
loop_end_60:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_61:
    cmp byte [r9 + r8], 0
    jz loop_end_61
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_61
loop_end_61:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_62:
    cmp byte [r9 + r8], 0
    jz loop_end_62
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_62
loop_end_62:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_63:
    cmp byte [r9 + r8], 0
    jz loop_end_63
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_63
loop_end_63:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_64:
    cmp byte [r9 + r8], 0
    jz loop_end_64
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_64
loop_end_64:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_65:
    cmp byte [r9 + r8], 0
    jz loop_end_65
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_65
loop_end_65:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_66:
    cmp byte [r9 + r8], 0
    jz loop_end_66
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_66
loop_end_66:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_67:
    cmp byte [r9 + r8], 0
    jz loop_end_67
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_67
loop_end_67:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_68:
    cmp byte [r9 + r8], 0
    jz loop_end_68
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_68
loop_end_68:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_69:
    cmp byte [r9 + r8], 0
    jz loop_end_69
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_69
loop_end_69:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_70:
    cmp byte [r9 + r8], 0
    jz loop_end_70
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_70
loop_end_70:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_71:
    cmp byte [r9 + r8], 0
    jz loop_end_71
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_71
loop_end_71:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_72:
    cmp byte [r9 + r8], 0
    jz loop_end_72
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_72
loop_end_72:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_73:
    cmp byte [r9 + r8], 0
    jz loop_end_73
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_73
loop_end_73:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
loop_start_74:
    cmp byte [r9 + r8], 0
    jz loop_end_74
    sub byte [r9 + r8], 1
    jmp loop_start_74
loop_end_74:
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
loop_start_75:
    cmp byte [r9 + r8], 0
    jz loop_end_75
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
loop_start_76:
    cmp byte [r9 + r8], 0
    jz loop_end_76
    sub byte [r9 + r8], 1
    jmp loop_start_76
loop_end_76:
    inc r8
    and r8, 0xFFF
loop_start_77:
    cmp byte [r9 + r8], 0
    jz loop_end_77
    sub byte [r9 + r8], 1
    jmp loop_start_77
loop_end_77:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_78:
    cmp byte [r9 + r8], 0
    jz loop_end_78
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_78
loop_end_78:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_79:
    cmp byte [r9 + r8], 0
    jz loop_end_79
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_79
loop_end_79:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_80:
    cmp byte [r9 + r8], 0
    jz loop_end_80
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_80
loop_end_80:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_81:
    cmp byte [r9 + r8], 0
    jz loop_end_81
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_81
loop_end_81:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_82:
    cmp byte [r9 + r8], 0
    jz loop_end_82
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_82
loop_end_82:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_83:
    cmp byte [r9 + r8], 0
    jz loop_end_83
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_83
loop_end_83:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_84:
    cmp byte [r9 + r8], 0
    jz loop_end_84
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_84
loop_end_84:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_85:
    cmp byte [r9 + r8], 0
    jz loop_end_85
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_85
loop_end_85:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_86:
    cmp byte [r9 + r8], 0
    jz loop_end_86
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_86
loop_end_86:
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
loop_start_87:
    cmp byte [r9 + r8], 0
    jz loop_end_87
    sub byte [r9 + r8], 1
    jmp loop_start_87
loop_end_87:
    inc r8
    and r8, 0xFFF
loop_start_88:
    cmp byte [r9 + r8], 0
    jz loop_end_88
    sub byte [r9 + r8], 1
    jmp loop_start_88
loop_end_88:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_89:
    cmp byte [r9 + r8], 0
    jz loop_end_89
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_89
loop_end_89:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_90:
    cmp byte [r9 + r8], 0
    jz loop_end_90
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_90
loop_end_90:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_91:
    cmp byte [r9 + r8], 0
    jz loop_end_91
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_91
loop_end_91:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_92:
    cmp byte [r9 + r8], 0
    jz loop_end_92
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_92
loop_end_92:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_93:
    cmp byte [r9 + r8], 0
    jz loop_end_93
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_93
loop_end_93:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_94:
    cmp byte [r9 + r8], 0
    jz loop_end_94
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_94
loop_end_94:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_95:
    cmp byte [r9 + r8], 0
    jz loop_end_95
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_95
loop_end_95:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_96:
    cmp byte [r9 + r8], 0
    jz loop_end_96
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_96
loop_end_96:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_97:
    cmp byte [r9 + r8], 0
    jz loop_end_97
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_97
loop_end_97:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_98:
    cmp byte [r9 + r8], 0
    jz loop_end_98
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_98
loop_end_98:
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
loop_start_99:
    cmp byte [r9 + r8], 0
    jz loop_end_99
    sub byte [r9 + r8], 1
    jmp loop_start_99
loop_end_99:
    inc r8
    and r8, 0xFFF
loop_start_100:
    cmp byte [r9 + r8], 0
    jz loop_end_100
    sub byte [r9 + r8], 1
    jmp loop_start_100
loop_end_100:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_101:
    cmp byte [r9 + r8], 0
    jz loop_end_101
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_101
loop_end_101:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_102:
    cmp byte [r9 + r8], 0
    jz loop_end_102
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_102
loop_end_102:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_103:
    cmp byte [r9 + r8], 0
    jz loop_end_103
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_103
loop_end_103:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_104:
    cmp byte [r9 + r8], 0
    jz loop_end_104
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_104
loop_end_104:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_105:
    cmp byte [r9 + r8], 0
    jz loop_end_105
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_105
loop_end_105:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_106:
    cmp byte [r9 + r8], 0
    jz loop_end_106
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_106
loop_end_106:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_107:
    cmp byte [r9 + r8], 0
    jz loop_end_107
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_107
loop_end_107:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_108:
    cmp byte [r9 + r8], 0
    jz loop_end_108
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_108
loop_end_108:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_109:
    cmp byte [r9 + r8], 0
    jz loop_end_109
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_109
loop_end_109:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_110:
    cmp byte [r9 + r8], 0
    jz loop_end_110
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_110
loop_end_110:
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
loop_start_111:
    cmp byte [r9 + r8], 0
    jz loop_end_111
    sub byte [r9 + r8], 1
    jmp loop_start_111
loop_end_111:
    inc r8
    and r8, 0xFFF
loop_start_112:
    cmp byte [r9 + r8], 0
    jz loop_end_112
    sub byte [r9 + r8], 1
    jmp loop_start_112
loop_end_112:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_113:
    cmp byte [r9 + r8], 0
    jz loop_end_113
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_113
loop_end_113:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_114:
    cmp byte [r9 + r8], 0
    jz loop_end_114
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_114
loop_end_114:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_115:
    cmp byte [r9 + r8], 0
    jz loop_end_115
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_115
loop_end_115:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_116:
    cmp byte [r9 + r8], 0
    jz loop_end_116
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_116
loop_end_116:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_117:
    cmp byte [r9 + r8], 0
    jz loop_end_117
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_117
loop_end_117:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_118:
    cmp byte [r9 + r8], 0
    jz loop_end_118
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_118
loop_end_118:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_119:
    cmp byte [r9 + r8], 0
    jz loop_end_119
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_119
loop_end_119:
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
loop_start_120:
    cmp byte [r9 + r8], 0
    jz loop_end_120
    sub byte [r9 + r8], 1
    jmp loop_start_120
loop_end_120:
    inc r8
    and r8, 0xFFF
loop_start_121:
    cmp byte [r9 + r8], 0
    jz loop_end_121
    sub byte [r9 + r8], 1
    jmp loop_start_121
loop_end_121:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_122:
    cmp byte [r9 + r8], 0
    jz loop_end_122
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_122
loop_end_122:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_123:
    cmp byte [r9 + r8], 0
    jz loop_end_123
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_123
loop_end_123:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_124:
    cmp byte [r9 + r8], 0
    jz loop_end_124
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_124
loop_end_124:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_125:
    cmp byte [r9 + r8], 0
    jz loop_end_125
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_125
loop_end_125:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_126:
    cmp byte [r9 + r8], 0
    jz loop_end_126
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_126
loop_end_126:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_127:
    cmp byte [r9 + r8], 0
    jz loop_end_127
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_127
loop_end_127:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_128:
    cmp byte [r9 + r8], 0
    jz loop_end_128
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_128
loop_end_128:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_129:
    cmp byte [r9 + r8], 0
    jz loop_end_129
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_129
loop_end_129:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_130:
    cmp byte [r9 + r8], 0
    jz loop_end_130
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_130
loop_end_130:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_131:
    cmp byte [r9 + r8], 0
    jz loop_end_131
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_131
loop_end_131:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_132:
    cmp byte [r9 + r8], 0
    jz loop_end_132
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_132
loop_end_132:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_133:
    cmp byte [r9 + r8], 0
    jz loop_end_133
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_133
loop_end_133:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_134:
    cmp byte [r9 + r8], 0
    jz loop_end_134
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_134
loop_end_134:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_135:
    cmp byte [r9 + r8], 0
    jz loop_end_135
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_135
loop_end_135:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_136:
    cmp byte [r9 + r8], 0
    jz loop_end_136
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_136
loop_end_136:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_137:
    cmp byte [r9 + r8], 0
    jz loop_end_137
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_137
loop_end_137:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_138:
    cmp byte [r9 + r8], 0
    jz loop_end_138
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_138
loop_end_138:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_139:
    cmp byte [r9 + r8], 0
    jz loop_end_139
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_139
loop_end_139:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_140:
    cmp byte [r9 + r8], 0
    jz loop_end_140
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_140
loop_end_140:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_141:
    cmp byte [r9 + r8], 0
    jz loop_end_141
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_141
loop_end_141:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_142:
    cmp byte [r9 + r8], 0
    jz loop_end_142
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_142
loop_end_142:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_143:
    cmp byte [r9 + r8], 0
    jz loop_end_143
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_143
loop_end_143:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_144:
    cmp byte [r9 + r8], 0
    jz loop_end_144
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_144
loop_end_144:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_145:
    cmp byte [r9 + r8], 0
    jz loop_end_145
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_145
loop_end_145:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_146:
    cmp byte [r9 + r8], 0
    jz loop_end_146
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_146
loop_end_146:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_147:
    cmp byte [r9 + r8], 0
    jz loop_end_147
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_147
loop_end_147:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_148:
    cmp byte [r9 + r8], 0
    jz loop_end_148
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_148
loop_end_148:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_149:
    cmp byte [r9 + r8], 0
    jz loop_end_149
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_149
loop_end_149:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_150:
    cmp byte [r9 + r8], 0
    jz loop_end_150
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_150
loop_end_150:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_151:
    cmp byte [r9 + r8], 0
    jz loop_end_151
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_151
loop_end_151:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_152:
    cmp byte [r9 + r8], 0
    jz loop_end_152
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_152
loop_end_152:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_153:
    cmp byte [r9 + r8], 0
    jz loop_end_153
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_153
loop_end_153:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_154:
    cmp byte [r9 + r8], 0
    jz loop_end_154
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_154
loop_end_154:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_155:
    cmp byte [r9 + r8], 0
    jz loop_end_155
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_155
loop_end_155:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_156:
    cmp byte [r9 + r8], 0
    jz loop_end_156
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_156
loop_end_156:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_157:
    cmp byte [r9 + r8], 0
    jz loop_end_157
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_157
loop_end_157:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_158:
    cmp byte [r9 + r8], 0
    jz loop_end_158
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_158
loop_end_158:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_159:
    cmp byte [r9 + r8], 0
    jz loop_end_159
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_159
loop_end_159:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_160:
    cmp byte [r9 + r8], 0
    jz loop_end_160
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_160
loop_end_160:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_161:
    cmp byte [r9 + r8], 0
    jz loop_end_161
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_161
loop_end_161:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_162:
    cmp byte [r9 + r8], 0
    jz loop_end_162
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_162
loop_end_162:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_163:
    cmp byte [r9 + r8], 0
    jz loop_end_163
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_163
loop_end_163:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_164:
    cmp byte [r9 + r8], 0
    jz loop_end_164
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_164
loop_end_164:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_165:
    cmp byte [r9 + r8], 0
    jz loop_end_165
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_165
loop_end_165:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_166:
    cmp byte [r9 + r8], 0
    jz loop_end_166
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_166
loop_end_166:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_167:
    cmp byte [r9 + r8], 0
    jz loop_end_167
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_167
loop_end_167:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_168:
    cmp byte [r9 + r8], 0
    jz loop_end_168
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_168
loop_end_168:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_169:
    cmp byte [r9 + r8], 0
    jz loop_end_169
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_169
loop_end_169:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_170:
    cmp byte [r9 + r8], 0
    jz loop_end_170
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_170
loop_end_170:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_171:
    cmp byte [r9 + r8], 0
    jz loop_end_171
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_171
loop_end_171:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_172:
    cmp byte [r9 + r8], 0
    jz loop_end_172
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_172
loop_end_172:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_173:
    cmp byte [r9 + r8], 0
    jz loop_end_173
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_173
loop_end_173:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_174:
    cmp byte [r9 + r8], 0
    jz loop_end_174
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_174
loop_end_174:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_175:
    cmp byte [r9 + r8], 0
    jz loop_end_175
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_175
loop_end_175:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_176:
    cmp byte [r9 + r8], 0
    jz loop_end_176
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_176
loop_end_176:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_177:
    cmp byte [r9 + r8], 0
    jz loop_end_177
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_177
loop_end_177:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_178:
    cmp byte [r9 + r8], 0
    jz loop_end_178
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_178
loop_end_178:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_179:
    cmp byte [r9 + r8], 0
    jz loop_end_179
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_179
loop_end_179:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_180:
    cmp byte [r9 + r8], 0
    jz loop_end_180
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_180
loop_end_180:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_181:
    cmp byte [r9 + r8], 0
    jz loop_end_181
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_181
loop_end_181:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_182:
    cmp byte [r9 + r8], 0
    jz loop_end_182
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_182
loop_end_182:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_183:
    cmp byte [r9 + r8], 0
    jz loop_end_183
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_183
loop_end_183:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_184:
    cmp byte [r9 + r8], 0
    jz loop_end_184
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_184
loop_end_184:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_185:
    cmp byte [r9 + r8], 0
    jz loop_end_185
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_185
loop_end_185:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    call read_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_186:
    cmp byte [r9 + r8], 0
    jz loop_end_186
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_186
loop_end_186:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
loop_start_187:
    cmp byte [r9 + r8], 0
    jz loop_end_187
    sub byte [r9 + r8], 1
loop_start_188:
    cmp byte [r9 + r8], 0
    jz loop_end_188
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    jmp loop_start_188
loop_end_188:
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    jmp loop_start_187
loop_end_187:
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
loop_start_189:
    cmp byte [r9 + r8], 0
    jz loop_end_189
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
loop_start_190:
    cmp byte [r9 + r8], 0
    jz loop_end_190
    sub byte [r9 + r8], 1
    jmp loop_start_190
loop_end_190:
    inc r8
    and r8, 0xFFF
loop_start_191:
    cmp byte [r9 + r8], 0
    jz loop_end_191
    sub byte [r9 + r8], 1
    jmp loop_start_191
loop_end_191:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_192:
    cmp byte [r9 + r8], 0
    jz loop_end_192
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_192
loop_end_192:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_193:
    cmp byte [r9 + r8], 0
    jz loop_end_193
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_193
loop_end_193:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_194:
    cmp byte [r9 + r8], 0
    jz loop_end_194
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_194
loop_end_194:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_195:
    cmp byte [r9 + r8], 0
    jz loop_end_195
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_195
loop_end_195:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_196:
    cmp byte [r9 + r8], 0
    jz loop_end_196
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_196
loop_end_196:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_197:
    cmp byte [r9 + r8], 0
    jz loop_end_197
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_197
loop_end_197:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_198:
    cmp byte [r9 + r8], 0
    jz loop_end_198
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_198
loop_end_198:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_199:
    cmp byte [r9 + r8], 0
    jz loop_end_199
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_199
loop_end_199:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_200:
    cmp byte [r9 + r8], 0
    jz loop_end_200
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_200
loop_end_200:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_201:
    cmp byte [r9 + r8], 0
    jz loop_end_201
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_201
loop_end_201:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_202:
    cmp byte [r9 + r8], 0
    jz loop_end_202
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_202
loop_end_202:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_203:
    cmp byte [r9 + r8], 0
    jz loop_end_203
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_203
loop_end_203:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_204:
    cmp byte [r9 + r8], 0
    jz loop_end_204
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_204
loop_end_204:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_205:
    cmp byte [r9 + r8], 0
    jz loop_end_205
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_205
loop_end_205:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_206:
    cmp byte [r9 + r8], 0
    jz loop_end_206
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_206
loop_end_206:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_207:
    cmp byte [r9 + r8], 0
    jz loop_end_207
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_207
loop_end_207:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_208:
    cmp byte [r9 + r8], 0
    jz loop_end_208
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_208
loop_end_208:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_209:
    cmp byte [r9 + r8], 0
    jz loop_end_209
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_209
loop_end_209:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
loop_start_210:
    cmp byte [r9 + r8], 0
    jz loop_end_210
    sub byte [r9 + r8], 1
    jmp loop_start_210
loop_end_210:
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    dec r8
    and r8, 0xFFF
    jmp loop_start_189
loop_end_189:
    dec r8
    and r8, 0xFFF
loop_start_211:
    cmp byte [r9 + r8], 0
    jz loop_end_211
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
loop_start_212:
    cmp byte [r9 + r8], 0
    jz loop_end_212
    sub byte [r9 + r8], 1
    jmp loop_start_212
loop_end_212:
    inc r8
    and r8, 0xFFF
loop_start_213:
    cmp byte [r9 + r8], 0
    jz loop_end_213
    sub byte [r9 + r8], 1
    jmp loop_start_213
loop_end_213:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_214:
    cmp byte [r9 + r8], 0
    jz loop_end_214
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_214
loop_end_214:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_215:
    cmp byte [r9 + r8], 0
    jz loop_end_215
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_215
loop_end_215:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_216:
    cmp byte [r9 + r8], 0
    jz loop_end_216
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_216
loop_end_216:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_217:
    cmp byte [r9 + r8], 0
    jz loop_end_217
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_217
loop_end_217:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_218:
    cmp byte [r9 + r8], 0
    jz loop_end_218
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_218
loop_end_218:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_219:
    cmp byte [r9 + r8], 0
    jz loop_end_219
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_219
loop_end_219:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_220:
    cmp byte [r9 + r8], 0
    jz loop_end_220
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_220
loop_end_220:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_221:
    cmp byte [r9 + r8], 0
    jz loop_end_221
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_221
loop_end_221:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_222:
    cmp byte [r9 + r8], 0
    jz loop_end_222
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_222
loop_end_222:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_223:
    cmp byte [r9 + r8], 0
    jz loop_end_223
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_223
loop_end_223:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_224:
    cmp byte [r9 + r8], 0
    jz loop_end_224
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_224
loop_end_224:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_225:
    cmp byte [r9 + r8], 0
    jz loop_end_225
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_225
loop_end_225:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_226:
    cmp byte [r9 + r8], 0
    jz loop_end_226
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_226
loop_end_226:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_227:
    cmp byte [r9 + r8], 0
    jz loop_end_227
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_227
loop_end_227:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_228:
    cmp byte [r9 + r8], 0
    jz loop_end_228
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_228
loop_end_228:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_229:
    cmp byte [r9 + r8], 0
    jz loop_end_229
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_229
loop_end_229:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_230:
    cmp byte [r9 + r8], 0
    jz loop_end_230
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_230
loop_end_230:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_231:
    cmp byte [r9 + r8], 0
    jz loop_end_231
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_231
loop_end_231:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_232:
    cmp byte [r9 + r8], 0
    jz loop_end_232
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_232
loop_end_232:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_233:
    cmp byte [r9 + r8], 0
    jz loop_end_233
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_233
loop_end_233:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_234:
    cmp byte [r9 + r8], 0
    jz loop_end_234
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_234
loop_end_234:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_235:
    cmp byte [r9 + r8], 0
    jz loop_end_235
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_235
loop_end_235:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_236:
    cmp byte [r9 + r8], 0
    jz loop_end_236
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_236
loop_end_236:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_237:
    cmp byte [r9 + r8], 0
    jz loop_end_237
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_237
loop_end_237:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_238:
    cmp byte [r9 + r8], 0
    jz loop_end_238
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_238
loop_end_238:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_239:
    cmp byte [r9 + r8], 0
    jz loop_end_239
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_239
loop_end_239:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    dec r8
    and r8, 0xFFF
    jmp loop_start_211
loop_end_211:
    add byte [r9 + r8], 1
loop_start_240:
    cmp byte [r9 + r8], 0
    jz loop_end_240
    sub byte [r9 + r8], 1
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    jmp loop_start_240
loop_end_240:
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
loop_start_241:
    cmp byte [r9 + r8], 0
    jz loop_end_241
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
loop_start_242:
    cmp byte [r9 + r8], 0
    jz loop_end_242
    sub byte [r9 + r8], 1
    jmp loop_start_242
loop_end_242:
    inc r8
    and r8, 0xFFF
loop_start_243:
    cmp byte [r9 + r8], 0
    jz loop_end_243
    sub byte [r9 + r8], 1
    jmp loop_start_243
loop_end_243:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_244:
    cmp byte [r9 + r8], 0
    jz loop_end_244
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_244
loop_end_244:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_245:
    cmp byte [r9 + r8], 0
    jz loop_end_245
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_245
loop_end_245:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_246:
    cmp byte [r9 + r8], 0
    jz loop_end_246
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_246
loop_end_246:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_247:
    cmp byte [r9 + r8], 0
    jz loop_end_247
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_247
loop_end_247:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_248:
    cmp byte [r9 + r8], 0
    jz loop_end_248
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_248
loop_end_248:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_249:
    cmp byte [r9 + r8], 0
    jz loop_end_249
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_249
loop_end_249:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_250:
    cmp byte [r9 + r8], 0
    jz loop_end_250
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_250
loop_end_250:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_251:
    cmp byte [r9 + r8], 0
    jz loop_end_251
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_251
loop_end_251:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_252:
    cmp byte [r9 + r8], 0
    jz loop_end_252
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_252
loop_end_252:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_253:
    cmp byte [r9 + r8], 0
    jz loop_end_253
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_253
loop_end_253:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_254:
    cmp byte [r9 + r8], 0
    jz loop_end_254
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_254
loop_end_254:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_255:
    cmp byte [r9 + r8], 0
    jz loop_end_255
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_255
loop_end_255:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    jmp loop_start_241
loop_end_241:
    add byte [r9 + r8], 1
loop_start_256:
    cmp byte [r9 + r8], 0
    jz loop_end_256
    sub byte [r9 + r8], 1
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    jmp loop_start_256
loop_end_256:
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
loop_start_257:
    cmp byte [r9 + r8], 0
    jz loop_end_257
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
loop_start_258:
    cmp byte [r9 + r8], 0
    jz loop_end_258
    sub byte [r9 + r8], 1
    jmp loop_start_258
loop_end_258:
    inc r8
    and r8, 0xFFF
loop_start_259:
    cmp byte [r9 + r8], 0
    jz loop_end_259
    sub byte [r9 + r8], 1
    jmp loop_start_259
loop_end_259:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_260:
    cmp byte [r9 + r8], 0
    jz loop_end_260
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_260
loop_end_260:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_261:
    cmp byte [r9 + r8], 0
    jz loop_end_261
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_261
loop_end_261:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_262:
    cmp byte [r9 + r8], 0
    jz loop_end_262
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_262
loop_end_262:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_263:
    cmp byte [r9 + r8], 0
    jz loop_end_263
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_263
loop_end_263:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_264:
    cmp byte [r9 + r8], 0
    jz loop_end_264
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_264
loop_end_264:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_265:
    cmp byte [r9 + r8], 0
    jz loop_end_265
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_265
loop_end_265:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_266:
    cmp byte [r9 + r8], 0
    jz loop_end_266
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_266
loop_end_266:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_267:
    cmp byte [r9 + r8], 0
    jz loop_end_267
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_267
loop_end_267:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_268:
    cmp byte [r9 + r8], 0
    jz loop_end_268
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_268
loop_end_268:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_269:
    cmp byte [r9 + r8], 0
    jz loop_end_269
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_269
loop_end_269:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_270:
    cmp byte [r9 + r8], 0
    jz loop_end_270
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_270
loop_end_270:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_271:
    cmp byte [r9 + r8], 0
    jz loop_end_271
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_271
loop_end_271:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    jmp loop_start_257
loop_end_257:
    add byte [r9 + r8], 1
loop_start_272:
    cmp byte [r9 + r8], 0
    jz loop_end_272
    sub byte [r9 + r8], 1
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    jmp loop_start_272
loop_end_272:
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
loop_start_273:
    cmp byte [r9 + r8], 0
    jz loop_end_273
    sub byte [r9 + r8], 1
    jmp loop_start_273
loop_end_273:
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
loop_start_274:
    cmp byte [r9 + r8], 0
    jz loop_end_274
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    jmp loop_start_274
loop_end_274:
    add byte [r9 + r8], 1
loop_start_275:
    cmp byte [r9 + r8], 0
    jz loop_end_275
    sub byte [r9 + r8], 1
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    jmp loop_start_275
loop_end_275:
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
loop_start_276:
    cmp byte [r9 + r8], 0
    jz loop_end_276
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    jmp loop_start_276
loop_end_276:
    add byte [r9 + r8], 1
loop_start_277:
    cmp byte [r9 + r8], 0
    jz loop_end_277
    sub byte [r9 + r8], 1
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    jmp loop_start_277
loop_end_277:
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
loop_start_278:
    cmp byte [r9 + r8], 0
    jz loop_end_278
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    dec r8
    and r8, 0xFFF
    jmp loop_start_278
loop_end_278:
    dec r8
    and r8, 0xFFF
loop_start_279:
    cmp byte [r9 + r8], 0
    jz loop_end_279
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
loop_start_280:
    cmp byte [r9 + r8], 0
    jz loop_end_280
    sub byte [r9 + r8], 1
    jmp loop_start_280
loop_end_280:
    jmp loop_start_279
loop_end_279:
    add byte [r9 + r8], 1
loop_start_281:
    cmp byte [r9 + r8], 0
    jz loop_end_281
    sub byte [r9 + r8], 1
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    jmp loop_start_281
loop_end_281:
    sub byte [r9 + r8], 1
    dec r8
    and r8, 0xFFF
    call read_char
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    jmp loop_start_75
loop_end_75:
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
    dec r8
    and r8, 0xFFF
loop_start_282:
    cmp byte [r9 + r8], 0
    jz loop_end_282
    sub byte [r9 + r8], 1
    jmp loop_start_282
loop_end_282:
    inc r8
    and r8, 0xFFF
loop_start_283:
    cmp byte [r9 + r8], 0
    jz loop_end_283
    sub byte [r9 + r8], 1
    jmp loop_start_283
loop_end_283:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
loop_start_284:
    cmp byte [r9 + r8], 0
    jz loop_end_284
loop_start_285:
    cmp byte [r9 + r8], 0
    jz loop_end_285
    sub byte [r9 + r8], 1
    jmp loop_start_285
loop_end_285:
    inc r8
    and r8, 0xFFF
loop_start_286:
    cmp byte [r9 + r8], 0
    jz loop_end_286
    sub byte [r9 + r8], 1
    jmp loop_start_286
loop_end_286:
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_287:
    cmp byte [r9 + r8], 0
    jz loop_end_287
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_287
loop_end_287:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_288:
    cmp byte [r9 + r8], 0
    jz loop_end_288
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_288
loop_end_288:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_289:
    cmp byte [r9 + r8], 0
    jz loop_end_289
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_289
loop_end_289:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_290:
    cmp byte [r9 + r8], 0
    jz loop_end_290
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_290
loop_end_290:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_291:
    cmp byte [r9 + r8], 0
    jz loop_end_291
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_291
loop_end_291:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_292:
    cmp byte [r9 + r8], 0
    jz loop_end_292
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_292
loop_end_292:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_293:
    cmp byte [r9 + r8], 0
    jz loop_end_293
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_293
loop_end_293:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
loop_start_294:
    cmp byte [r9 + r8], 0
    jz loop_end_294
    sub byte [r9 + r8], 1
    jmp loop_start_294
loop_end_294:
    jmp loop_start_284
loop_end_284:
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
loop_start_295:
    cmp byte [r9 + r8], 0
    jz loop_end_295
loop_start_296:
    cmp byte [r9 + r8], 0
    jz loop_end_296
    sub byte [r9 + r8], 1
    jmp loop_start_296
loop_end_296:
    inc r8
    and r8, 0xFFF
loop_start_297:
    cmp byte [r9 + r8], 0
    jz loop_end_297
    sub byte [r9 + r8], 1
    jmp loop_start_297
loop_end_297:
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_298:
    cmp byte [r9 + r8], 0
    jz loop_end_298
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_298
loop_end_298:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_299:
    cmp byte [r9 + r8], 0
    jz loop_end_299
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_299
loop_end_299:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_300:
    cmp byte [r9 + r8], 0
    jz loop_end_300
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_300
loop_end_300:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_301:
    cmp byte [r9 + r8], 0
    jz loop_end_301
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_301
loop_end_301:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_302:
    cmp byte [r9 + r8], 0
    jz loop_end_302
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_302
loop_end_302:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_303:
    cmp byte [r9 + r8], 0
    jz loop_end_303
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_303
loop_end_303:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
loop_start_304:
    cmp byte [r9 + r8], 0
    jz loop_end_304
    sub byte [r9 + r8], 1
    jmp loop_start_304
loop_end_304:
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    jmp loop_start_295
loop_end_295:
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
    inc r8
    and r8, 0xFFF
loop_start_305:
    cmp byte [r9 + r8], 0
    jz loop_end_305
loop_start_306:
    cmp byte [r9 + r8], 0
    jz loop_end_306
    sub byte [r9 + r8], 1
    jmp loop_start_306
loop_end_306:
    inc r8
    and r8, 0xFFF
loop_start_307:
    cmp byte [r9 + r8], 0
    jz loop_end_307
    sub byte [r9 + r8], 1
    jmp loop_start_307
loop_end_307:
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_308:
    cmp byte [r9 + r8], 0
    jz loop_end_308
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_308
loop_end_308:
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_309:
    cmp byte [r9 + r8], 0
    jz loop_end_309
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_309
loop_end_309:
    dec r8
    and r8, 0xFFF
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_310:
    cmp byte [r9 + r8], 0
    jz loop_end_310
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_310
loop_end_310:
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_311:
    cmp byte [r9 + r8], 0
    jz loop_end_311
    dec r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_311
loop_end_311:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_312:
    cmp byte [r9 + r8], 0
    jz loop_end_312
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_312
loop_end_312:
    dec r8
    and r8, 0xFFF
    call print_char
    inc r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
loop_start_313:
    cmp byte [r9 + r8], 0
    jz loop_end_313
    dec r8
    and r8, 0xFFF
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    inc r8
    and r8, 0xFFF
    sub byte [r9 + r8], 1
    jmp loop_start_313
loop_end_313:
    dec r8
    and r8, 0xFFF
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    sub byte [r9 + r8], 1
    call print_char
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    add byte [r9 + r8], 1
    call print_char
loop_start_314:
    cmp byte [r9 + r8], 0
    jz loop_end_314
    sub byte [r9 + r8], 1
    jmp loop_start_314
loop_end_314:
    jmp loop_start_305
loop_end_305:

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
