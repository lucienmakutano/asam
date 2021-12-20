
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
; d = b^2 - 4ac

; MOV AX, 4
; MUL AX

; MOV BX, 2
; MOV CX, 1
; MOV DX, 4

; MOV [0024h], AX
; MOV AX, BX
; MUL CX
; MUL DX
 
; SUB AL, [0024h]
; MOV [0025h], AL

; MOV AX, [0025h]
; OUT 199, AX
; ret

; MOV AX, 01b

; NOT AX

; OUT 199, AX

; ret

; MOV BX, 0101b
; AND BX, 1101b

; MOV AX, BX

MOV BX, 0b
MOV CX, 1b
NOT BX  ; 1
AND BX, CX ; 1

NOT CX     ; 0
AND CX, BX ; 0

OR BX, CX  ; 1
MOV AX, BX

OUT 199, AX
ret