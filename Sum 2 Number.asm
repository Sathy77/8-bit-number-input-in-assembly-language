MOV AH, 2 ;AH= 2 write


MOV DL, 5   ;nuber 5
ADD DL, '0' ;5+48(Char 0)=53
    

MOV CL, 4   ;nuber 4
ADD CL, '0' ;4+48(Char 0)=52

ADD DL, CL  ;53+52=105 
SUB DL, 48  ;105- 48= 57(ASSCI 57=9)
            
INT 21H