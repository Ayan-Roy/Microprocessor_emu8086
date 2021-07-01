;Uppercase to Lowecase and
;Lowercase to Uppercase


include 'emu8086.inc'

 print 'Input Length of Upper String: '
 mov ah,1h
 int 21h  
 printn        
 
 
 print 'Input Enter String Here: '
 mov cl,al 
 sub cl,'0'
 mov dl,cl 
 mov bx,0                 
 
 loop1:
 mov ah,1h
 int 21h 
 mov [bx],ax 
 inc bx  
 dec cl
 cmp cl,0 
 jne loop1  
 printn
 
 mov cl,dl
 mov bx,0 
 
 print 'Output: '
 
 output1: 
 mov dl,[bx]
 cmp dl,'A'
 jge label1 
 
 mov ah,2h
 int 21h
 inc bx   
 dec cl
 cmp cl,0  
 jne output1  
 
 je secoundPart
 
 label1:
 cmp dl,'Z'
 jle func1
 
 func1:
 add dl,32    

 mov ah,2h
 int 21h
 inc bx   
 dec cl
 cmp cl,0  
 jne output1
 printn

 
 ;Converting Lowercase to Uppercase String 
 
 secoundPart:
 
 printn
 printn
 
 print 'Input Length of Lower String: '
 mov ah,1h
 int 21h  
 printn        
 
 
 print 'Input Enter String Here: '
 mov cl,al 
 sub cl,'0'
 mov dl,cl 
 mov bx,0                 
 
 loop2:
 mov ah,1h
 int 21h 
 mov [bx],ax 
 inc bx  
 dec cl
 cmp cl,0 
 jne loop2  
 printn
 
 mov cl,dl
 mov bx,0 
 
 print 'Output: '
 
 output2: 
 mov dl,[bx]
 cmp dl,'a'
 jge label2 
 
 mov ah,2h
 int 21h
 inc bx   
 dec cl
 cmp cl,0  
 jne output2  
 
 mov ax, 4c00h
 int 21h
 
 label2:
 cmp dl,'z'
 jle func2
 
 func2:
 sub dl,32    

 mov ah,2h
 int 21h
 inc bx   
 dec cl
 cmp cl,0  
 jne output2
 printn
 
 mov ax, 4c00h
 int 21h
 
 ret