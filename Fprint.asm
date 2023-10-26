; Tính độ dài xâu -> eax
lgth:
    push ebx ;
    mov ebx, eax;
_for:
    cmp byte [eax], 0 ;
    jna _finish ;
    inc eax ;
    jmp _for
_finish:
    sub eax, ebx ;
    pop ebx ;
    ret

prt:
    push edx ;
    push ecx ;
    push ebx ;
    push eax ;
    call lgth ; tính độ dài chuỗi -> lưu vào eax

    mov edx, eax ; Độ dài chuỗi lưu vào edx
    pop eax ;
    ; eax nhận giá trị trước khi call đến từ hàm ngoài.
    mov ecx, eax ; 
    mov ebx, 1 ;
    mov eax, 4 ; in ra man hình
    int 80h

    pop ebx ;
    pop ecx ;
    pop edx ;
    ret

prtln:
    call prt ; in chuỗi
    ; in linefeed
    push eax
    mov eax, 0ah 
        push eax ; eax chứa 0ah trong stack
        mov eax, esp ; lấy địa chỉ stack lưu vào eax
        call prt ; in giá trị eax hiện tại ( chứa 0ah)
        pop eax ; trả về giá trị eax ban đầu
    ; không thể push trực tiếp 0ah vào stack
    pop eax
    ret

quit:
    mov     ebx, 0
    mov     eax, 1
    int     80h
    ret
