%include    'Fprint.asm'
section .data
    msg db  "Count 1 to 10:", 0h

section .text
global _start

_start:
    mov eax, msg
    call prtln
    mov ecx , 48 ; khởi tạo biến đếm kí tự '0'

ForCount:
    add ecx, 1
    mov eax, ecx
    push eax
        mov eax, esp ; lấy địa chỉ , kông thể lấy được giá trị.
        call prtln ;
    pop eax
    cmp ecx, 58 ; so sánh với số 10 = ':'
    jne ForCount
call quit