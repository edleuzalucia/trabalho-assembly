   .data

mensagem:	.asciiz "Digite um numero: \n"
mensagem2:	.asciiz "Digite outro numero: \n"
mensagem3:	.asciiz "Resultado da soma dos valores inseridos: \n"
num1	: 	.word 1
num2	:	.word 1
resultado: 	.word 1
	
	.text
	
main:	
#carrega mensagem 3
	li $v0, 4 
	la $a0, mensagem
	syscall

#lê primeiro numero 	
	li $v0, 5 
	syscall
			
	sw $v0, num1($zero)
	
	li $v0, 4 
	la $a0, mensagem2
	syscall

#lê segundo numero
	li $v0, 5 
	syscall

	sw $v0, num2 ($zero)
	
#carregas da memoria os valores armazenados
	lw $v0, num1 ($zero)
	lw $v1, num2 ($zero)
	
	add $t0, $v0, $v1
	
	sw $t0, resultado($zero)

#carrega mensagem 3
	li $v0, 4 
	la $a0, mensagem3
	syscall
	
#exibe inteiro
	li $v0, 1
	move $a0, $t0
	syscall

	jr $ra