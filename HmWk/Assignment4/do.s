/*
	Name: Ricahrd Diaz
	Date: 09/30/2014
	Class: Assembly
	Purpose: DOwhileLoop
*/
.global main

main:
	mov r1, #1 
	mov r2, #3
_dowhile: /* For r1 <= r2, add 1 to r1*/
	add r1, r1, #1
	cmp r1, r2
	ble _dowhile
end:
	mov r1, r0
	bx lr

