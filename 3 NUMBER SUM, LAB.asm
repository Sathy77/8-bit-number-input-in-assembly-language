.MODEL SMALL
.STACK 100H
.DATA 
    A DB 1
    B DB 2
    C DB 3
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX 
        
        MOV AH, A 
        ADD AH, 48
        MOV AL, B 
        ADD AL, 48
 
        ADD AH, AL 
        SUB AH, 48
      
        MOV AL, C 
        ADD AL, 48
        ADD AH, AL 
        SUB AH, 48
        MOV A, AH 
        
        MOV AH, 2
        MOV DL, A
        INT 21H
        
        MOV AH, 4CH
        INT 21H
        
    MAIN ENDP
END MAIN