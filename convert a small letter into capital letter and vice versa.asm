;Convert captal latter to small letter and small latter to capital latter.

.MODEL SMAL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
    MOV AH, 1
    INT 21H 
    
    MOV BL, AL
    CMP BL, 91
    JL abc
    
    
    SUB BL, 32 
    MOV AH, 2
    
    MOV DL, 13
    INT 21H
    MOV DL, 10
    INT 21H 
    
    MOV DL, BL
    INT 21H
    JMP EXID
    
    abc:
    ADD BL, 32 
    MOV AH, 2
    
    MOV DL, 13
    INT 21H
    MOV DL, 10
    INT 21H 
    
    MOV DL, BL
    INT 21H
    JMP EXID
    
    
    EXID:
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN