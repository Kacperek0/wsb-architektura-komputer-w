.data

.text
	 addi $s0, $zero, 10
	 addi $s1, $zero 9
	 
	 mul $t0, $s0, $s1
	 
	 #displat the results
	 li $v0, 1
	 add $a0, $zero, $t0
	 syscall