
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include "emu8086.inc"

org 100h

MOV AX, 2      
SHL AX, 2

GOTOXY 10, 5
PRINT 'ans='
CALL PRINT_NUM_UNS
DEFINE_PRINT_NUM_UNS
END
ret
