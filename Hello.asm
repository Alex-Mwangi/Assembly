section .data
    msg db 'Hello, world',0

section .text
    global _start

_start:
    ; write the message to stdout
    mov eax, 4         ; syscall number for sys_write
    mov ebx, 1         ; file descriptor 1 (stdout)
    mov ecx, msg       ; pointer to the message
    mov edx, 12       ; message length
    int 0x80           ; call kernel

    ; exit the program
    mov eax, 1         ; syscall number for sys_exit
    xor ebx, ebx       ; exit code 0
    int 0x80           ; call kernel
