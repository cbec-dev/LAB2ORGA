Ciclo		IF/ID										ID/EX				EX/MEM				MEM/WB
1			j main                         
			Add_PC: 4	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: j main                         	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

2			factorial:                     
			Add_PC: 8	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: factorial:                     	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

3			beq $a0, $zero, condicionBorde 
			Add_PC: 8	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: beq $a0, $zero, condicionBorde 	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

4			addi $sp, $sp, -8              
			Add_PC: 12	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: addi $sp, $sp, -8              	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

5			sw $ra, 0($sp)                 
			Add_PC: 16	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: sw $ra, 0($sp)                 	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

6			sw $a0, 4($sp)                 
			Add_PC: 20	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: sw $a0, 4($sp)                 	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

7			addi $a0, $a0, -1              
			Add_PC: 24	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: addi $a0, $a0, -1              	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

8			add $t0, $t0, $a0              
			Add_PC: 28	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: add $t0, $t0, $a0              	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

9			add $t1, $t0, $a0              
			Add_PC: 32	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: add $t1, $t0, $a0              	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

10			jal factorial                  
			Add_PC: 36	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: jal factorial                  	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

11			lw $ra, 0($sp)                 
			Add_PC: 40	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: lw $ra, 0($sp)                 	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

12			lw $a0, 4($sp)                 
			Add_PC: 44	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: lw $a0, 4($sp)                 	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

13			mul $v0, $v0, $a0              
			Add_PC: 48	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: mul $v0, $v0, $a0              	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

14			addi $sp, $sp, 8               
			Add_PC: 52	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: addi $sp, $sp, 8               	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

15			jr $ra                         
			Add_PC: 56	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: jr $ra                         	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

16			condicionBorde:                
			Add_PC: 60	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: condicionBorde:                	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

17			addi $v0, $zero, 1             
			Add_PC: 60	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: addi $v0, $zero, 1             	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

18			lw $ra, 0($sp)                 
			Add_PC: 64	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: lw $ra, 0($sp)                 	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

19			lw $a0, 4($sp)                 
			Add_PC: 68	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: lw $a0, 4($sp)                 	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

20			addi $sp, $sp, 4               
			Add_PC: 72	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: addi $sp, $sp, 4               	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

21			addi $sp, $sp, 4               
			Add_PC: 76	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: addi $sp, $sp, 4               	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

22			jr $ra                         
			Add_PC: 80	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: jr $ra                         	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

23			main:                          
			Add_PC: 84	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: main:                          	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

24			addi $a0, $zero, 6             
			Add_PC: 84	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: addi $a0, $zero, 6             	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

25			jal factorial                  
			Add_PC: 88	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: jal factorial                  	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

26			add $s0, $zero, $v0            
			Add_PC: 92	Add_PC: 0	Branch: 0	RegWrite: 0
			Ins: add $s0, $zero, $v0            	ALUSrc: 0	MemWrite: 0	MemToReg: 0
						ALUOP: 0	MemRead: 0	Read_data: 0
						RegDst: 0	RegWrite: 0	ALU_Result: 0
						Branch: 0	MemToReg: 0	Mux_RegDst: 
						Memwrite: 0	Zero: 0
						MemRead: 0	ALU_Result: 0
						RegWrite: 0	Read_data_2: 0
						MemToReg: 0	Add_result: 0
						Read_data_1: 0	Mux_RegDst: 
						Read_data_2: 0
						Sign_extend: 0
						Rs: 
						Rt: 
						Rd: 

