
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
MOV CX, 4
MOV AX, 0

DISPLAY:
OUT 199, AX
 
L1:
    INC AX
    PUSH CX
    MOV CX, 2
    INNER_LOOP:
        INC AX
        CMP AX, 10; IF statement
            JNZ DISPLAY
        LOOP CX INNER_LOOP; LOOP statement
     POP CX
     LOOP CX L1

ret
