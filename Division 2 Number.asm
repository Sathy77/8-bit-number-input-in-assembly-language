MOV AX, 9
MOV CL, 3
DIV CL 

MOV BL, AL 
MOV BH, AH

   
MOV AH, 2
MOV DL, 'R' 
INT 21H
MOV DL, '='
INT 21H 

ADD BL, 48
MOV DL, BL
INT 21H 

MOV DL, 13  
INT 21H 
MOV DL, 10  
INT 21H 

MOV DL, 'V' 
INT 21H
MOV DL, '='
INT 21H 

ADD BH, 48
MOV DL, BH
INT 21H 
