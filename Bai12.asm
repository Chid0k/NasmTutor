; add number
%include    'Fprint.asm'

section .text
global _start

_start:
    mov eax, 34 ;
    mov ebx, 78 ;
    add eax, ebx
    call prtnumln

call quit