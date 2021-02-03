.MODEL SMAL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
    MOV CX, 9 ;LOOP 5 BAR GHURBE AND CX FIXED FOR LOOP  
    
    
    OUTER_LP:  
    MOV BX, CX
    MOV AH, 2
    MOV DL, 13
    INT 21H  
    MOV DL, 10 
    INT 21H
    
    INNER_LP:
    MOV DL, '*'
    INT 21H  
    MOV DL, 32
    INT 21H
    DEC BX  
    CMP BX, 0
    JG INNER_LP 

    LOOP OUTER_LP
    
    
    MAIN ENDP
END MAIN