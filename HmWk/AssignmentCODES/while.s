/*
	Name: Ricahrd Diaz
	Date: 09/30/2014
	Class: Assembly
	Purpose: whileLoop
*/
.global main

main:
	mov r1, #1 
	mov r2, #3
_while: /* For r1 <= r2, add 1 to r1*/
	cmp r1, r2
	beq end
	add r1, r1, #1
	b _while
end:
	mov r0, r1
	bx lr

