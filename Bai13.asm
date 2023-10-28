;sub numer
%include    'Fprint.asm'

section .text
global _start

_start:
    mov eax, 95
    mov ebx, 14
    sub eax, ebx
    call prtnum
call quit
