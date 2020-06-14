; Constants
STDIN equ 0
STDOUT equ 1
STDERR equ 2

SYS_READ equ 0
SYS_WRITE equ 1
SYS_EXIT equ 60

; Macros
%macro exit 0
    mov rax, SYS_EXIT
    mov rdi, STDIN
    syscall
%endmacro

%macro readline 2
    mov rax, SYS_READ
    mov rdi, STDIN
    mov rsi, %1
    mov rdx, %2
    syscall
%endmacro

%macro writeline 2
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    mov rsi, %1
    mov rdx, %2
    syscall
%endmacro