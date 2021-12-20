; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; stroring data in the registers
MOV ax, 'a'
MOV dx, 3

; XCHG dx, ax
; Manual swapping
; the same result as  XCHG dx, ax
MOV bx, ax
MOV ax, dx
MOV dx, bx  

; send data to port 199
out 199, ax
     
ret
