extern  GetStdHandle
extern  WriteConsoleA
extern  ExitProcess

section .data
    msg db  'Hello, World!', 0xA
    len equ $ - msg
    dummy dd 0

section .text
    global _main

_main:
    push    -11
    call    GetStdHandle

    push    0
    push    dummy
    push    len
    push    msg
    push    eax
    call    WriteConsoleA

    push    0
    call    ExitProcess