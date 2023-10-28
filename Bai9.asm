;input user
%include 'Fprint.asm'
section .bss
str:    resb 255 ; biến str max 255 byte

section .data
msg     db  "Enter your name: ", 0h
msg1    db  "Welcome: ", 0h

section .text
global _start

_start:
    mov eax, msg
    call prt

    ; nhập vào từ bàn phím call eax = 3
    mov edx, 255 ; chứa độ dài tối đa ủa chuỗi nhập vào
    mov ecx, str
    mov ebx, 0 ; read stdin file
    mov eax, 3 ; system call 
    int 80h

    mov eax, msg1
    call prt

    mov eax, ecx
    call prt
call quit

; => chuỗi nhập vào có thêm '\n'