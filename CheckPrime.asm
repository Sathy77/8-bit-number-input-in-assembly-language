.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB ' is Prime Number.$'
MSG2 DB ' is not Prime Number.$'
.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV BL, 0
    MOV AL, '0'
    NUMBER:
    SUB AL, '0'
    MOV CH, AL
    MOV AL, BL
    MOV BL, 10
    MUL BL
    ADD AL, CH
    MOV BL, AL
    MOV AH, 1
    INT 21H
    CMP AL, 32D
    JNE NUMBER
    ; NUMBER IS IN BL

    MOV AH, 2
    MOV DL, 13
    INT 21H
    MOV DL, 10
    INT 21H

    MOV DL, 13
    INT 21H
    MOV DL, 10
    INT 21H
    

    MOV CX, 0
    MOV AL, BL
    MOV AH, 0
    PRINT:
    MOV DL, 10
    DIV DL
    PUSH AX
    INC CX
    MOV AH, 0
    CMP AL, 0
    JE NEXT
    JMP PRINT
    NEXT:
    POP AX
    MOV DL, AH
    ADD DL, 48
    MOV AH, 2
    INT 21H
    LOOP NEXT
    
    MOV CL, 2
    CHECK:
    MOV AH, 0
    MOV AL, BL
    DIV CL
    INC CL
    CMP AH, 0
    JNE CHECK
    JE DECISION
    
    DECISION:
    CMP CL, BL
    JGE PRIME
    
    LEA DX, MSG2
    MOV AH, 9
    INT 21H
    JMP EXIT
    
    PRIME:
    LEA DX, MSG1
    MOV AH, 9
    INT 21H
    JMP EXIT
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    
    
    
    MAIN ENDP
END MAIN