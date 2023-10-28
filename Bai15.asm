; div number
%include    'Fprint.asm'

section .text
global _start

_start:
    mov eax, 54 ;
    mov ebx, 12 ;
    div ebx ; chia eax cho ebx, thương lưu vào eax, dư lưu vào ebx
    call prtnumln
    mov eax, edx
    call prtnumln
call quit