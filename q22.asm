; Define the input packed BCD value
mov r0, #123H

; Convert the packed BCD value to ASCII code
mov a, r0
anl a, #0F0H
mov r1, a
mov a, r1
add a, #30H
mov r2, a
mov a, r0
mov r1, a
mov a, r1
anl a, #0FH
mov r1, a
mov a, r1
add a, #30H
mov r3, a

; Display the ASCII code
mov dpl, r2
mov dph, r3
mov a, dpl
mov b, dph
mov r4, a
mov r5, b

mov a, #0x0E
lcall 0x0005

mov a, r4
lcall 0x0005

mov a, r5
lcall 0x0005
