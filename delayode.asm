
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;MOV BX, 10

;L:
;    CMP BX, 4
;    JE DELAY
;    DEC BX
;LOOP L

;DELAY:
;    NOP

;XCHG AX ,BX
;OUT 199, AX

;RET
         
;mov ax, 20h

;push ax

; 2 sec wait
;mov cx, 1Eh
;mov dx, 8480h

;mov ah, 86h

;int 15h

;hlt



MOV AX, 48
SHL AX, 4

OUT 199, AX
ret