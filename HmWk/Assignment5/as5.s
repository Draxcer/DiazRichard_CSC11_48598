/* Efficient technique for calculating a/b and a%b */

.data

.balign 4
in1:
.asciz "Please enter a\n"

.balign 4
in2:
.asciz "Please enter b\n"

/* output text */

.balign 4
output1:
.asciz "Calculated %d/%d = %d\n"

.balign 4
output2:
.asciz "Calculated %d%%%d is %d\n"

.balign 4
scan:
.asciz "%d"

/*store a b*/
.balign 4
a: .word 0
.balign 4
b: .word 0

.balign 4
return: .word 0
.balign 4
return2: .word 0
.text

/* function divMod */
divMod:
	push {lr}
	mov r0, #0
	ldr r3, addr_a
	ldr r2, addr_b
	mov r1, r3
	mov r3, #1
	cmp r1, r2
	bge greater
	b dend
greater:
	bl scaleLeft
	bl addSub
	b dend
dend:
	pop {lr}
	bx lr
	
/* function scaleLeft */
scaleLeft:
	push {lr}
startL:
	mov r3, r3, lsl #1
	mov r2, r2, lsl #1
	cmp r1, r2
	bge startL
	mov r3, r3, lsr #1
	mov r3, r3, lsr #1
	pop {lr}
	bx lr

/* function addSub */
addSub:
	push {lr}
startaS:
	add r0, r0, r3
	sub r1, r1, r2
	bl scaleRight
	cmp r3, #1
	bge startaS
	pop {lr}
	bx lr

/* function scaleRight */
scaleRight:
	push {lr}
startR:
	mov r3, r3, lsr #1
	mov r2, r2, lsr #1
	cmp r1, r2
	blt startR
	pop {lr}
	bx lr


	.global main
main:
	push {lr}
	/* intput */
	ldr r0, addr_in1
	bl printf
	ldr r0, addr_scan
	ldr r1, addr_a
	bl scanf
	ldr r0, addr_in2
	bl printf
	ldr r0, addr_scan
	ldr r1, addr_b
	bl scanf

	/* call function */
	ldr r0, addr_a
	ldr r0, [r0]
	ldr r1, addr_b
	ldr r1, [r1]
	bl divMod

	/* output */
	mov r5, r1
	mov r3, r0
	ldr r0, addr_output1
	ldr r1, addr_a
	ldr r1, [r1]
	ldr r2, addr_b
	ldr r2, [r2]
	bl printf
	mov r3, r5
	ldr r0, addr_output2
	ldr r1, addr_a
	ldr r1, [r1]
	ldr r2, addr_b
	ldr r2, [r2]
	bl printf
	/* exit */
	pop {lr}
	bx lr

addr_a: .word a
addr_b: .word b
addr_scan: .word scan
addr_in1: .word in1
addr_in2: .word in2
addr_output1: .word output1
addr_output2: .word output2
.global printf
.global scanf