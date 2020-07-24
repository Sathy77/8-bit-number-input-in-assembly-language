.MODEL SMAL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV CX, 5 ;LOOP 5 BAR GHURBE AND CX FIXED FOR LOOP
    MOV DL, 65
    
    LP:
    MOV AH, 2
    INT 21H 
    MOV BL,DL 
    
    MOV DL, 32
    INT 21H
    
    MOV DL, BL
    ADD DL, 1
    LOOP LP
    
    
    MAIN ENDP
END MAIN