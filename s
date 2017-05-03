Ciclo		Instrucción
1			j main                         
----------
IF/ID
j main                         
Add_PC: 4
Ins: j main                         
----------
ID/EX
EMPTY
Add_PC: 0
ALUSrc: 0
ALUOP: 0
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 0
Read_data_1: 0
Read_data_2: 0
Sign_extend: 0
Rs: 
Rt: 
Rd: 
----------
EX/MEM
EMPTY
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
EMPTY
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
2			beq $a0, $zero, condicionBorde 
----------
IF/ID
beq $a0, $zero, condicionBorde 
Add_PC: 8
Ins: beq $a0, $zero, condicionBorde 
----------
ID/EX
j main                         
Add_PC: 4
ALUSrc: 0
ALUOP: 0
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 0
Read_data_1: 0
Read_data_2: 0
Sign_extend: 0
Rs: 
Rt: 
Rd: 
----------
EX/MEM
EMPTY
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
EMPTY
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
3			addi $sp, $sp, -8              
----------
IF/ID
addi $sp, $sp, -8              
Add_PC: 12
Ins: addi $sp, $sp, -8              
----------
ID/EX
beq $a0, $zero, condicionBorde 
Add_PC: 8
ALUSrc: 0
ALUOP: 1
RegDst: 0
Branch: 1
Memwrite: 0
MemRead: 0
RegWrite: 0
Read_data_1: 1386
Read_data_2: 0
Sign_extend: 0
Rs: $a0,
Rt: $zero,
Rd: 
----------
EX/MEM
j main                         
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
EMPTY
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
4			sw $ra, 0($sp)                 
----------
IF/ID
sw $ra, 0($sp)                 
Add_PC: 16
Ins: sw $ra, 0($sp)                 
----------
ID/EX
addi $sp, $sp, -8              
Add_PC: 12
ALUSrc: 1
ALUOP: 10
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 1
Read_data_1: 4096
Read_data_2: 0
Sign_extend: 1
Rs: $sp,
Rt: $sp,
Rd: 
----------
EX/MEM
beq $a0, $zero, condicionBorde 
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
j main                         
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
5			sw $a0, 4($sp)                 
----------
IF/ID
sw $a0, 4($sp)                 
Add_PC: 20
Ins: sw $a0, 4($sp)                 
----------
ID/EX
sw $ra, 0($sp)                 
Add_PC: 16
ALUSrc: 1
ALUOP: 0
RegDst: 0
Branch: 0
Memwrite: 1
MemRead: 0
RegWrite: 0
Read_data_1: 3000
Read_data_2: 4096
Sign_extend: 1
Rs: $ra,
Rt: 0($sp)
Rd: 
----------
EX/MEM
addi $sp, $sp, -8              
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
beq $a0, $zero, condicionBorde 
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
6			addi $a0, $a0, -1              
----------
IF/ID
addi $a0, $a0, -1              
Add_PC: 24
Ins: addi $a0, $a0, -1              
----------
ID/EX
sw $a0, 4($sp)                 
Add_PC: 20
ALUSrc: 1
ALUOP: 0
RegDst: 0
Branch: 0
Memwrite: 1
MemRead: 0
RegWrite: 0
Read_data_1: 1386
Read_data_2: 4096
Sign_extend: 1
Rs: $a0,
Rt: 4($sp)
Rd: 
----------
EX/MEM
sw $ra, 0($sp)                 
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
addi $sp, $sp, -8              
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
7			add $t0, $t0, $a0              
----------
IF/ID
add $t0, $t0, $a0              
Add_PC: 28
Ins: add $t0, $t0, $a0              
----------
ID/EX
addi $a0, $a0, -1              
Add_PC: 24
ALUSrc: 1
ALUOP: 10
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 1
Read_data_1: 1386
Read_data_2: 0
Sign_extend: 1
Rs: $a0,
Rt: $a0,
Rd: 
----------
EX/MEM
sw $a0, 4($sp)                 
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
sw $ra, 0($sp)                 
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
8			add $t1, $t0, $a0              
----------
IF/ID
add $t1, $t0, $a0              
Add_PC: 32
Ins: add $t1, $t0, $a0              
----------
ID/EX
add $t0, $t0, $a0              
Add_PC: 28
ALUSrc: 1
ALUOP: 10
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 1
Read_data_1: 1386
Read_data_2: 0
Sign_extend: 1
Rs: $a0,
Rt: $a0,
Rd: 
----------
EX/MEM
addi $a0, $a0, -1              
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
sw $a0, 4($sp)                 
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
9			jal factorial                  
----------
IF/ID
jal factorial                  
Add_PC: 36
Ins: jal factorial                  
----------
ID/EX
add $t1, $t0, $a0              
Add_PC: 32
ALUSrc: 1
ALUOP: 10
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 1
Read_data_1: 1386
Read_data_2: 0
Sign_extend: 1
Rs: $a0,
Rt: $a0,
Rd: 
----------
EX/MEM
add $t0, $t0, $a0              
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
addi $a0, $a0, -1              
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
10			lw $ra, 0($sp)                 
----------
IF/ID
lw $ra, 0($sp)                 
Add_PC: 40
Ins: lw $ra, 0($sp)                 
----------
ID/EX
jal factorial                  
Add_PC: 36
ALUSrc: 1
ALUOP: 10
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 1
Read_data_1: 1386
Read_data_2: 0
Sign_extend: 1
Rs: $a0,
Rt: $a0,
Rd: 
----------
EX/MEM
add $t1, $t0, $a0              
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
add $t0, $t0, $a0              
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
11			lw $a0, 4($sp)                 
----------
IF/ID
lw $a0, 4($sp)                 
Add_PC: 44
Ins: lw $a0, 4($sp)                 
----------
ID/EX
lw $ra, 0($sp)                 
Add_PC: 40
ALUSrc: 1
ALUOP: 0
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 1
RegWrite: 1
Read_data_1: 3000
Read_data_2: 4096
Sign_extend: 1
Rs: $ra,
Rt: 0($sp)
Rd: 
----------
EX/MEM
jal factorial                  
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
add $t1, $t0, $a0              
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
12			mul $v0, $v0, $a0              
----------
IF/ID
mul $v0, $v0, $a0              
Add_PC: 48
Ins: mul $v0, $v0, $a0              
----------
ID/EX
lw $a0, 4($sp)                 
Add_PC: 44
ALUSrc: 1
ALUOP: 0
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 1
RegWrite: 1
Read_data_1: 1386
Read_data_2: 4096
Sign_extend: 1
Rs: $a0,
Rt: 4($sp)
Rd: 
----------
EX/MEM
lw $ra, 0($sp)                 
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
jal factorial                  
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
13			addi $sp, $sp, 8               
----------
IF/ID
addi $sp, $sp, 8               
Add_PC: 52
Ins: addi $sp, $sp, 8               
----------
ID/EX
mul $v0, $v0, $a0              
Add_PC: 48
ALUSrc: 1
ALUOP: 0
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 1
RegWrite: 1
Read_data_1: 1386
Read_data_2: 4096
Sign_extend: 1
Rs: $a0,
Rt: 4($sp)
Rd: 
----------
EX/MEM
lw $a0, 4($sp)                 
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
lw $ra, 0($sp)                 
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
14			jr $ra                         
----------
IF/ID
jr $ra                         
Add_PC: 56
Ins: jr $ra                         
----------
ID/EX
addi $sp, $sp, 8               
Add_PC: 52
ALUSrc: 1
ALUOP: 10
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 1
Read_data_1: 4096
Read_data_2: 0
Sign_extend: 1
Rs: $sp,
Rt: $sp,
Rd: 
----------
EX/MEM
mul $v0, $v0, $a0              
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
lw $a0, 4($sp)                 
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
15			addi $v0, $zero, 1             
----------
IF/ID
EMPTY
Add_PC: 0
Ins: 
----------
ID/EX
jr $ra                         
Add_PC: 56
ALUSrc: 0
ALUOP: 0
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 1
Read_data_1: 3000
Read_data_2: 0
Sign_extend: 0
Rs: 
Rt: 
Rd: 
----------
EX/MEM
EMPTY
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
EMPTY
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
16			lw $ra, 0($sp)                 
----------
IF/ID
lw $ra, 0($sp)                 
Add_PC: 64
Ins: lw $ra, 0($sp)                 
----------
ID/EX
EMPTY
Add_PC: 56
ALUSrc: 0
ALUOP: 0
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 1
Read_data_1: 3000
Read_data_2: 0
Sign_extend: 0
Rs: 
Rt: 
Rd: 
----------
EX/MEM
jr $ra                         
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
EMPTY
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
17			lw $a0, 4($sp)                 
----------
IF/ID
lw $a0, 4($sp)                 
Add_PC: 68
Ins: lw $a0, 4($sp)                 
----------
ID/EX
lw $ra, 0($sp)                 
Add_PC: 64
ALUSrc: 1
ALUOP: 0
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 1
RegWrite: 1
Read_data_1: 3000
Read_data_2: 4096
Sign_extend: 1
Rs: $ra,
Rt: 0($sp)
Rd: 
----------
EX/MEM
EMPTY
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
jr $ra                         
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
18			addi $sp, $sp, 4               
----------
IF/ID
addi $sp, $sp, 4               
Add_PC: 72
Ins: addi $sp, $sp, 4               
----------
ID/EX
lw $a0, 4($sp)                 
Add_PC: 68
ALUSrc: 1
ALUOP: 0
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 1
RegWrite: 1
Read_data_1: 1386
Read_data_2: 4096
Sign_extend: 1
Rs: $a0,
Rt: 4($sp)
Rd: 
----------
EX/MEM
lw $ra, 0($sp)                 
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
EMPTY
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
19			addi $sp, $sp, 4               
----------
IF/ID
addi $sp, $sp, 4               
Add_PC: 76
Ins: addi $sp, $sp, 4               
----------
ID/EX
addi $sp, $sp, 4               
Add_PC: 72
ALUSrc: 1
ALUOP: 10
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 1
Read_data_1: 4096
Read_data_2: 0
Sign_extend: 1
Rs: $sp,
Rt: $sp,
Rd: 
----------
EX/MEM
lw $a0, 4($sp)                 
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
lw $ra, 0($sp)                 
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
20			jr $ra                         
----------
IF/ID
jr $ra                         
Add_PC: 80
Ins: jr $ra                         
----------
ID/EX
addi $sp, $sp, 4               
Add_PC: 76
ALUSrc: 1
ALUOP: 10
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 1
Read_data_1: 4096
Read_data_2: 0
Sign_extend: 1
Rs: $sp,
Rt: $sp,
Rd: 
----------
EX/MEM
addi $sp, $sp, 4               
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
lw $a0, 4($sp)                 
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
21			addi $a0, $zero, 6             
----------
IF/ID
EMPTY
Add_PC: 0
Ins: 
----------
ID/EX
jr $ra                         
Add_PC: 80
ALUSrc: 0
ALUOP: 0
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 1
Read_data_1: 3000
Read_data_2: 0
Sign_extend: 0
Rs: 
Rt: 
Rd: 
----------
EX/MEM
EMPTY
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
EMPTY
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
22			jal factorial                  
----------
IF/ID
jal factorial                  
Add_PC: 88
Ins: jal factorial                  
----------
ID/EX
EMPTY
Add_PC: 80
ALUSrc: 0
ALUOP: 0
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 1
Read_data_1: 3000
Read_data_2: 0
Sign_extend: 0
Rs: 
Rt: 
Rd: 
----------
EX/MEM
jr $ra                         
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
EMPTY
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
23			add $s0, $zero, $v0            
----------
IF/ID
add $s0, $zero, $v0            
Add_PC: 92
Ins: add $s0, $zero, $v0            
----------
ID/EX
jal factorial                  
Add_PC: 88
ALUSrc: 0
ALUOP: 0
RegDst: 0
Branch: 0
Memwrite: 0
MemRead: 0
RegWrite: 1
Read_data_1: 3000
Read_data_2: 0
Sign_extend: 0
Rs: 
Rt: 
Rd: 
----------
EX/MEM
EMPTY
Branch: 0
MemWrite: 0
MemRead: 0
RegWrite: 0
MemToReg: 0
Zero: 0
ALU_Result: 0
Read_data_2: 0
Add_result: 0
Mux_RegDst: 
----------
MEM/WB
jr $ra                         
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


