MOV R0,#30H
MOV R1,#05H
MOV B,#00H

BACK:
MOV A,@R0
CJNE A,B,LOOP

LOOP:
JNC LOOP1
MOV B,A

LOOP1:
INC R0
DJNZ R1,BACK
MOV R2,B
END