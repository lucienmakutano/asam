; USING PROCEDURES
org 100h

; Slope formulae
; coordinate(2, 1)
MOV AX, 2 ; x1
MOV BX, 1 ; y1

; coordinate (4, 3)
MOV CX, 4 ; x2
MOV DX, 3 ; y2

CALL Slope

OUT 199, AX ; 1

RET

Slope PROC
    SUB DX, BX ; y2-y1=2
    SUB CX, AX ; x2-x1=2
    
    MOV AX, DX
    MOV [0011], CX    
    MOV BL, [0011]
    DIV BL
    
    RET
Slope ENDP
