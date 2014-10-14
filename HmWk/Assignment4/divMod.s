/*
	Name: Richard Diaz
	Date: 10/08/2014
	Class: Assembly
	Purpose: Division by shifts
*/

.data

.balign 4
message1: .asciz "Type a number: "
.balign 4
message2: .asciz "Type a second number: "
.balign 4
message3: .asciz "%d divided by %d is %d\n"

.balign 4
scan_pattern: .asciz "%d"

.balign 4
number_read: .word 0

.balign 4
return: .word 0

.balign 4
return2: .word 0

.text

.global main
main:
	mov r4, #1
	ldr r1, address_of_return
	str lr, [r1]

	ldr r0, address_of_message1
	bl printf

	ldr r0, address_of_scan_pattern
	ldr r1, address_of_number_read
	bl scanf

	ldr r0, address_of_number_read
	ldr r0, [r0]
	mov r2, r0

	ldr r0, address_of_message2
	bl printf

	ldr r0, address_of_scan_pattern
	ldr r1, address_of_number_read
	bl scanf

	ldr r0, address_of_number_read
	ldr r0, [r0]
	mov r3, r0
	mov r5, r3
scale:
	cmp r2,r3
	movls r3, r3, lsl#1
	movls r4, r3, lsl#1
	bls scale
shift:
	cmp r2, r3
	subcs r2, r2, r3
	addcs r0, r0, r4
	movs r4, r4, lsr#1
	movcc r3, r3, lsr#1
	bcc scale
end:
	bx lr

address_of_message1 : .word message1
address_of_message2 : .word message2
address_of_message3 : .word message3
address_of_scan_pattern : .word scan_pattern
address_of_number_read : .word number_read
address_of_return : .word return

/* External */
.global printf
.global scanf
