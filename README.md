nasm-macos-playground
=====================
### ChatGPT
> macOS (Darwin): In macOS, the system call table is not directly accessible from user space. The syscall instruction is used to invoke system calls, and the offset 0x20000000 is added to the system call number to access the correct entry in the system call table. The exact location and structure of the system call table are specific to the macOS kernel implementation.
