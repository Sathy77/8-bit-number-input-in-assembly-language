MOV AH, 1     ;Input jabe AL er kache
INT 21H

SUB AL, 48     
MOV CL, 3
MUL CL
  
MOV DX, AX      ;Miltiple result "AX" fixed
ADD DX, 48  
MOV AH, 2
INT 21H