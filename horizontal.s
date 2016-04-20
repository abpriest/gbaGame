@ horizontal.s
.global horizontal
horizontal:
        @r0 = sprite attribute
        @r1 = boolean to flip
        @r2 = the hex value to check against
        cmp r1, #1  @if
        beq .set   
        and r0, r0, r2
        b .done
    .set:
        orr r0, r0, #0x1000
    .done:
        mov pc, lr
