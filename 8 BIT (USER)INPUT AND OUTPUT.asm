.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
    
    ;TAKING INTPUT(MULTIPLE DIGIT)(8 BIT)  
    MOV BL, 0     ;BL=0 
    MOV DL, 0     ;DL=0
    MOV AL, '0'   ;AL=48
    
    ABC:  
    SUB AL, '0'   ;AL=3
    MOV CL, AL    ;CL=3
    MOV AL, DL    ;AL=2
    MOV BL, 10
    MUL BL        ;AX=20, AL=20
    ADD AL, CL    ;AL=23
    MOV DL, AL    ;DL=23
    
    MOV AH, 1     
    INT 21H       ;AL=51
     
    CMP AL, ' '
    JNE ABC
    ;USER TAKEN NUMBER IN DL 
    
    
    MOV CX, 0  ;CX USE FOR NUMBER LENGHT
    MOV AH, 0
    MOV AL, DL
    ;NUMBER HAS BEEN CONVERTED INTO AX
    
    
    PRINT:
    CMP AL, 0 
    
    JE NEXT
    
    MOV BL, 10  
    DIV BL       ;REMIDER=AH, RESULT=AL
    PUSH AX      ;MUST PUSH 16 BIT REGISTER BUT AH WILL STORE IN STACK
     
    INC CX
    MOV AH, 0 
    
    JMP PRINT
    
    NEXT:
    POP DX     ;MUST USE 16 BIT REGISTER FOR POP BUT THE VALUE COME IN High Register
    MOV DL, DH
    ADD DL, '0'
    MOV AH, 2
    INT 21H
    LOOP NEXT 
    
    
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    
    
    
    
    MAIN ENDP
END MAIN
 