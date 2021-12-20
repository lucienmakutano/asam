
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  
MOV AX, 3
MOV BX, 5
MUL BX
 
MOV BH, 1
MOV AL, 2 
DIV BH

MOV AX, 2
MUL BH

MOV AX, 3
MUL AX
MUL CX

ADD AX, BX

OUT 199, AX
ret




