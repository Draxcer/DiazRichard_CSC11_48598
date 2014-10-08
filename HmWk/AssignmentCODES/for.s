/*
	Name: Ricahrd Diaz
	Date: 09/30/2014
	Class: Assembly
	Purpose: Forloop
*/
.global main

main:
	mov r1, #1 
	mov r2, #3
	mov r3, #0 /* counter */
_forloop: /* For r1 < r2, add 1 to r1, r3++  */
	cmp r1, r2
	beq end
	add r1, r1, #1
	add r3, r3, #1
	b _forloop
end:
	mov r0, r3
	bx lr

