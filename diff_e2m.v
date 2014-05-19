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
module diff_e2m(
		clk,clrn,  
		ewreg,em2reg,ewmem,erd,eresult,eqb,esdepend,
		mwreg,mm2reg,mwmem,mrd,mresult,mqb,msdepend
    );
	input clk,clrn;
	input ewreg,em2reg,ewmem;
	input[4:0] erd;
	input[31:0] eresult,eqb;
	input[1:0] esdepend;
	
	output mwreg,mm2reg,mwmem;
	output[4:0] mrd;
	output[31:0] mresult,mqb;
	output[1:0] msdepend;
	
	dff1 push_wreg(ewreg,clk,clrn,mwreg);
	dff1 push_m2reg(em2reg,clk,clrn,mm2reg);
	dff1 push_wmem(ewmem,clk,clrn,mwmem);
	dff5 push_rd(erd,clk,clrn,mrd);
	dff32 push_result(eresult,clk,clrn,mresult);
	dff32 push_qb(eqb,clk,clrn,mqb);
	dff2 push_sdepend (esdepend,clk,clrn,msdepend);

endmodule
