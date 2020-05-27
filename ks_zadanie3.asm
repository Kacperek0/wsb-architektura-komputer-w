.data
	prompt1: .asciiz "Enter first number: \n"
	prompt2: .asciiz "Enter second number: \n"
	result: .asciiz "\nSum of your numbers is: "
.text
	#Ask user to enter 1st num
	li $v0, 4
	la $a0, prompt1
	syscall 
	
	#Get 1st input
	li $v0, 5
	syscall
	
	#Store 1st num
	move $t0, $v0
	
	#Display 2nd message
	li $v0, 4
	la $a0, prompt2
	syscall
	 
	#Get 2nd result
	li $v0, 5
	syscall
	 
	#Store 2nd messaga
	move $t1, $v0
	
	#Add numbers
	add $t2, $t0, $t1
	
	#Print result message
	li $v0, 4
	la $a0, result
	syscall
	
	#Print number
	li $v0, 1
	add $a0, $zero, $t2
	syscall
	 