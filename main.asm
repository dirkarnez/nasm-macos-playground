global _main

section .text

_main:
    ; amd64abi args passed on rdi, rsi, rdx, r10, r8 and r9
    ; syscall)
    ; https://github.com/opensource-apple/xnu/blob/master/bsd/kern/syscalls.master
    ; 1	AUE_EXIT	ALL	{ void exit(int rval) NO_SYSCALL_STUB; } 
    ; 4	AUE_NULL	ALL	{ user_ssize_t write(int fd, user_addr_t cbuf, user_size_t nbyte); } 
    movq      0x2000004, rax          ; 'write' syscall 4 + 0x20000000
    movq      1, rdi                  ; fd=1=stdout
    movq      hello_world, rsi        ; cbuf
    movq      hello_world.len, rdx    ; nbyte
    syscall

    movq      0x2000001, rax          ; 'exit' syscall 4 + 0x20000000
    movq      0, rdi                  ; exit code 0
    syscall

section .data

hello_world: db "Hello World!", 10
.len: equ $ - hello_world
