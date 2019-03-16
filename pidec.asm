#prac_3b.s
	.data
resultado:	.asciiz "El resultado es: "	
numerob:	.asciiz "Intriduce el numero b: "
numeroc:	.asciiz "Introduce el numero c: "
numerod:	.asciiz "Introduce el numero d: "
numeroe:	.asciiz "Introduce el numero e: "
a:	.word 0
#b:	.word 2
#c:	.word 3
d:	.word 4
e:	.word 5
#----------------
	.text
	.global main
main:
	lw $s0,a
#	lw $s1,b
#	lw $s2,c
	lw $s3,d
	lw $s4,e
	
	#imprime introduce el numero b
	la $a0, numerob
	li $v0,4
	syscall
	
	
	#pedir numero b
	li $v0,5
	syscall
	add $s1, $zero, $v0
	
	
	#imprime introduce el numero c
	la $a0, numeroc
	li $v0,4
	syscall
	#pedir numero c
	li $v0,5
	syscall
	add $s2, $zero, $v0
	
	#imprime introduce el numero d
	la $a0, numerod
	li $v0,4
	syscall
	#pedir numero d
	li $v0,5
	syscall
	add $s3, $zero, $v0

	#imprime introduce el numero e
	la $a0, numeroe
	li $v0,4
	syscall
	#pedir numero e
	li $v0,5
	syscall
	add $s4, $zero, $v0
	
			
	
	# Resuleve la resta
	add $t0, $s1, $s2
	add $t1, $s4, $s3
	sub $s0, $t0, $t1
	
	
	#imprime mensaje
	la $a0, resultado
	li $v0, 4
	syscall	
	
	
	#imprime un numero
	add $a0, $zero, $s0
	li $v0,1
	syscall 
	
	li $v0, 10
	syscall