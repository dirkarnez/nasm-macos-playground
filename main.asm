section .data
    hello db 'Hello, World!', 0

section .text
    global _start

_start:
    ; write the string to STDOUT
    mov rax, 1                  ; syscall number for write
    mov rdi, 1                  ; file descriptor for STDOUT
    mov rsi, hello              ; address of the string
    mov rdx, 13                 ; length of the string
    syscall

    ; exit the program
    mov rax, 60                 ; syscall number for exit
    xor rdi, rdi                ; exit status code 0
    syscall
