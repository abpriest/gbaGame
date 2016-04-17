@ vertical.s 
.global vertical
vertical:
        @r0 = sprite attribute
        @r1 = boolean to flip
        @r2 = the hex value to check against
        cmp r1, #1  @if
        beq .set   
        and r3, r0, r2
        b .done
    .set:
        orr r3, r3, #0x2000
    .done:
        mov r0, r3
        mov pc, lr
