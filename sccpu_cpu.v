`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:31:27 03/28/2014 
// Design Name: 
// Module Name:    sccpu_cpu 
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
module sccpu_cpu(
input clk,
input clrn,
output reg[31:0] pc,
output [31:0] inst,
output wire[31:0] dataout,result,d,
output zero,wreg,m2reg,
output wire[1:0] pcsource
);
	wire [4:0] rs1,rs2,rd,rna,rnb,wn,sa;
	wire [31:0] qa,qb,a,b;
	wire sst,shift,aluimm,sext,wmem,wzero;
	wire [1:0] adepend,bdepend,sdepend;
	wire loaddepend;
	wire[3:0] aluc;
	wire [15:0] imme;
	
	wire[31:0] inst_out;
   wire[31:0] eximme,next_pc,ex_sa;	
	reg[31:0] clk_cnt;
	
	wire ewreg,em2reg,eshift,ealuimm,ewmem,ewzero;
	wire [1:0] eadepend,ebdepend,esdepend;
	wire[3:0] ealuc;
	wire[4:0] erd,esa;
	wire[31:0] eqa,eqb,eeximme;
	
	wire mwreg,mm2reg,mwmem;
	wire[1:0] msdepend;
	wire[4:0] mrd;
	wire[31:0] mresult,mqb;
	
	wire wwreg,wm2reg;
	wire[4:0] wrd;
	wire[31:0] wresult,wdataout;
	wire[31:0] pre_d;
	
	wire[31:0] m_data;

	initial begin
		pc = 0;
		clk_cnt= 0;
	end
	
	IP_ROM InstMem(pc,inst_out);
	
	dffinst ip(inst_out,clk,clrn,loaddepend,inst);
	
	next_pc go_pc(inst,pcsource,clk,loaddepend,pc,next_pc);
	
	always @(next_pc)
	begin
			 pc <= next_pc;
	end
	
	assign rs1 = inst[20:16];
	assign rs2 = inst[4:0];
	assign rd  = inst[25:21];
	assign imme = inst[15:0];
	assign sa = inst[20:16];	
	
	cu control_unit(inst,zero,rs1,rs2,rd,erd,mrd,ewreg,mwreg,em2reg,
			wreg,sst,m2reg,shift,aluimm,sext,aluc,wmem,pcsource,adepend,bdepend,sdepend,loaddepend,wzero);
	
	assign rna = rs1;
	mux2x5 slct_rnb(rs2,rd,sst,rnb);	
	mux2x32 slct_d(wresult,wdataout,wm2reg,d);	
	assign wn = wrd;
   
	dffd push_d(d,clk,clrn,pre_d);
	regfile rf(rna,rnb,d,wn,wwreg,clk,clrn,qa,qb);

	expand expand_imme(imme,sext,eximme);
	
	diff_d2e push_d2e(
		clk,clrn,  
		wreg,m2reg,shift,aluimm,wmem,wzero,aluc,rd,qa,qb,eximme,sa,adepend,bdepend,sdepend,
		ewreg,em2reg,eshift,ealuimm,ewmem,ewzero,ealuc,erd,eqa,eqb,eeximme,esa,eadepend,ebdepend,esdepend
	);

	assign ex_sa = {{27{esa[4]}},esa[4:0]};
	//mux2x32 slct_a(eqa,ex_sa,eshift,a);
	//mux2x32 slct_b(eqb,eeximme,ealuimm,b);
	mux4x32 slct_a(eqa,ex_sa,mresult,d,eadepend,a);
	mux4x32 slct_b(eqb,eeximme,mresult,d,ebdepend,b);
	
	alu alu_unit(a,b,ealuc,ewzero,zero,result);
	
	diff_e2m push_e2m(
		clk,clrn,  
		ewreg,em2reg,ewmem,erd,result,eqb,esdepend,
		mwreg,mm2reg,mwmem,mrd,mresult,mqb,msdepend
	);
	
	mux4x32 slct_m_data(mqb,mqb,d,pre_d,msdepend,m_data);
	
	IP_RAM DataMem(mwmem,mresult,m_data,clk,dataout);
	
	diff_m2w push_m2w(
		clk,clrn,
		mwreg,mm2reg,mrd,mresult,dataout,
		wwreg,wm2reg,wrd,wresult,wdataout
	);
	
	
	//以下为测试用
	always @(posedge clk)	//控制时钟周期执行个数
	begin
		clk_cnt = clk_cnt + 1;
		if (clk_cnt==550)
	 		$stop;
	end
	
	always @(inst)			//若指令全零则终止
	begin 
		if (inst==0)
			$stop;
	end
	
endmodule

