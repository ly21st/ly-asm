.section .data
output:
	.asciz "The value is %d\n"
value:
	.int 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110
.section .text	
.globl _start
_start:
	movl $0, %edi
loop:	
	movl value(, %edi, 4), %eax
	pushl %eax
	pushl $output
	call printf
	addl $8, %esp
	inc %edi
	cmpl $11, %edi
	jne loop
	movl $1, %eax
	movl $0, %ebx
	int $0x80

	