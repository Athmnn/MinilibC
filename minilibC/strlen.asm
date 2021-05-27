section .text
global strlen

strlen:
    XOR     RAX, RAX
count:
    CMP     BYTE [RDI + RAX], 0
    JE      end
    INC     RAX
    JMP     count
end:
    ret
