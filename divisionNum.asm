// Dividing two nums and storing it in external memory

MOV DPTR,#4000H
MOV A,#0AH
MOV B,#05H
DIV AB
MOVX @DPTR,A
END
