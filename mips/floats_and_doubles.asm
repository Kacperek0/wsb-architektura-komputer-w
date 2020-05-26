.data 
	PI:		.float 3.14
	DBL:		.double 7.202
	dblZero:	.double 0.0
	
.text
	li 	$v0, 2
	lwc1	$f12, PI
	syscall
	
	ldc1 	$f2, DBL
	ldc1 	$f0, dblZero
	
	li 	$v0, 3
	add.d	$f12, $f2, $f0
	syscall 
	