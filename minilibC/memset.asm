    bits 64
    global memset:function
    section .text

memset:
    mov     rcx, rdi

loop:
    test    rdx, rdx
    je      return
    mov     [rdi], SIL
    inc     rdi
    dec     rdx
    jmp     loop

return:
    mov     rax, rcx
    ret