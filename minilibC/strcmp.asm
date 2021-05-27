[BITS 64]
    global strcmp:function
    section .text

strcmp:
    mov     al, byte [rdi]
    mov     cl, byte [rsi]
    test    al, al
    je      return
    test    cl, cl
    je      return
    cmp     cl, al
    jne     return
    inc     rsi
    inc     rdi
    jmp     strcmp

return:
    sub     al,cl
    movsx   rax, al
    ret