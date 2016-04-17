@ horizontal.s


.global horizontal
horizonal:
        mov r2, r0  @pass sprite->attribute1 to a variable into the assembly function
        cmp r1, #1  @if
        beq .set   
        and r3, r2, #0xefff
        mov r2, r3
        b .done
    .set:
        orr r2, r2, #0x1000
    .done:
        mov r0, r2
        mov pc, lr