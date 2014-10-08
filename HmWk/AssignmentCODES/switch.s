/*
	Name: Ricahrd Diaz
	Date: 09/30/2014
	Class: Assembly
	Purpose: swtich statement
*/
.global main

main:
	mov r1, #1 
	mov r2, #3
	mov r3, #0
	cmp r1, r2
	blt _less
	bgt _greater
	beq _equal
_less: /* r1 < r3, add enough to make equal, output difference*/ 
	sub r3, r2, r1
	add r1, r1, r3
	b end
_greater: /* r1 > r2, subtract enough to make equal, output different */
	sub r3, r1, r2
	sub r1, r1, r3
	b end
_equal: /* if r1 = r2 output 0*/
	mov r3, #255
	b end
end:
	mov r0, r3
	bx lr


