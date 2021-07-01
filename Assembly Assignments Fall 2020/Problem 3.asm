
;Find Maximum number and Find Minimum number


include 'emu8086.inc'  


;>>>>>> Finding Maximum <<<<<<<


 print 'How many Numbers for find Max: '
 mov ah, 01h
 int 21h  
 printn  
 
 printn
 print "Enter Numbers: "   
 mov dx, ax 
 sub dl, '0'
 mov cl, dl 
 mov bx, 0   
 
 input1:
 mov ah, 01h
 int 21h    
 mov [bx], ax
 printn
 
 inc bx
 dec cl
 cmp cl, 0   
 jne input1
  
         
 mov cl, dl
 
 mov dl, [0]
 mov bx, 0 
 
 Max: 
 mov al, [bx]
 cmp al, dl   
 jg swap   		
 jle next

 swap:
 mov dl, al
 
 next: 
 inc bx 
 loop Max:
 
 printn 
 print "Max is:"
 mov ah, 02h
 int 21h 
  
  
 ;>>>>>> Finding Minimum <<<<<<
 
 printn   
 print 'How many Numbers for find Min: '
 mov ah, 01h
 int 21h  
 
 
 printn
 print "Enter Numbers: "   
 mov dx, ax 
 sub dl, '0'
 mov cl, dl 
 mov bx, 0   
 
 input2:
 mov ah, 01h
 int 21h    
 mov [bx], ax
 printn
 inc bx
 dec cl
 cmp cl, 0   
 jne input2   
 printn  
       
 mov cl, dl
 mov dl, [0] 
 
 mov bx, 0 
 
 Min: 
 mov al, [bx]
 cmp al, dl   
 jl swap1   		
 jge next1   
 
 swap1:
 mov dl, al
 
 next1: 
 inc bx 
 loop Min:
  
 print "Min: :"
 mov ah, 02h
 int 21h
  
 mov ax, 4c00h 
 int 21h
 
 ret