;-------nasm's standalone helo.asm for linux------
section .text
extern puts
global main

main:
push dword msg
call puts;
add esp,byte 4
ret;

msg:
    db "Hello World!", 0
    
    
