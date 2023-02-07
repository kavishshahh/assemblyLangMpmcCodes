// Transfer data block in internal data memory

;MOV R0,#20H
;MOV R1,#30H
;MOV R5,#0AH
;UP:MOV A,@R0
;MOV @R1,A
;INC R0
;INC R1
;DJNZ R5,UP
;END

// Transfer data block in external data memory

MOV R0,#20H
MOV DPTR,#4000H
MOV R5,#0AH
UP:MOV A,@R0
MOVX @DPTR,A
INC R0
INC DPTR
DJNZ R5,UP
END