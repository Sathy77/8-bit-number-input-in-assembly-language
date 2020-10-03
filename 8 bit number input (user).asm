.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC  
    MOV BL, 0    
    MOV DL, 0     
    MOV AL, '0'   
    
    ABC:  
    SUB AL, '0'   
    MOV CL, AL   
    MOV AL, DL    
    MOV BL, 10
    MUL BL        
    ADD AL, CL    
    MOV DL, AL   
    
    MOV AH, 1     
    INT 21H    
     
    CMP AL, 13
    JNE ABC 
   
    MOV AH, 4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN   

