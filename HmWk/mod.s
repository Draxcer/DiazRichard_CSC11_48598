	.global _start

_start:
	mov r0, #0 /* output */
	mov r1, #0 /* counter */
	mov r2, #11 /* first number */
	mov r3, #5 /* second number */
	cmp r2, r3 /* compare */
	bgt case_greater /* if r2 > r3 */
math:
	add r1, r1, #1 /* counter++ */
	mov r2, r0
	cmp r2, r3
	bgt case_greater
case_greater:
	sub r2, r2, r3
	b math


