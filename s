Instrucción					RegDst	Jump	Branch	MemRead	MemToReg	ALUOP	MemWrite	ALUSrc	Regwrite
j main                         				0	1	0	0	0		00	0		0	0
addi $a0, $zero, 6             				1	0	0	0	0		10	0		0	1
jal factorial                  				0	1	0	0	0		00	0		0	0
beq $a0, $zero, condicionBorde 				0	0	1	0	0		00	0		0	0
addi $sp, $sp, -8              				1	0	0	0	0		10	0		0	1
sw $ra, 0($sp)                 				0	0	0	0	0		00	1		1	0
sw $a0, 4($sp)                 				0	0	0	0	0		00	1		1	0
addi $a0, $a0, -1              				1	0	0	0	0		10	0		0	1
add $t0, $t0, $a0              				1	0	0	0	0		10	0		0	1
add $t1, $t0, $a0              				1	0	0	0	0		10	0		0	1
jal factorial                  				0	1	0	0	0		00	0		0	0
beq $a0, $zero, condicionBorde 				0	0	1	0	0		00	0		0	0
addi $sp, $sp, -8              				1	0	0	0	0		10	0		0	1
sw $ra, 0($sp)                 				0	0	0	0	0		00	1		1	0
sw $a0, 4($sp)                 				0	0	0	0	0		00	1		1	0
addi $a0, $a0, -1              				1	0	0	0	0		10	0		0	1
add $t0, $t0, $a0              				1	0	0	0	0		10	0		0	1
add $t1, $t0, $a0              				1	0	0	0	0		10	0		0	1
jal factorial                  				0	1	0	0	0		00	0		0	0
beq $a0, $zero, condicionBorde 				0	0	1	0	0		00	0		0	0
addi $sp, $sp, -8              				1	0	0	0	0		10	0		0	1
sw $ra, 0($sp)                 				0	0	0	0	0		00	1		1	0
sw $a0, 4($sp)                 				0	0	0	0	0		00	1		1	0
addi $a0, $a0, -1              				1	0	0	0	0		10	0		0	1
add $t0, $t0, $a0              				1	0	0	0	0		10	0		0	1
add $t1, $t0, $a0              				1	0	0	0	0		10	0		0	1
jal factorial                  				0	1	0	0	0		00	0		0	0
beq $a0, $zero, condicionBorde 				0	0	1	0	0		00	0		0	0
addi $sp, $sp, -8              				1	0	0	0	0		10	0		0	1
sw $ra, 0($sp)                 				0	0	0	0	0		00	1		1	0
sw $a0, 4($sp)                 				0	0	0	0	0		00	1		1	0
addi $a0, $a0, -1              				1	0	0	0	0		10	0		0	1
add $t0, $t0, $a0              				1	0	0	0	0		10	0		0	1
add $t1, $t0, $a0              				1	0	0	0	0		10	0		0	1
jal factorial                  				0	1	0	0	0		00	0		0	0
beq $a0, $zero, condicionBorde 				0	0	1	0	0		00	0		0	0
addi $sp, $sp, -8              				1	0	0	0	0		10	0		0	1
sw $ra, 0($sp)                 				0	0	0	0	0		00	1		1	0
sw $a0, 4($sp)                 				0	0	0	0	0		00	1		1	0
addi $a0, $a0, -1              				1	0	0	0	0		10	0		0	1
add $t0, $t0, $a0              				1	0	0	0	0		10	0		0	1
add $t1, $t0, $a0              				1	0	0	0	0		10	0		0	1
jal factorial                  				0	1	0	0	0		00	0		0	0
beq $a0, $zero, condicionBorde 				0	0	1	0	0		00	0		0	0
addi $sp, $sp, -8              				1	0	0	0	0		10	0		0	1
sw $ra, 0($sp)                 				0	0	0	0	0		00	1		1	0
sw $a0, 4($sp)                 				0	0	0	0	0		00	1		1	0
addi $a0, $a0, -1              				1	0	0	0	0		10	0		0	1
add $t0, $t0, $a0              				1	0	0	0	0		10	0		0	1
add $t1, $t0, $a0              				1	0	0	0	0		10	0		0	1
jal factorial                  				0	1	0	0	0		00	0		0	0
beq $a0, $zero, condicionBorde 				0	0	1	0	0		00	0		0	0
addi $v0, $zero, 1             				1	0	0	0	0		10	0		0	1
lw $ra, 0($sp)                 					0	0	0	1	1		00	0		1	1
lw $a0, 4($sp)                 					0	0	0	1	1		00	0		1	1
addi $sp, $sp, 4               				1	0	0	0	0		10	0		0	1
addi $sp, $sp, 4               				1	0	0	0	0		10	0		0	1
jr $ra                         				0	1	0	0	0		00	0		0	0
lw $ra, 0($sp)                 					0	0	0	1	1		00	0		1	1
lw $a0, 4($sp)                 					0	0	0	1	1		00	0		1	1
mul $v0, $v0, $a0              				1	0	0	0	0		10	0		0	1
addi $sp, $sp, 8               				1	0	0	0	0		10	0		0	1
jr $ra                         				0	1	0	0	0		00	0		0	0
lw $ra, 0($sp)                 					0	0	0	1	1		00	0		1	1
lw $a0, 4($sp)                 					0	0	0	1	1		00	0		1	1
mul $v0, $v0, $a0              				1	0	0	0	0		10	0		0	1
addi $sp, $sp, 8               				1	0	0	0	0		10	0		0	1
jr $ra                         				0	1	0	0	0		00	0		0	0
lw $ra, 0($sp)                 					0	0	0	1	1		00	0		1	1
lw $a0, 4($sp)                 					0	0	0	1	1		00	0		1	1
mul $v0, $v0, $a0              				1	0	0	0	0		10	0		0	1
addi $sp, $sp, 8               				1	0	0	0	0		10	0		0	1
jr $ra                         				0	1	0	0	0		00	0		0	0
lw $ra, 0($sp)                 					0	0	0	1	1		00	0		1	1
lw $a0, 4($sp)                 					0	0	0	1	1		00	0		1	1
mul $v0, $v0, $a0              				1	0	0	0	0		10	0		0	1
addi $sp, $sp, 8               				1	0	0	0	0		10	0		0	1
jr $ra                         				0	1	0	0	0		00	0		0	0
lw $ra, 0($sp)                 					0	0	0	1	1		00	0		1	1
lw $a0, 4($sp)                 					0	0	0	1	1		00	0		1	1
mul $v0, $v0, $a0              				1	0	0	0	0		10	0		0	1
addi $sp, $sp, 8               				1	0	0	0	0		10	0		0	1
jr $ra                         				0	1	0	0	0		00	0		0	0
add $s0, $zero, $v0            				1	0	0	0	0		10	0		0	1
