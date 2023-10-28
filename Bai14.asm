; mul number
%include    'Fprint.asm'

section .text 
global _start

_start:
    mov eax, 5
    mov ebx, 10
    mul ebx ; nhân eax với ebx, kết quar lưu vào eax
    call prtnumln
call quit