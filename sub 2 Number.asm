MOV AH, 2       ;AH= 2 write

MOV DL, 5       ;nuber 5
ADD DL, '0'     ;5+48(Char 0)=53
    

MOV CL, 4       ;nuber 4
ADD CL, '0'     ;4+48(Char 0)=52

SUB DL, CL      ;53-52=1
ADD DL, '0'     ;1+ 48= 49(ASSCI 49=1)
INT 21H