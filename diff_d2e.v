`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:06 04/15/2014 
// Design Name: 
// Module Name:    diff_d2e 
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
module diff_d2e(
		clk,clrn,  
		wreg,m2reg,shift,aluimm,wmem,wzero,aluc,rd,qa,qb,eximme,sa,adepend,bdepend,sdepend,
		ewreg,em2reg,eshift,ealuimm,ewmem,ewzero,ealuc,erd,eqa,eqb,eeximme,esa,eadepend,ebdepend,esdepend
    );
	input clk,clrn;
	input wreg,m2reg,shift,aluimm,wmem,wzero;
	input [3:0]	aluc;
	input [4:0]	rd,sa;
	input[31:0] qa,qb,eximme;
	input [1:0] adepend,bdepend,sdepend;
	
	output ewreg,em2reg,eshift,ealuimm,ewmem,ewzero;
	output[3:0] ealuc;
	output[4:0] erd,esa;
	output[31:0] eqa,eqb,eeximme;
	output [1:0] eadepend,ebdepend,esdepend;
	
	dff1 push_wreg (wreg,clk,clrn,ewreg);
	dff1 push_m2reg (m2reg,clk,clrn,em2reg);
	dff1 push_shift (shift,clk,clrn,eshift);
	dff1 push_aluimm (aluimm,clk,clrn,ealuimm);
	dff1 push_wmem (wmem,clk,clrn,ewmem);
	dff1 push_wzero (wzero,clk,clrn,ewzero);
	dff4 push_aluc (aluc,clk,clrn,ealuc);
	dff5 push_rd (rd,clk,clrn,erd);
	dff5 push_sa (sa,clk,clrn,esa);
	dff32 push_qa (qa,clk,clrn,eqa);
	dff32 push_qb (qb,clk,clrn,eqb);
	dff32 push_eximme (eximme,clk,clrn,eeximme);	
	dff2 push_adepend (adepend,clk,clrn,eadepend);
	dff2 push_bdepend (bdepend,clk,clrn,ebdepend);
	dff2 push_sdepend (sdepend,clk,clrn,esdepend);

endmodule
