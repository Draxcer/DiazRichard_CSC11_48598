/*
	Name: Richard Diaz
	Date: 09/22/2014
	Assignment 3
*/

/*
	r0 = counter/division
	r1 = mod
	r2 = first number
	r3 = second number
	r4 = switch flag
	r5 = temp
	r6 = 10^
	r7 = scale factor
	r8 = 10 = shifter
	r9 = shift test
*/

	.global main
main:
	mov r0, #0
	mov r2, #111
	mov r3, #5
	mov r1, r2
	mov r4, #0
	mov r5, #0
	mov r6, #0
	mov r7, #0
	mov r8, #10
	mov r9, #0

	cmp r1, r3
	bge repeat_sub
	blt swap

scale:
	mov r6, #1
	mul r7, r3, r6
	mul r9, r7, r8
	cmp r1, r9
	bgt factor
factor:
	mul r6, r8, r6
	mul r7, r3, r6
	mul r9, r7, r8
	cmp r1, r9
	bgt factor
repeat_sub:
	add r0, r0, r6
	sub r1, r1, r7
	cmp r1, r7
	bge repeat_sub
	cmp r1, r3
	bge scale
swap:
	cmp r4, #0
	beq end;

	mov r5, r0
	mov r0, r1
	mov r1, r5
end:
	bx lr

