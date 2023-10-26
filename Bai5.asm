%include        'Fprint.asm'     

section .data
msg db "Line 1 !!!", 0ah ;
msg1 db "Line 2 !!!", 0ah ;

section .text
global _start

_start:
    mov eax, msg ;
    call prt ;

    mov eax, msg1 ;
    call prt ;

    call quit ;