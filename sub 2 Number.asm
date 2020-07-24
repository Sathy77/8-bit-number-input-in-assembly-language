MOV AH, 2 

MOV DL, 5
ADD DL, '0'   
    

MOV CL, 4  
ADD CL, '0'

SUB DL, CL   
ADD DL, 48  
INT 21H