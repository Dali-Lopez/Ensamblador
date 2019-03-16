#prac_3b.s
	.data
a:	.word 0
b:	.word 2
c:	.word 3
d:	.word 4
e:	.word 5
#----------------
	.text
	.global main
main:
	lw $s0,a
	lw $s1,b
	lw $s2,c
	lw $s3,d
	lw $s4,e

	add $s0, $s1, $s2
	add $s0, $s0, $s3
	add $s0, $s0, $s4
	
	li $v0, 10
	syscall			