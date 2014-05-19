`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:21:26 03/28/2014 
// Design Name: 
// Module Name:    cu 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cu(inst,zero,rs1,rs2,rd,erd,mrd,ewreg,mwreg,esld,
			wreg,sst,m2reg,shift,aluimm,sext,aluc,wmem,pcsource,adepend,bdepend,sdepend,loaddepend,wzero);
	input[31:0] inst;
	input zero;
	input[4:0] rs1,rs2,rd,erd,mrd;
	input ewreg,mwreg,esld;
	
	output wreg,sst,m2reg,shift,aluimm,sext,wmem;
	output[3:0] aluc;
	output[1:0]	pcsource;
	output[1:0] adepend,bdepend,sdepend;
	output loaddepend,wzero;
	
	wire i_and  = ~inst[31]&~inst[30]&~inst[29]&~inst[28]&~inst[27]&~inst[26];
	wire i_andi  = ~inst[31]&~inst[30]&~inst[29]&~inst[28]&~inst[27]&inst[26];
	wire i_or  = ~inst[31]&~inst[30]&~inst[29]&~inst[28]&inst[27]&~inst[26];
	wire i_ori  = ~inst[31]&~inst[30]&~inst[29]&~inst[28]&inst[27]&inst[26];
	wire i_add  = ~inst[31]&~inst[30]&~inst[29]&inst[28]&~inst[27]&~inst[26];
	wire i_addi  = ~inst[31]&~inst[30]&~inst[29]&inst[28]&~inst[27]&inst[26];
	wire i_sub  = ~inst[31]&~inst[30]&~inst[29]&inst[28]&inst[27]&~inst[26];
	wire i_subi  = ~inst[31]&~inst[30]&~inst[29]&inst[28]&inst[27]&inst[26];
	wire i_load  = ~inst[31]&~inst[30]&inst[29]&~inst[28]&~inst[27]&~inst[26];
	wire i_store  = ~inst[31]&~inst[30]&inst[29]&~inst[28]&~inst[27]&inst[26];
	wire i_beq  = ~inst[31]&~inst[30]&inst[29]&~inst[28]&inst[27]&~inst[26];
	wire i_bne  = ~inst[31]&~inst[30]&inst[29]&~inst[28]&inst[27]&inst[26];
	wire i_branch  = ~inst[31]&~inst[30]&inst[29]&inst[28]&~inst[27]&~inst[26];
	wire i_sll  = ~inst[31]&~inst[30]&inst[29]&inst[28]&~inst[27]&inst[26];
	wire i_srl  = ~inst[31]&~inst[30]&inst[29]&inst[28]&inst[27]&~inst[26];
	wire i_sra  = ~inst[31]&~inst[30]&inst[29]&inst[28]&inst[27]&inst[26];
	
	wire eequ_rs1 = (rs1==erd);
	wire mequ_rs1 = (rs1==mrd);
	wire eequ_rs2 = (rs2==erd);
	wire mequ_rs2 = (rs2==mrd);
	
	wire erd_equ = (rd==erd);
	wire mrd_equ = (rd==mrd);
	
	wire rs2isReg = i_and|i_or|i_add|i_sub|i_sll|i_srl|i_sra;

	assign	wreg	= (i_and|i_andi|i_or|i_ori|i_add| i_addi|i_sub|i_subi|i_load|i_sll|i_srl|i_sra)&~loaddepend; //写寄存器，为1时写寄存器，否则不写
	assign	sst	= i_store;	//是否为store指令，     为1时选择rd写入寄存器堆，否则选择rs2
	assign	m2reg	= i_load;	//存储器数据写入寄存器  为1时选择存储器数据，否则选择ALU结果
	assign	shift	= i_sll|i_srl|i_sra;  //ALU a使用移位位数     为1时使用移位位数，否则使用寄存器数据
	assign   aluimm = i_andi|i_ori|i_addi|i_subi|i_store|i_load;	 //ALU b使用立即数       为1时使用立即数，否则使用寄存器数据
	assign   sext	= i_addi|i_subi;    //立即数符号扩展        为1时符号扩展，否则零扩展
	assign   wmem	= i_store&~loaddepend;		//写存储器              为1时写存储器，否则不写
	
	
	//ALU操作控制码		
	
	assign aluc[3] = i_beq|i_bne|i_branch;
	assign aluc[2] = i_load|i_store|i_sll|i_srl|i_sra;
	assign aluc[1] = i_add|i_sub|i_srl|i_sra|i_addi|i_subi;
	assign aluc[0] = i_or|i_ori|i_sub|i_subi|i_sll|i_sra;
	
	
	
	//下一条指令地址的选择  00选PC+4，01选转移地址，11选跳转地址
	
	assign pcsource[1] = i_branch;
	assign pcsource[0] = i_branch|(i_beq&zero)|(i_bne&(~zero));
	
	//adepend
	
	assign adepend[1] = ((ewreg&eequ_rs1)|(mwreg&mequ_rs1))&~shift;
	assign adepend[0] = (mwreg&mequ_rs1&(~ewreg|~eequ_rs1))|shift;
	
	//bdepend
	
	assign bdepend[1] = rs2isReg&((ewreg&eequ_rs2)|(mwreg&mequ_rs2));
	assign bdepend[0] = ~rs2isReg|(mwreg&mequ_rs2&(~ewreg|~eequ_rs2));
	
	//sdepend
	/*
		sdepend == 00  ->  选 mqb
		sdepend == 01  ->  无定义
		sdepend == 10  ->  与erd相关，选择 d
		sdepend == 11  ->  与mrd相关，选择 pre_d
	*/
	
	assign sdepend[1] = ((ewreg&erd_equ)|(mwreg&mrd_equ))&i_store;
	assign sdepend[0] = (mwreg&mrd_equ&(~ewreg|~erd_equ))&i_store;
	
	//loaddepend
	assign loaddepend = esld & ( (adepend[1]&~adepend[0]) | (bdepend[1]&~bdepend[0]) );

	// wzero
	assign wzero = (i_add|i_addi|i_sub|i_subi)&~loaddepend;
	
endmodule
