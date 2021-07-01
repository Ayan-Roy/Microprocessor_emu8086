org 100h

MOV AH, 01H
INT 21H

MOV BL, AL   ; take in BL
 
MOV AH, 01H  ; take in AL
INT 21H

       
CMP AL, BL ; 1st input-> BL, 2nd Input-> AL. AL - BL NOT BELOW FROM 0
      
JNBE ELSE        ; jump not below equal   

MOV DL, AL   

JMP DISPLAY

ELSE:
      	MOV DL, BL
      	
DISPLAY: 
        MOV AH, 02H
        INT 21h 
 
ret




