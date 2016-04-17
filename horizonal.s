@ horizontal.s


.global horizontal:
horizonal:
    mov r2, r0  @pass sprite->attribute1 to a variable into the assembly function
    cmp r1, #1  @if
    beq .set   
    and r2, r2, #0xEFFF
    b .done
.set
    or r2, r2, #0x1000
   
.done
    mov r0, r2
    mov pc, lr
