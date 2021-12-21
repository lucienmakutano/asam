include "emu8086.inc"

org 100h

; CONSTANT
; LEA     DI, buffer      ; buffer offset.
MOV     DX, 256 

; CALL PRINT_STRING
PRINT   "Account Management"
CALL    NEW_LINE
CALL    NEW_LINE
PRINT   "1. Login"
CALL    NEW_LINE
PRINT   "2. Register"

CALL    NEW_LINE
PRINT   "Choose(1, 2): "
CALL    SCAN_NUM

CMP     CX, 1
JE      LOGIN
CMP     CX, 2
JE      REGISTER
JNE     ERROR

LOGIN:
    CALL CLEAR_SCREEN 
    PRINT "Account Management - LOGIN"
    CALL NEW_LINE
    CALL NEW_LINE 
    PRINT "Enter username: "
    CALL GET_STRING
    CALL NEW_LINE
    MOV [0011], DI
    PRINT "Enter password: "
    CALL GET_STRING
    CALL NEW_LINE
    MOV [0012], DI
    
    CALL CLEAR_SCREEN
    PRINT "LOGGEDIN"
    CALL NEW_LINE
    MOV SI, [0011]
    PRINT "Username: "
    CALL PRINT_STRING
    CALL NEW_LINE
    MOV SI, [0012]
    PRINT "Password: "
    CALL PRINT_STRING
    CALL NEW_LINE
    RET
        
        
REGISTER:
    CALL CLEAR_SCREEN 
    PRINT "Account Management - REGISTER" 
    CALL NEW_LINE
    CALL NEW_LINE
    PRINT "Enter email: "
    CALL GET_STRING
    CALL NEW_LINE
    MOV [0011], DI
    
    PRINT "Enter username: "
    CALL GET_STRING
    CALL NEW_LINE
    MOV [0012], DI
    
    PRINT "Enter password: "
    CALL GET_STRING
    CALL NEW_LINE
    MOV [0013], DI
    
    CALL CLEAR_SCREEN
    PRINT "REGISTERED"
    CALL NEW_LINE
    MOV SI, [0011]
    PRINT "Email: "
    CALL PRINT_STRING
    CALL NEW_LINE
    MOV SI, [0012]
    PRINT "Username: "
    CALL PRINT_STRING
    CALL NEW_LINE
    MOV SI, [0013]
    PRINT "Password: "
    CALL PRINT_STRING
    CALL NEW_LINE
    RET

ERROR:
CALL CLEAR_SCREEN
PRINT "Unknown option... Choice (1, 2)"
CALL NEW_LINE
CALL NEW_LINE


NEW_LINE PROC
    MOV AH, 09
    MOV DX, offset linefeed
    INT 21H   
   
RET

linefeed db 13, 10, "$"
buffer db "empty buffer --- empty buffer"
size = $ - offset buffer  ; declare constant

DEFINE_CLEAR_SCREEN
DEFINE_SCAN_NUM
DEFINE_GET_STRING
DEFINE_PRINT_STRING
END
