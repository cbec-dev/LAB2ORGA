#include <stdio.h>
#include <string.h>
#include <stdlib.h> // For exit() function


// Estructuras de datos (Instruccion y Buffers)


struct _instruction {					// Se guardarán las instrucciones del archivo de entrada en una lista.
    char ins[50];
	int pc;
	char op[30];
	char r1[20];
	char r2[20];
	char r3[20];
	
    struct _instruction *next;
    };


		
struct _bufferIFID {					
	long Add_PC;
	char ins[40];
    };
		
struct _bufferIDEX {
	long Add_PC;
	int ALUSrc;
	int ALUOP;
	int RegDst;
	int Branch;
	int MemWrite;
	int MemRead;
	int RegWrite;
	int MemToReg;
	long Read_data_1;
	long Read_data_2;
	long Sign_extend;
	char Rs[10];
	char Rt[10];
	char Rd[10];
	};

struct _bufferEXMEM {					
	int Branch;
	int MemWrite;
	int MemRead;
	int RegWrite;
	int MemToReg;
	int Zero;
	long ALU_Result;
	long Read_data_2;
	long Add_result;
	char Mux_RegDst[10];
    };
		
struct _bufferMEMWB {					
	int RegWrite;
	int MemToReg;
	long Read_data;
	long ALU_Result;
	char Mux_RegDst[10];	
		
    };




// Variables globales (Registros) (array de instrucciones)		En el main se actualizarán con los valores del archivo de entrada de Registros.


long at = 0;
long v0 = 0;
long v1 = 0;
long a0 = 0;
long a1 = 0;
long a2 = 0;
long a3 = 0;
long t0 = 0;
long t1 = 0;
long t2 = 0;
long t3 = 0;
long t4 = 0;
long t5 = 0;
long t6 = 0;
long t7 = 0;
long s0 = 0;
long s1 = 0;
long s2 = 0;
long s3 = 0;
long s4 = 0;
long s5 = 0;
long s6 = 0;
long s7 = 0;
long t8 = 0;
long t9 = 0;
long k0 = 0;
long k1 = 0;
long gp = 0;
long sp = 0;
long stack[100];
long fp = 0;
long ra = 0;
long zero = 0;

struct _instruction *ins[4];

struct _instruction *first, *last;		// Punteros hacía el primer y último elemento de la lista (primera y última instrucción del archivo de entrada en este caso).
struct _bufferIFID *IFID;				//Buffers
struct _bufferIDEX *IDEX;		
struct _bufferEXMEM *EXMEM;		
struct _bufferMEMWB *MEMWB;








 
void add(char in[50], int pc) {
	
	struct _instruction *nuevo;

	char *first_newline = strpbrk( in, "\n" );			// Para eliminar el newline al final de cada instrucción
	if (first_newline!=NULL) 
	{
		*first_newline = 0;
	}

	nuevo = (struct _instruction *) malloc (sizeof(struct _instruction));
	if (nuevo==NULL) printf( "No hay memoria disponible!\n");

	strcpy( nuevo->ins, in);
	nuevo->pc = pc;

	nuevo->next = NULL;
	if (first==NULL) {
		first = nuevo;
		last = nuevo;
	}
	else {
		last->next = nuevo;
		last = nuevo;
	}
}

void pcUpdate() 	//Rellena los valores del PC en la lista.					
{
	
	struct _instruction *aux; /* lo usamos para recorrer la lista */
	int i;
	i=0;
	aux = first;
	while (aux!=NULL) {
		if(strstr(aux->op,":")!=NULL)
		{
			aux->pc=i;
		}
		else 
		{
			aux->pc=i;
			i=i+4;
		}
	    aux = aux->next;
	}
}

void updateReg(char *r, int value)			//funcion que actualiza un registro con el valor de entrada;
{
	
	if(strstr(r,"at")!=NULL) at=value;
	if(strstr(r,"v0")!=NULL) v0=value;
	if(strstr(r,"v1")!=NULL) v1=value;
	if(strstr(r,"a0")!=NULL) a0=value;
	if(strstr(r,"a1")!=NULL) a1=value;
	if(strstr(r,"a2")!=NULL) a2=value;
	if(strstr(r,"a3")!=NULL) a3=value;
	if(strstr(r,"t0")!=NULL) t0=value;
	if(strstr(r,"t1")!=NULL) t1=value;
	if(strstr(r,"t2")!=NULL) t2=value;
	if(strstr(r,"t3")!=NULL) t3=value;
	if(strstr(r,"t4")!=NULL) t4=value;
	if(strstr(r,"t5")!=NULL) t5=value;
	if(strstr(r,"t6")!=NULL) t6=value;
	if(strstr(r,"t7")!=NULL) t7=value;
	if(strstr(r,"s0")!=NULL) s0=value;
	if(strstr(r,"s1")!=NULL) s1=value;
	if(strstr(r,"s2")!=NULL) s2=value;
	if(strstr(r,"s3")!=NULL) s3=value;
	if(strstr(r,"s4")!=NULL) s4=value;
	if(strstr(r,"s5")!=NULL) s5=value;
	if(strstr(r,"s6")!=NULL) s6=value;
	if(strstr(r,"s7")!=NULL) s7=value;
	if(strstr(r,"t8")!=NULL) t8=value;
	if(strstr(r,"t9")!=NULL) t9=value;
	if(strstr(r,"k0")!=NULL) k0=value;
	if(strstr(r,"k1")!=NULL) k1=value;
	if(strstr(r,"gp")!=NULL) gp=value;
	if(strstr(r,"sp")!=NULL) sp=value;
	if(strstr(r,"fp")!=NULL) fp=value;
	if(strstr(r,"ra")!=NULL) ra=value;
	
}

int getRegValue(char *r)			//funcion que retorna el valor que guarda cierto registro
{
	if(strstr(r,"zero")!=NULL) return zero;
	if(strstr(r,"at")!=NULL) return at;
	if(strstr(r,"v0")!=NULL) return v0;
	if(strstr(r,"v1")!=NULL) return v1;
	if(strstr(r,"a0")!=NULL) return a0;
	if(strstr(r,"a1")!=NULL) return a1;
	if(strstr(r,"a2")!=NULL) return a2;
	if(strstr(r,"a3")!=NULL) return a3;
	if(strstr(r,"t0")!=NULL) return t0;
	if(strstr(r,"t1")!=NULL) return t1;
	if(strstr(r,"t2")!=NULL) return t2;
	if(strstr(r,"t3")!=NULL) return t3;
	if(strstr(r,"t4")!=NULL) return t4;
	if(strstr(r,"t5")!=NULL) return t5;
	if(strstr(r,"t6")!=NULL) return t6;
	if(strstr(r,"t7")!=NULL) return t7;
	if(strstr(r,"s0")!=NULL) return 0;		//s0 siempre retornará 0 independiente de la posicion pedida ya que se nos dijo que asumieramos que era un array de 0s.
	if(strstr(r,"s1")!=NULL) return s1;
	if(strstr(r,"s2")!=NULL) return s2;
	if(strstr(r,"s3")!=NULL) return s3;
	if(strstr(r,"s4")!=NULL) return s4;
	if(strstr(r,"s5")!=NULL) return s5;
	if(strstr(r,"s6")!=NULL) return s6;
	if(strstr(r,"s7")!=NULL) return s7;
	if(strstr(r,"t8")!=NULL) return t8;
	if(strstr(r,"t9")!=NULL) return t9;
	if(strstr(r,"k0")!=NULL) return k0;
	if(strstr(r,"k1")!=NULL) return k1;
	if(strstr(r,"gp")!=NULL) return gp;
	if(strstr(r,"sp")!=NULL) return sp;		
	if(strstr(r,"fp")!=NULL) return fp;
	if(strstr(r,"ra")!=NULL) return ra;
	return atoi(r);
}

int getLongerInstruction()			//Obtiene el string instruccion de la mayor longitud, es util para la funcion siguiente.
{
	struct _instruction *aux; /* lo usamos para recorrer la lista */
	int length=0;
	aux = first;
	while (aux!=NULL) 
	{
		if(strlen(aux->ins)>length) length=strlen(aux->ins);

	
	    aux = aux->next;
	}
	return length;
}

void fixInstructionsLength(int length)				//Dejamos todas las instrucciones con la misma longitud (rellenando los strings con espacios) a modo de poder imprimir las tablas correctamente.
{
	struct _instruction *aux; /* lo usamos para recorrer la lista */
	aux = first;
	while (aux!=NULL) 
	{
		while(strlen(aux->ins)<length+1)
		{
			strcat(aux->ins, " ");
		}

	
	    aux = aux->next;
	}
}

void printRegisters (FILE *fp1)			//Funcion para imprimir todos los registros cuando sea necesario.
{
	fprintf(fp1, "\t");
	fprintf(fp1, "%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i\t%i",at,v0,v1,a0,a1,a2,a3,t0,t1,t2,t3,t4,t5,t6,t7,s0,s1,s2,s3,s4,s5,s6,s7,t8,t9,k0,k1,gp,sp,fp,ra,zero);
}

void idInstruction(struct _instruction *in)
{
	char str[50];
	strcpy(str, in->ins);
	const char s[2] = " ";
	char *token;
	strcpy(in->op,"\0");			//Reemplazamos los valores basura por caracter vacio.
	strcpy(in->r1,"\0");
	strcpy(in->r2,"\0");
	strcpy(in->r3,"\0");
	
	token = strtok(str, s);

	int i=0;

	
	while( token != NULL  && strstr(token,"\n")==NULL) 
	{
		if (i==0)
		{

			if(token!=NULL) strcpy(in->op,token);

			i=i+1;
			token = strtok(NULL, s);
			
		}
		if (i==1)
		{
			if(token!=NULL) strcpy(in->r1,token);
			i=i+1;
			token = strtok(NULL, s);
			
		}
		if (i==2)
		{
			if(token!=NULL) strcpy(in->r2,token);
			i=i+1;
			token = strtok(NULL, s);
			
		}
		if (i==3)
		{
			if(token!=NULL) strcpy(in->r3,token);
			i=i+1;
			token = strtok(NULL, s);
			
		}
	}
}

void ctrlCheck(struct _instruction *in, FILE *fp2) 
{

	if((strcmp(in->op,"add"))==0 || (strcmp(in->op,"addi"))==0 || (strcmp(in->op,"sub"))==0 || (strcmp(in->op,"subi"))==0 || (strcmp(in->op,"mul"))==0 || (strcmp(in->op,"div"))==0)
	{
		// TIPO R
		fprintf(fp2, "\t\t\t\t1\t0\t0\t0\t0\t\t10\t0\t\t0\t1\n");

	}
	
	if((strcmp(in->op,"lw"))==0 || (strcmp(in->op,"la"))==0 || (strcmp(in->op,"li"))==0)
	{
		// LW y LA

		fprintf(fp2, "\t\t\t\t\t0\t0\t0\t1\t1\t\t00\t0\t\t1\t1\n");
	}
	
	if((strcmp(in->op,"beq"))==0 || (strcmp(in->op,"bgt"))==0 || (strcmp(in->op,"blt"))==0)
	{
		// branchs
		fprintf(fp2, "\t\t\t\t0\t0\t1\t0\t0\t\t00\t0\t\t0\t0\n");
	}
	
		if((strcmp(in->op,"sw"))==0)
	{
		// SW
		fprintf(fp2, "\t\t\t\t0\t0\t0\t0\t0\t\t00\t1\t\t1\t0\n");
	}
	
	if((strcmp(in->op,"j"))==0 || (strcmp(in->op,"jal"))==0 || (strcmp(in->op,"jr"))==0)
		
	{
		// TIPO J
		fprintf(fp2, "\t\t\t\t0\t1\t0\t0\t0\t\t00\t0\t\t0\t0\n");
	}
	
	if(strstr(in->op,":")!=NULL)
	{
		//LABEL
	}
	
}



struct _instruction *searchByPC(int pc)			//Funcion que busca una instruccion en la lista mediante su PC.
{
	struct _instruction *aux; /* lo usamos para recorrer la lista */
	aux = first;
	while (aux!=NULL) {
		if ((aux->pc==pc) && (strstr(aux->op,":")==NULL))
		{
			return aux;
		}
	    aux = aux->next;
	}
}


int searchPCByLabel(char *label)			//Funcion que busca el PC correspondiente a la instruccion que viene despues de un label
{
	struct _instruction *aux; /* lo usamos para recorrer la lista */
	aux = first;
	while (aux!=NULL) {

		if (strstr(aux->op,label)!=NULL && (strlen(aux->op)==strlen(label)+1))
		{
			return aux->pc;
		}
	    aux = aux->next;
	}
}

void addToSP(int value, char *r)			//Funcion que agrega un valor al array del registro sp
{
	char* rAux;
	rAux = (char *) malloc (sizeof(r));
	printf("AQUI");
	strcpy(rAux,r);
	printf("AQUI");
	char *token;
	token = strtok(rAux, "(");
	stack[((sp+atoi(token))/4)*(-1)]=value;
	printf("ADD TO SP: %i - %i\n", ((sp+atoi(token))/4)*(-1), value);
}

int getFromSP(char *r)			//Funcion que agrega un valor al array del registro sp
{
	char* rAux;
	rAux = (char *) malloc (sizeof(r));
	strcpy(rAux,r);
	char *token;
	token = strtok(rAux, "(");
	return stack[((sp+atoi(token))/4)*(-1)];
}

void printSP()
{
	int i=0;
	while(i<100)
	{
		printf("%i - %i\n", i, stack[i]);
		i++;
	}
}

void flush(struct _bufferIFID *IFID, struct _bufferIDEX *IDEX, struct _bufferEXMEM *EXMEM, struct _bufferMEMWB *MEMWB)
{
	IFID->Add_PC=0;				//Flush de IFID
	strcpy(IFID->ins,"");

	IDEX->Add_PC=0;				//Flush de IDEX
	IDEX->ALUSrc=0;
	IDEX->ALUOP=0;
	IDEX->RegDst=0;
	IDEX->Branch=0;
	IDEX->MemWrite=0;
	IDEX->MemRead=0;
	IDEX->RegWrite=0;
	IDEX->MemToReg=0;
	IDEX->Read_data_1=0;
	IDEX->Read_data_2=0;
	IDEX->Sign_extend=0;
	strcpy(IDEX->Rs,"");
	strcpy(IDEX->Rt,"");
	strcpy(IDEX->Rd,"");

	EXMEM->Branch=0;			//Flush de EXMEM
	EXMEM->MemWrite=0;
	EXMEM->MemRead=0;
	EXMEM->RegWrite=0;
	EXMEM->MemToReg=0;
	EXMEM->Zero=0;
	EXMEM->ALU_Result=0;
	EXMEM->Read_data_2=0;
	EXMEM->Add_result=0;
	strcpy(EXMEM->Mux_RegDst,"");

	MEMWB->RegWrite=0;			//Flush de MEMWB
	MEMWB->MemToReg=0;
	MEMWB->Read_data=0;
	MEMWB->ALU_Result=0;
	strcpy(MEMWB->Mux_RegDst,"");
}

void printBuffers(FILE *fp2)
{
	fprintf(fp2, "\t\t\t");
	printf("HOLA");
	fprintf(fp2, "Add_PC: %ld", IFID->Add_PC);
	fprintf(fp2, "\t");
	fprintf(fp2, "Add_PC: %i", IDEX->Add_PC);
	fprintf(fp2, "\t");
	fprintf(fp2, "Branch: %i", EXMEM->Branch);
	fprintf(fp2, "\t");
	fprintf(fp2, "RegWrite: %i", MEMWB->RegWrite);
	fprintf(fp2, "\n");

	fprintf(fp2, "\t\t\t");
	fprintf(fp2, "Ins: %s", IFID->ins);
	fprintf(fp2, "\t");
	fprintf(fp2, "ALUSrc: %i", IDEX->ALUSrc);
	fprintf(fp2, "\t");
	fprintf(fp2, "MemWrite: %i", EXMEM->MemWrite);
	fprintf(fp2, "\t");
	fprintf(fp2, "MemToReg: %i", MEMWB->MemToReg);
	fprintf(fp2, "\n");

	fprintf(fp2, "\t\t\t\t\t\t");
	fprintf(fp2, "ALUOP: %i", IDEX->ALUOP);
	fprintf(fp2, "\t");
	fprintf(fp2, "MemRead: %i", EXMEM->MemRead);
	fprintf(fp2, "\t");
	fprintf(fp2, "Read_data: %i", MEMWB->Read_data);
	fprintf(fp2, "\n");

	fprintf(fp2, "\t\t\t\t\t\t");
	fprintf(fp2, "RegDst: %i", IDEX->RegDst);
	fprintf(fp2, "\t");
	fprintf(fp2, "RegWrite: %i", EXMEM->RegWrite);
	fprintf(fp2, "\t");
	fprintf(fp2, "ALU_Result: %i", MEMWB->ALU_Result);
	fprintf(fp2, "\n");

	fprintf(fp2, "\t\t\t\t\t\t");
	fprintf(fp2, "Branch: %i", IDEX->Branch);
	fprintf(fp2, "\t");
	fprintf(fp2, "MemToReg: %i", EXMEM->MemToReg);
	fprintf(fp2, "\t");
	fprintf(fp2, "Mux_RegDst: %s", MEMWB->Mux_RegDst);
	fprintf(fp2, "\n");

	fprintf(fp2, "\t\t\t\t\t\t");
	fprintf(fp2, "Memwrite: %i", IDEX->MemWrite);
	fprintf(fp2, "\t");
	fprintf(fp2, "Zero: %i", EXMEM->Zero);
	fprintf(fp2, "\n");

	fprintf(fp2, "\t\t\t\t\t\t");
	fprintf(fp2, "MemRead: %i", IDEX->MemRead);
	fprintf(fp2, "\t");
	fprintf(fp2, "ALU_Result: %ld", EXMEM->ALU_Result);
	fprintf(fp2, "\n");

	fprintf(fp2, "\t\t\t\t\t\t");
	fprintf(fp2, "RegWrite: %i", IDEX->RegWrite);
	fprintf(fp2, "\t");
	fprintf(fp2, "Read_data_2: %i", EXMEM->Read_data_2);
	fprintf(fp2, "\n");

	fprintf(fp2, "\t\t\t\t\t\t");
	fprintf(fp2, "MemToReg: %i", IDEX->MemToReg);
	fprintf(fp2, "\t");
	fprintf(fp2, "Add_result: %i", EXMEM->Add_result);
	fprintf(fp2, "\n");

	fprintf(fp2, "\t\t\t\t\t\t");
	fprintf(fp2, "Read_data_1: %i", IDEX->Read_data_1);
	fprintf(fp2, "\t");
	fprintf(fp2, "Mux_RegDst: %s", EXMEM->Mux_RegDst);
	fprintf(fp2, "\n");

	fprintf(fp2, "\t\t\t\t\t\t");
	fprintf(fp2, "Read_data_2: %i", IDEX->Read_data_2);
	fprintf(fp2, "\n");

	fprintf(fp2, "\t\t\t\t\t\t");
	fprintf(fp2, "Sign_extend: %i", IDEX->Sign_extend);
	fprintf(fp2, "\n");

	fprintf(fp2, "\t\t\t\t\t\t");
	fprintf(fp2, "Rs: %s", IDEX->Rs);
	fprintf(fp2, "\n");

	fprintf(fp2, "\t\t\t\t\t\t");
	fprintf(fp2, "Rt: %s", IDEX->Rt);
	fprintf(fp2, "\n");

	fprintf(fp2, "\t\t\t\t\t\t");
	fprintf(fp2, "Rd: %s", IDEX->Rd);

	fprintf(fp2, "\n\n");

}

void addtoIns(struct _instruction *in)
{

	if(ins[0]==NULL && ins[1]==NULL && ins[2]==NULL && ins[3]==NULL)
	{
		ins[3] = ins[2];
		ins[2] = ins[1];
		ins[1] = ins[0];
		ins[0] = in;
	}

	if(ins[0]==NULL)	ins[0] = in;
	if(ins[1]==NULL)	ins[1] = in;
	if(ins[2]==NULL)	ins[2] = in;
	if(ins[3]==NULL)	ins[3] = in;

}



void print(FILE *fp1, FILE *fp2)
{
	int c=1;			//Ciclo actual.
	pcUpdate();				//Llenamos los valores del PC para cada instruccion.
	ins[0]=NULL;	ins[1]=NULL;	ins[2]=NULL;	ins[3]=NULL;
	fprintf(fp2, "Ciclo\t\tIF/ID\t\t\t\t\t\t\t\t\t\tID/EX\t\t\t\tEX/MEM\t\t\t\tMEM/WB\n");
	addtoIns(aux);
	
	struct _instruction *aux; /* lo usamos para recorrer la lista */
	aux = first;
	while (aux!=NULL) 
	{
		int e=0;
		while(e<5)
		{	


			if(e==0)		//IF
			{
				printf("IF!!!");
				IFID->Add_PC = aux->pc+4;
				strcpy(IFID->ins, aux->ins);

			}

			if(e==1)		//ID
			{

				
			}

			if(e==2)		//EX
			{
				
			}

			if(e==3)		//MEM
			{
				
			}

			if(e==4)		//WB
			{
				
			}





			e++;
		}
		fprintf(fp2, "%i\t\t\t", c);			//Imprimimos el ciclo
		fprintf(fp2, "%s\n", aux->ins);		//Imprimimos instruccion
		printBuffers(fp2);					//Imprimimos buffers
		c++;
		aux = aux->next;
	
	}
}






















void trazaFull(FILE *fp1, FILE *fp2) 						// Imprime los archivos de salida
	{
	pcUpdate();				//Llenamos los valores del PC para cada instruccion.
	fprintf(fp1, "Instrucción\t\t\tETAPA\tPC\t$at\t$v0\t$v1\t$a0\t$a1\t$a2\t$a3\t$t0\t$t1\t$t2\t$t3\t$t4\t$t5\t$t6\t$t7\t$s0\t$s1\t$s2\t$s3\t$s4\t$s5\t$s6\t$s7\t$t8\t$t9\t$k0\t$k1\t$gp\t$sp\t$fp\t$ra\t$zero\n");
	
	struct _instruction *aux; /* lo usamos para recorrer la lista */
	int i;
	int pc=0;
	aux = first;
	while (aux!=NULL) {
		int i=0;
		aux = searchByPC(pc);
		if(aux->ins==NULL) break;
		
		while(i<5)
		{
			fprintf(fp1, "%s\t", aux->ins);			//Imprimimos instruccion en el primer archivo.

			if(i==0) 											//ETAPA IF
			{
//				fprintf(fp2, "%s", aux->ins);			//Imprimimos instruccion en el segundo archivo, se hace solo en IF ya que en el segundo archivo solo debemos imprimir las instrucciones una sola vez.
//				ctrlCheck(aux, fp2);					//Calculo de las lineas de Control.
				
				fprintf(fp1, "\tIF");
				
				// CAMBIOS EN IF
				
				pc = pc + 4;			// AUMENTA EL PC
				
				fprintf(fp1, "\t%i", pc);
				printRegisters(fp1);
				fprintf(fp1, "\n");
			}
			if(i==1) 											//ETAPA ID
			{
				fprintf(fp1, "\tID");
				
				
				// CAMBIOS EN ID
				
				
				if (strcmp(aux->op, "j")==0)
				{
					//j
					pc = searchPCByLabel(aux->r1);
				}
				
				if (strcmp(aux->op, "jal")==0)
				{
					//jal
				}
				
				if (strcmp(aux->op, "jr")==0)
				{
					//jr
				}
				
				

				
				fprintf(fp1, "\t%i", pc);
				printRegisters(fp1);
				fprintf(fp1, "\n");
			}
			if(i==2) 											//ETAPA EX
			{
				fprintf(fp1, "\tEX");
				
				
				// CAMBIOS EN EX
				
				
				fprintf(fp1, "\t%i", pc);
				printRegisters(fp1);
				fprintf(fp1, "\n");
			}
			if(i==3) 											//ETAPA MEM
			{
				fprintf(fp1, "\tMEM");
				
				// CAMBIOS EN MEM
				
				if (strcmp(aux->op, "add")==0)
				{
					//add
				}
				
				if (strcmp(aux->op, "addi")==0)
				{
					//addi
				}
				
				if (strcmp(aux->op, "sub")==0)
				{
					//sub
				}
				
				if (strcmp(aux->op, "subi")==0)
				{
					//subi
				}
				
				if (strcmp(aux->op, "subi")==0)
				{
					//subi
				}
				
				if (strcmp(aux->op, "mul")==0)
				{
					//mul
				}
				
				if (strcmp(aux->op, "div")==0)
				{
					//div
				}
				
				if (strcmp(aux->op, "lw")==0)
				{
					//lw
				}
				
				if (strcmp(aux->op, "sw")==0)
				{
					//sw
				}
				
				if (strcmp(aux->op, "la")==0)
				{
					//la
				}
				
				if (strcmp(aux->op, "j")==0)
				{
					//j
				}
				
				if (strcmp(aux->op, "jal")==0)
				{
					//jal
				}
				
				if (strcmp(aux->op, "jr")==0)
				{
					//jr
				}
				
				if (strcmp(aux->op, "beq")==0)
				{
					//beq
					if (getRegValue(aux->r1)==getRegValue(aux->r2))	//Esta comparacion se realiza en la ALU en la etapa EX en realidad pero para simplicidad de codigo se escribió aquí ya que inmediatamente se muestra el salto al label correspondiente en caso de que esto se cumpla.
					{												
						pc = searchPCByLabel(aux->r3);
					}
				}
				
				if (strcmp(aux->op, "blt")==0)
				{
					//blt
					if (getRegValue(aux->r1)<getRegValue(aux->r2))	//Esta comparacion se realiza en la ALU en la etapa EX en realidad pero para simplicidad de codigo se escribió aquí ya que inmediatamente se muestra el salto al label correspondiente en caso de que esto se cumpla.
					{												
						pc = searchPCByLabel(aux->r3);
					}
				}
				
				if (strcmp(aux->op, "bgt")==0)
				{
					//bgt
					if (getRegValue(aux->r1)>getRegValue(aux->r2))	//Esta comparacion se realiza en la ALU en la etapa EX en realidad pero para simplicidad de codigo se escribió aquí ya que inmediatamente se muestra el salto al label correspondiente en caso de que esto se cumpla.
					{												
						pc = searchPCByLabel(aux->r3);
					}
				}
				
				fprintf(fp1, "\t%i", pc);
				printRegisters(fp1);
				fprintf(fp1, "\n");
			}
			if(i==4) 
			{													//ETAPA WB
				fprintf(fp1, "\tWB");
				
				
				// CAMBIOS EN WB
				
				if (strcmp(aux->op, "add")==0)
				{
					
					int value = getRegValue(aux->r2) + getRegValue(aux->r3);			//se realiza la operacion
					updateReg(aux->r1, value);											//se guarda el resultado en el registro
				}
				
				if (strcmp(aux->op, "addi")==0)
				{
					int value = getRegValue(aux->r2) + atoi(aux->r3);			//se realiza la operacion
					updateReg(aux->r1, value);									//se guarda el resultado en el registro
				}
				
				if (strcmp(aux->op, "sub")==0)
				{
					//sub
					int value = getRegValue(aux->r2) - getRegValue(aux->r3);			//se realiza la operacion
					updateReg(aux->r1, value);											//se guarda el resultado en el registro
				}
				
				if (strcmp(aux->op, "subi")==0)
				{
					//subi
					int value = getRegValue(aux->r2) - atoi(aux->r3);			//se realiza la operacion
					updateReg(aux->r1, value);									//se guarda el resultado en el registro
				}
				
				if (strcmp(aux->op, "mul")==0)
				{
					//mul
					int value = getRegValue(aux->r2) * getRegValue(aux->r3);			//se realiza la operacion
					updateReg(aux->r1, value);											//se guarda el resultado en el registro
				}
				
				if (strcmp(aux->op, "div")==0)
				{
					//div
					if(getRegValue(aux->r3)!=0)
					{
						int value = getRegValue(aux->r2) / getRegValue(aux->r3);			//se realiza la operacion
						updateReg(aux->r1, value);											//se guarda el resultado en el registro
						
					}
				}
				
				if (strcmp(aux->op, "li")==0)
				{
					//li
					updateReg(aux->r1, atoi(aux->r2));											//se actualiza el registro con el valor de la instruccion
					
				}
				
				
				if (strcmp(aux->op, "lw")==0)
				{
					//lw
					
					if(strstr(aux->r2,"sp")!=NULL)					//si queremos cargar desde sp
					{
						int value;
						value = getFromSP(aux->r2);				//obtenemos el valor que pide la instruccion en sp
						updateReg(aux->r1,value);				//lo guardamos en el registro definido por la instruccion
						
					}
					
					
				}
				
				if (strcmp(aux->op, "sw")==0)
				{
					//sw
					printf("\n.SW DETECTADO: %s %s %s.\n",aux->op,aux->r1,aux->r2);
					if(strstr(aux->r2,"sp")!=NULL)					//si queremos guardar en sp
					{
						printf("\n.ADD TO SP DETECTADO: %s %s %s.\n",aux->op,aux->r1,aux->r2);
						addToSP(getRegValue(aux->r1),aux->r2);		//guardamos en sp
						printf("\n.ADD TO SP DETECTADO2: %s %s %s.\n",aux->op,aux->r1,aux->r2);
					}
					else											//si queremos guardar en otro registro
					{
						// 
					}
					
				}
				
				if (strcmp(aux->op, "la")==0)
				{
					//la
				}
				
				if (strcmp(aux->op, "j")==0)
				{
					//j
				}
				
				if (strcmp(aux->op, "jal")==0)
				{
					//jal
					ra = pc;													//Se guarda el PC de la instruccion siguiente al jal en el registro $ra
					pc = searchPCByLabel(aux->r1);								//Se realiza el salto correspondiente
				}
				
				if (strcmp(aux->op, "jr")==0)
				{
					//jr
					int newPC = getRegValue(aux->r1);
					pc = newPC;													//Se actualiza el PC por el valor guardado en el registro de la instruccion
				}
				
				if (strcmp(aux->op, "beq")==0)
				{
					//beq
				}
				
				if (strcmp(aux->op, "blt")==0)
				{
					//blt
				}
				
				if (strcmp(aux->op, "bgt")==0)
				{
					//bgt
				}
				
				
				fprintf(fp1, "\t%i", pc);
				printRegisters(fp1);
				fprintf(fp1, "\n");
			}
			i++;
		}
	    aux = aux->next;
	}
}
 
 
 

 
void separateRegisters() 
{
	struct _instruction *aux; /* lo usamos para recorrer la lista */
	int i;
	aux = first;
	while (aux!=NULL) {
		idInstruction(aux);
		aux = aux->next;
		i++;
	}
}

// TESTING 

void showProgram() 
{
	struct _instruction *aux; /* lo usamos para recorrer la lista */
	int i;
	i=0;
	aux = first;
	while (aux!=NULL) {
	    aux = aux->next;
	    i++;
	}
	if (i==0) printf( "\nArchivo de entrada vacio!!\n" );
}

int main()
{
    char c[1000];			//Variable auxiliar
	char c2[1000];			//Variable auxiliar
    FILE *fptr1;				//puntero al primer archivo de entrada	(codigo)
	FILE *fptr2;				//puntero al segundo archivo de entrada	(registros)
	FILE *fptr3;
	char inputFile1[30];		//nombre archivo de entrada	1 (codigo)
	char inputFile2[30];		//nombre archivo de entrada	2 (registros)
	char outputFile1[30];	//nombre archivo de salida 1
	char outputFile2[30];	//nombre archivo de salida 2

	IFID = (struct _bufferIFID *) malloc (sizeof(struct _bufferIFID));		//Se localiza memoria para los buffers
	IDEX = (struct _bufferIDEX *) malloc (sizeof(struct _bufferIDEX));
	EXMEM = (struct _bufferEXMEM *) malloc (sizeof(struct _bufferEXMEM));
	MEMWB = (struct _bufferMEMWB *) malloc (sizeof(struct _bufferMEMWB));

	flush(IFID, IDEX, EXMEM, MEMWB);				//Flush inicial a los buffers para evitar valores basura.

		
	printf("Bienvenido, por favor ingrese el nombre del archivo de entrada 1 correspondiente al programa MIPs (incluyendo extensión):\n"); // PANTALLA DE BIENVENIDA E INGRESO DE ARCHIVO DE ENTRADA
	scanf("%s", inputFile1);
	
	while ((fptr1 = fopen(inputFile1, "r")) == NULL)														 // CAPTURA DE ERRORES EN CASO DE NOMBRES DE ARCHIVO CONFLICTIVOS ENTRE SI O INEXISTENTES.
    {
        printf("ERROR: El archivo no existe, por favor ingrese otro archivo:\n");
		scanf("%s", inputFile1);
    }
	
	printf("Bienvenido, por favor ingrese el nombre del archivo de entrada 2 correspondiente a los registros (incluyendo extensión):\n"); 
	scanf("%s", inputFile2);
	
	while ((fptr2 = fopen(inputFile2, "r")) == NULL || (strcmp(inputFile2,inputFile1) == 0))
    {
        printf("ERROR: El archivo no existe o tiene el mismo nombre que el archivo de entrada 1, por favor ingrese otro archivo:\n");
		scanf("%s", inputFile2);
    }

	
	
	printf("Ahora ingrese el nombre del archivo de salida 1 (incluyendo extensión):\n");
	scanf("%s", outputFile1);
	
	while ((strcmp(outputFile1,inputFile1) == 0) || (strcmp(outputFile1,inputFile2) == 0))
    {
        printf("ERROR: Por favor ingrese un nombre distinto al de los archivos de entrada:\n");
		scanf("%s", outputFile1);
    }
	
	printf("Ahora ingrese el nombre del archivo de salida 2 (incluyendo extensión):\n");
	scanf("%s", outputFile2);
	
	while ((strcmp(outputFile2,inputFile1) == 0) || (strcmp(outputFile2,inputFile2) == 0) || (strcmp(outputFile2,outputFile1) == 0))
    {
        printf("ERROR: Por favor ingrese un nombre distinto al de los archivos de entrada y el archivo de salida 1:\n");
		scanf("%s", outputFile2);
    }
	
	
	int pcAux=0;	// Entero auxiliar para llenar los valores del PC en cada instruccion
	
	while(!feof(fptr1))				//Se lee el archivo de entrada 1 y se guarda linea por linea en la lista
	{
		fgets(c, 200, fptr1);
		if (strcmp(c,"\n")!=0)
		{
			add(c, pcAux);
			pcAux = pcAux + 4;
		}
	}
	
	printf("HOLA\n");
	printf(".%i.\n", fptr1);
	printf(".%i.\n", fptr2);
	printf(".%i.\n", fptr3);
	
	while(!feof(fptr2))				//Se lee el archivo de entrada 2 y ...
	{
		
		fgets(c2, 200, fptr2);
		
		char *token;
		token = strtok(c2, " ");
		printf(".%s = ", token);
		token = strtok(NULL, "\n");
		printf("%s.\n", token);
	}

	
	fclose(fptr1);				//Se cierra archivo de entrada
	

	separateRegisters();				//Se separan los elementos de las instrucciones en la lista (por tokens).
	int a = getLongerInstruction();		//Se obtiene la longitud de la instruccion mas larga.
	fixInstructionsLength(a);			//Se dejan todos los strings instrucciones con la misma longitud para evitar conflictos con el formato (tabs).
	
	FILE *fp1;							//Se crea archivo salida 1.
	fp1 = fopen(outputFile1, "w+");
	
	FILE *fp2;							//Se crea archivo salida 2.
	fp2 = fopen(outputFile2, "w+");
	
	
//	trazaFull(fp1,fp2);					//Se imprimen las trazas de registros y lineas de control en archivo 1 y 2 respectivamente.

	print(fp1, fp2);
	
	
	
	fclose(fp1);						//Se cierran los archivos
	fclose(fp2);



//	ins = (struct _instruction *) malloc (4*sizeof(struct _instruction));

//	ins[0].pc=7;

//	printf("....%i...\n", ins[0].pc);

	
	printSP();
    return 0;
}
