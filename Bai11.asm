%include    'Fprint.asm'
section .data
    msg db "Print 1 to 10: ", 0h

section .text
global _start

_start:
    mov eax, msg;
    call prtln

    mov     ecx, 9
 
nextNumber:
    inc     ecx
    mov     eax, ecx
    call    prtnumln   
    cmp     ecx, 100
    jne     nextNumber
 
    call    quit