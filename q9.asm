MOV R7, #30H
MOV R3, #10
MOV R5, #00

LOOP: 
MOV A, R7
INC R7
RRC A
JNC EVEN
INC R5

EVEN: 
DJNZ R3, LOOP

END
