@ collatz.s

/* function to return the number of steps in the collatz sequence a number produces */
.global	collatz
collatz:
        mov r3, #0
    .repeat:
        cmp r0, #1
        beq .done
        mov r1, r0
        and r1, r1, #1
        cmp r1, #0
        beq .even
    .odd:
        mov r1, r0
        mov r2, #3
        mul r0, r1, r2
        add r0, r0, #1
	add r3, r3, #1
        b .repeat
    .even:
        mov r0, r0, lsr #1
	add r3, r3, #1
        b .repeat
    .done:
	mov r0, r3
        mov pc, lr
