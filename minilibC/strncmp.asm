    bits 64
    global strncmp:function
    section .text

strncmp:
    MOV     eax, edx
    JMP     .prepare

.prepare:
    CMP     RDI, 0
    JE      .exit
    MOV     r8, 0
    CMP     RSI, 0
    JE      .exit
    MOV     r10, 0
    MOV     RCX, RDX

.loop:
    lodsb
    INC     r8
    xchg    RSI, RDI
    MOV     DL, al
    INC     r8
    lodsb
    xchg    RSI, RDI
    INC     r8
    JMP     .check

.check:
    CMP     al, 0
    JE      .exit
    INC     r10
    CMP     DL, 0
    JE      .exit
    INC     r10
    CMP     al, DL
    loop    .loop
    INC     r10

.exit:
    SUB     al, DL
    INC     r10
    movsx   eax, al