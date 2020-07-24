.MODEL SMALL
.STACK 100H
.DATA 
.CODE
    MAIN PROC
        
        MOV AH, 1     ;
        INT 21H       ;Scanner
                    
        MOV BL, AL,
        
        MOV AH, 2
     
        MOV DL, 10     ;
        INT 21H         ;New line print hobe
        MOV DL, 13
        INT 21H        ;
        
        ADD BL, 32
        MOV DL, BL
        INT 21H   
 
        
        MOV AH, 4CH     ;
        INT 21H         ;Exit
        
    MAIN ENDP
END MAIN