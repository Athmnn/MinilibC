[BITS 64]
    global strpbrk:function
    global strchr_:function
    section .text

strchr_:
    mov     r10, rsi
    test    r10, r10
    je      return_
    jmp     loop_

loop_:
    mov     al, byte [r10]
    test    al, al
    je      return_
    cmp     al, dil
    je      return_found_
    inc     r10
    jmp     loop_

return_found_:
    mov     rax, 1
    ret

return_:
    mov     rax, 0
    ret

strpbrk:
    mov     rdx, rdi

loop:
    movsx   rdi, byte [rdx]
    test    dil, dil
    je      return
    call    strchr_
    test    rax, rax
    jne     return_found
    inc     rdx
    jmp     loop

return_found:
    mov     rax, rdx
    ret

return:
    mov     rax, 0
    ret