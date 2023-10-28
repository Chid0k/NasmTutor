%include 'Fprint.asm'

section .data
msg db "Line 1 Endline1", 0h
msg1 db "Line 2 Endline2", 0h

section .text
global _start

_start:
    mov eax, msg ;
    call prtspace

    mov eax, msg1 ;
    call prtspace

call quit