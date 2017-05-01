Ciclo		Instrucción
1			j main                         
----------
IF/ID
j main                         
Add_PC: 0
Ins: j main                         
----------
ID/EX
j main                         
Add_PC: (null)
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
j main                         
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
2			jal factorial                  
----------
IF/ID
jal factorial                  
Add_PC: 0
Ins: jal factorial                  
----------
ID/EX
j main                         
Add_PC: (null)
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
j main                         
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


Ciclo		Instrucción
3			add $s0, $zero, $v0            
----------
IF/ID
add $s0, $zero, $v0            
Add_PC: 0
Ins: add $s0, $zero, $v0            
----------
ID/EX
jal factorial                  
Add_PC: (null)
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
j main                         
RegWrite: 0
MemToReg: 0
Read_data: 0
ALU_Result: 0
Mux_RegDst: 
----------


