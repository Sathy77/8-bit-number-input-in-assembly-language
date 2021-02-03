.MODEL SMAL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV CX, 26 ;LOOP 26 BAR GHURBE AND CX FIXED FOR LOOP
    MOV DL, 65
    
    LP:
    MOV AH, 2
    INT 21H 
    MOV BL,DL 
    
    MOV AH, 2
    MOV DL, 13
    INT 21H
    MOV DL, 10
    INT 21H
    
    MOV DL, BL
    ADD DL, 1
    LOOP LP
    
    
    MAIN ENDP
END MAIN