bits 64
section .text
global strchr:function

strchr:
    xor     RAX, RAX

loop:
    cmp     byte [RDI], SIL
    je      end
    cmp     byte [RDI], 0
    je      end_null
    inc     RDI
    JMP     loop

end:
    mov     RAX, RDI
    ret

end_null:
    ret