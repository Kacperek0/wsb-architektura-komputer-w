.data
	age: .word 26	# This is a word or integer

.text

	#Print int
	li $v0, 1
	lw $a0, age
	syscall 