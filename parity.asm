DATA SEGMENT
    NUM DW 08H
    M1 DB 0AH,0DH,"e\Even$"
    M2 DB 0AH,0DH,"Odd$"
DATA ENDS

CODE SEGMENT 
        ASSUME DS:DATA,CS:CODE
START:
    MOV AX,DATA
    MOV DS,AX
    MOV AX,NUM
    ROR AX,1
    JC ODD
    MOV DX,OFFSET M1
    MOV AH,09H
    INT 21H
    JMP EXIT
ODD:
    MOV DX,OFFSET M2
    MOV AH,09H
    INT 21H
	
EXIT:   
	MOV AH, 4CH
	INT 21H
CODE ENDS
END START
