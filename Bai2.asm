section .data
msg db "Hello world", 0ah ; Khai bao bien msg = chuoi + ki tu ket thuc dong

section .text
_start:
   mov edx, 12 ; số byte cần ghi + kí tự kết thúc
   mov ecx, msg ; ghi địa chỉ bộ nhớ msg vào thghi ecx
   mov ebx, 1 ; write STDOUT file
   mov eax, 4 ; Sys_write (kernel opcode)
   int 80h
    ; kết thúc phân đoạn
   mov ebx, 0 ;
   mov eax, 1 ; Sys_exit
   int 80h

global _start