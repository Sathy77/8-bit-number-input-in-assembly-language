.MODEL SMALL
.STACK 100H
.DATA 
   MSG DB 'MY NAME IS SATHY!$'
.CODE
    MAIN PROC
        
        MOV AX, @DATA     
        MOV DS, AX     
              
        MOV AH, 9
        LEA DX, MSG    
        INT 21H
 
        
        MOV AH, 4CH     ;
        INT 21H         ;Exit
        
    MAIN ENDP
END MAIN