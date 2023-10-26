%include 'Fprint.asm'

section .data
msg db "Line 1 Endline1", 0h
msg1 db "Line 2 Endline2", 0h

section .text
global _start

_start:
    mov eax, msg ;
    call prtln

    mov eax, msg1 ;
    call prtln

call quit