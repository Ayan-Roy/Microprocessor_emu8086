
;Decimal to Octal convert


org 100h

include 'emu8086.inc'

print 'Enter a Decimal number:'
mov ah,01h
int 21h
printn


sub al,'0'
mov bx, 0

check:
mov ah,0   
mov dl,8
div dl

mov dl,al
mov al,ah
mov ah,0

push ax

mov al,dl
inc bx
cmp al,0
je lable1
loop check


lable1:
mov cx,bx


print 'Octal number is: '
output:
pop dx
add dx, '0'
mov ah, 02h
int 21h
loop output

printn 
mov ax, 4c00h    
int 21h     

    

ret




