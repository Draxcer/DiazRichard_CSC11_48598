/*
	Name: Ricahrd Diaz
	Date: 09/30/2014
	Class: Assembly
	Purpose: if-else statement
*/
.global main

main:
	mov r1, #1 
	mov r2, #3
	cmp r1, r2
	blt _ifst
	bgt _elsest
_ifst: /* if r1 < r2, subtract r2, from r1 */
	sub r0, r2, r1
_elsest: /* if r1 > r2, add r1 + r1*/
	add r0, r2, r1
end:
	bx lr

