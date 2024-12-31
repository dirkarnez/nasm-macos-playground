global _main

section .text

_main:
    mov rax, 0x2000004      ; syscall 4: write (
    mov rdi, 1              ;    fd,
    mov     rsi, hello_world        ; cbuf
    mov     rdx, hello_world.len    ; nbyte
    syscall                 ; )

    mov     rax, 0x2000001          ; syscall 1: exit (
    mov     rdi, 0                 ;    retcode
    syscall    ; )

section .data

hello_world: db "Hello World!", 10
.len: equ $ - hello_world
