
;First sum and subtract and then again
;   sum and subtract


org 100h
include emu8086.inc


mov ah,01h
int 21h

mov bl,al
sub bl,48 

print '+'
mov ah,01h
int 21h 


add bl,al 

mov dl,bl 

print ' = '
mov ah,02h ;Printing 1st Addition 
int 21h

print '-'

mov ah,01h
int 21h


sub al,48
sub dl,al

print ' = '
mov ah,02h ;Printing 1st Subtraction 
int 21h
  
print '+'
mov bl,al

mov ah,01h
int 21h

sub al,48 


add bl,al
mov dl,bl

print ' = '
mov ah,02h ;Printing 2nd Addition 
int 21h
print '-'
mov ah,01h
int 21h


sub al,48
sub dl,al

print ' = '
mov ah,02h ;Printing 2nd Subtraction 
int 21h 


ret




