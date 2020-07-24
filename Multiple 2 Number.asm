MOV AL, 3      ;FIXED
MOV CL, 3
MUL CL
  
MOV DX, AX      ;Miltiple result "AX" fixed
ADD DX, 48  
MOV AH, 2
INT 21H