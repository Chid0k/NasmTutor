section .data
msg db "Calculator string length !!!", 0Ah

section .text
global _start
_start:
    mov eax, msg ; địa chỉ của chuỗi msg vào thanh ghi eax
    mov ebx, msg ;

_for:
    cmp byte [eax] , 0; so sánh kí tự đầu tiên của chuỗi vs kí tự \0 ( ký tự kết thúc )
    jna _print ; 
    inc eax ; nhảy đến ký tự tiếp theo
    jmp _for ; vòng lặp
_print:
    sub eax, ebx ; cuối - đầu lưu vào eax
    mov edx, eax ;
    mov ecx, msg ;
    mov ebx, 1 ;
    mov eax, 4 ;
    int 80h

    mov ebx, 0 ;
    mov eax, 1 ; Sys_exit
    int 80h