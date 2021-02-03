.MODEL SMALL 
.STACK 100H 
.DATA
STARTING DB 'Enter Something: $'
CHARACTER DB 'Character $'
DIGIT DB 'Digit $'
SOMETHINGELSE DB 'Something Else $'
.CODE 
MAIN PROC FAR
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, STARTING
    MOV AH, 9
    INT 21H
    MOV AH, 1
    INT 21H
    CMP AL, 'A'
    JGE STARTCAPITALLETTER
    STEP1:
    CMP AL, 'a'
    JGE STARTLOWERLETTER
    STEP2:
    CMP AL, '0'
    JGE STARTDIGIT
    STEP3:
    MOV AH, 2
    MOV DL, 13
    INT 21H
    MOV DL, 10
    INT 21H
    LEA DX, SOMETHINGELSE
    MOV AH, 9
    INT 21H
    JMP EXIT

    
    STARTCAPITALLETTER:
    CMP AL, 'Z'
    JLE CAPITALLETTER
    JMP STEP1
    CAPITALLETTER:
    MOV AH, 2
    MOV DL, 13
    INT 21H
    MOV DL, 10
    INT 21H
    LEA DX, CHARACTER
    MOV AH, 9
    INT 21H
    JMP EXIT
    STARTLOWERLETTER:
    CMP AL, 'z'
    JLE ENDLOWERLETTER
    JMP STEP2
    ENDLOWERLETTER:
    MOV AH, 2
    MOV DL, 13
    INT 21H
    MOV DL, 10
    INT 21H
    LEA DX, CHARACTER
    MOV AH, 9
    INT 21H
    JMP EXIT
    STARTDIGIT:
    CMP AL, '9'
    JLE ENDDIGIT
    JMP STEP3
    ENDDIGIT:
    MOV AH, 2
    MOV DL, 13
    INT 21H
    MOV DL, 10
    INT 21H
    LEA DX, DIGIT
    MOV AH, 9
    INT 21H
    JMP EXIT 

     
    EXIT:                                
    MOV AH, 4CH
    INT 21H 
    MAIN ENDP
END MAIN