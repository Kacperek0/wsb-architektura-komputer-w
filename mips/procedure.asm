.data
	msg: .asciiz "Hi everybody.\nMy name is Kacper.\n"
.text
	main:
		jal displayMessage
		
	
	
	# tell the system that program is done
		li $v0, 10
		syscall 
	
	displayMessage:
		li $v0, 4
		la $a0, msg
		syscall
		
		jr $ra 