
.stack 100h
.data
ages DW 12, 45, 78, 23, 54, 49, 50, 54, 71, 34, 32, 21

.code
    MOV AX, @data
    MOV DS, AX
    MOV AX, 0

    MOV SI, offset ages
    MOV CX, 2

    SUM_OF_AGES:
        ADD AX, [SI]
        ADD SI, 2
        OUT 199, AX
        CMP CX, 0
        JE BREAK
        LOOP SUM_OF_AGES

    BREAK:
        NOP

    ;FINISH THE PROGRAM PROPERLY.
    mov  AX, 4c00h
    int  21h  
