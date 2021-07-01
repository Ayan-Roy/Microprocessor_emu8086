; A program to find even position and then
; add 1 & subtract 2

org 100h

include 'emu8086.inc'
print 'Enter the length: '

mov ah,1h
int 21h
printn

mov cl, al
sub cl, '0'
mov dl, cl
mov bx,0
print 'Enter numbers: '

Input:
    mov ah, 1h
    int 21h
    
    mov [bx], ax
    inc bx
    dec cl
    cmp cl, 0
    jne Input
    
mov cl, dl
mov bx, 0        ;starting from Odd position of the array

printn
print 'Output: '

Output:     
    mov dl, [bx] ;picking Odd position value
    inc dl       ;Add 1
    sub dl, 2    ;Subtract 2
    mov ah, 2h
    int 21h
    
    inc bx    
    inc bx       ;go to next Odd position
    sub cl, 2    ;decrement 2 of the loop counter 
    
    cmp cl, 0
    jge Output
        
mov ax, 4c00h
int 21h
ret




