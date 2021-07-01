
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

include 'emu8086.inc'
mov bx,0
mov ax,0
print 'Enter nuber(And hit Enter):'

input:
mov ah,01h
int 21h
    
cmp al,13
je label1
    
sub al,'0'
mov [bx], ax
inc bx
loop input
        
label1:
printn 
    
dec bx
mov al, [bx]
    
mov ah,0    
mov dl,2
div dl
    
cmp ah,0
je ans
print 'Not deviseable by 2.'
mov ax, 4c00h 
int 21h
    
ans:
print 'Is deviseable by 2.' 
mov ax, 4c00h    
int 21h     

    

ret




