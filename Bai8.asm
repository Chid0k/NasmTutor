; nhập chuỗi kí tự, in ra từng dòng
;./Bai8 101 102 103

%include    'Fprint.asm'

section .text
global _start

_start:
    pop ecx ; ecx lưu giá trị nhập vào.
    ; ecx lấy giá trị đầu tiên của stack.

WhileInp:
    cmp ecx, 0h
    jz _end
    pop eax
    call prtln
    dec ecx
    jmp WhileInp

_end:
    call quit