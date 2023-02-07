//Write a program to add 10 series numbers from 20h to 29h and result stored on 2Ah

MOV R0,#20H
MOV R5,#0AH
MOV R3,#00H
UP:MOV A,@R0
ADD A,R3
MOV R3,A
INC R0
DJNZ R5,UP
MOV @R0,A
END