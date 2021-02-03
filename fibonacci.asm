;PRINTIN AN ARRAY

DIMENTION1 EQU 18
.MODEL SMALL
.STACK
.DATA
ARRAY1 DW 0
ARRAY2 DW 1
ARRAY3 DW 0
.CODE
.STARTUP

    MOV DL, '0'
    MOV AH, 2
    INT 21H
    MOV DL, ' '
    INT 21H
    MOV DL, '1'
    INT 21H
    MOV DL, ' '
    INT 21H
    
    MOV DI, 0
    MOV BH, 1
    LEBEL:
    
    MOV AX, ARRAY2[DI]
    MOV ARRAY3[DI], AX   
    
    ADD AX, ARRAY1[DI]
    MOV ARRAY2[DI], AX
    
    MOV AX, ARRAY3[DI]
    MOV ARRAY1[DI], AX       
    
    MOV AX, ARRAY2[DI]
    ;MOV AH, 0
    MOV CX, 0 
    PRINT:
    MOV BL, 10
    DIV BL

    PUSH AX
 
    INC CX

    MOV AH, 0

    CMP AL, 0
    JE NEXT


    JMP PRINT
 
    NEXT:
    POP AX
    MOV DL, AH
    ADD DL, '0'
    MOV AH, 2
    INT 21H
    LOOP NEXT
    
    MOV AH, 2
    MOV DL, ' '
    INT 21H
    
    INC BH  
    CMP BH, DIMENTION1
    JLE LEBEL 
.EXIT
END