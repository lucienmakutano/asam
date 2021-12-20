org 100h

MOV ax, 10
; MOV [0020H] ; Memory
ADD ax, 20
; ADD ax, [0029H]
OUT 19h, ax
