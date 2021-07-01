
;Even and Odd number detector


org 100h

include 'emu8086.inc'

print 'How numbers to find Even & Odd: '

mov ah,01h
int 21h

mov cl,al

printn
print 'Enter numbers: ' 
printn

input:
mov ah,01h
int 21h
    
mov ah,0    
mov dl,2
div dl
    
cmp ah,0 
je isEven

print ' is Odd number.'
printn

dec cl
cmp cl, '0'
jne input

mov ax, 4c00h    
int 21h 


    
isEven:

print ' is Even number.' 
printn

dec cl
cmp cl, '0'
jne input
 
mov ax, 4c00h    
int 21h     

    

ret




