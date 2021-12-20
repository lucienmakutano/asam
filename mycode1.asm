
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
MOV [0032h], 40
MOV Ax, 35
SUB [0032h], Ax
XCHG Ax, [0032h]
OUT 199, Ax
RET
