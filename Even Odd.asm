;Take 3 number from user and the sum of these 3 number is even or not?


.MODEL SMAL
.STACK 100H
.DATA 
MSG1 DB 'Sum is a Even Number $'
MSG2 DB 'Sum is a Odd Number: $' 



.CODE
MAIN PROC 
    
        MOV AX, @DATA     
        MOV DS, AX


        MOV AH, 1
        INT 21H

        MOV BH, AL 
        SUB BH, 48   

        INT 21H

        MOV BL, AL
        SUB BL, 48

        ADD BH, BL

        INT 21H
        SUB AL, 48
              
        ADD BH, AL

        MOV BL, BH
        MOV BH, 0

        MOV AX, BX 
        MOV CL, 2

        DIV CL 
        CMP AH, 0
        JE ABC  


        MOV AH, 2
        MOV DL, 13     ;NEW LINE
        INT 21H
        MOV DL, 10
        INT 21H 
       


        MOV AH, 9
        LEA DX, MSG1    
        INT 21H

        MOV AH, 4CH
        INT 21H

        ABC:
        MOV AH, 2
        MOV DL, 13     ;NEW LINE
        INT 21H
        MOV DL, 10
        INT 21H 
       


        MOV AH, 9
        LEA DX, MSG1    
        INT 21H

        MOV AH, 4CH
        INT 21H 

    MAIN ENDP
END MAIN

