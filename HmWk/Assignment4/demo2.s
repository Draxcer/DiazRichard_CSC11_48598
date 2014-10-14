	.text
	.global main
main:
	mov r0,#0
	mov r3,#1
	mov r1,#25
	mov r2,#5
	cmp r2,r1
	movls r2,r2,lsl#1
	movls r3,r3,lsl#1
	bls main

next:
	cmp r1,r2
	subcs r1,r1,r2
	addcs r0,r0,r3
	movs r3,r3,lsr#1
	movcc r2,r2,lsr#1
	bcc next

divide_end:
	bx lr
