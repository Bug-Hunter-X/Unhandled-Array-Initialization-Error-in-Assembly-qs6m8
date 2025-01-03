```assembly
section .data
    array dw 10, 20, 30, 40, 50
    array_length equ $-array ; Calculate the length of the array

section .text
    global _start

_start:
    ; Calculate the sum of elements in the array
    mov esi, array ; Point ESI to the beginning of the array
    mov ecx, array_length ; Number of elements to process
    mov eax, 0 ; Initialize sum to 0

loop_start:
    add ax, [esi] ; Add current element to the sum
    add esi, 2 ; Move to the next element (2 bytes per element)
    loop loop_start

    ; Exit the program
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80
```