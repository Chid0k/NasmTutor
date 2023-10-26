section .data
msg db "Subeoutines", 0Ah

section .text
global  _start
_start:
    mov eax, msg ;
    call count ; gọi hàm đếm
    
    mov edx, eax ;
    mov ecx, msg ;
    mov ebx, 1 ;
    mov eax, 4 ;
    int 80h ;

    mov ebx, 0 ;
    mov eax, 1 ;
    int 80h ;

count:
    push ebx ;
    mov ebx, eax ;
_for:
    cmp byte [eax] , 0 ;
    jna finish ; 
    inc eax ;
    jmp _for ;
finish:
    sub eax, ebx ;
    pop ebx ;
    ret