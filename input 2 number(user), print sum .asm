.MODEL SMALL
.STACK 100H
.DATA  
MSG1 DB 'ENTER THE FIRST NUMBER: $'
MSG2 DB 'ENTER THE FIRST NUMBER: $'
MSG3 DB 'SUM: $'
.CODE
    MAIN PROC
        
        MOV AX, @DATA     
        MOV DS, AX     ;DATA ACSESS
              
        MOV AH, 9
        LEA DX, MSG1    
        INT 21H        ;PRINTING MSG1
        
        MOV AH, 1      ;TAKING INPUT NUMBER1
        INT 21H                   
        SUB AL, '0'    ;SUBTRACTING 48 FROM NUMBER1 
        MOV BH, AL 
        
        MOV AH, 2
        MOV DL, 13     ;NEW LINE
        INT 21H
        MOV DL, 10
        INT 21H 
       
        MOV AH, 9
        LEA DX, MSG2    
        INT 21H          ;PRINTING MSG2
        
        MOV AH, 1        ;TAKING INPUT NUMBER2 
        INT 21H 
        SUB AL, '0'      ;SUBTRACTING 48 FROM NUMBER2
        MOV BL, AL  
        
        MOV AH, 2
        MOV DL, 13
        INT 21H           ;NEW LINE
        MOV DL, 10
        INT 21H 
        
        MOV AH, 9
        LEA DX, MSG3       ;PRINTING MSG3
        INT 21H
         
        ADD BH, BL         ;ADDING TWO NUMBERS
        MOV DL, BH
        ADD DL, '0'        ;ADDING 48 TO NUMBERS
        MOV AH, 2
        INT 21H            ;OUTPUT SUM
     
        MOV AH, 4CH     
        INT 21H           ;Exit
        
    MAIN ENDP
END MAIN