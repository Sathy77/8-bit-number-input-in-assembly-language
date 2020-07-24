.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC  
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
    
    
    CMP DL, 255
    JE OK 
    
    
    MOV AH, 2
    MOV DL, 'N'
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
    
    OK:
    MOV AH, 2
    MOV DL, 'Y'
    INT 21H
    
    
    MOV AH, 4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN   

;After take input, press spece
