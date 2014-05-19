`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:54:27 04/15/2014 
// Design Name: 
// Module Name:    diff_m2w 
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
module diff_m2w(
		clk,clrn,
		mwreg,mm2reg,mrd,mresult,mdataout,
		wwreg,wm2reg,wrd,wresult,wdataout
    );
	input clk,clrn;
	input mwreg,mm2reg;
	input[4:0] mrd;
	input[31:0] mresult,mdataout;
	
	output wwreg,wm2reg;
	output[4:0] wrd;
	output[31:0] wresult,wdataout;	
	
	dff1 push_wreg(mwreg,clk,clrn,wwreg);
	dff1 push_m2reg(mm2reg,clk,clrn,wm2reg);
	dff5 push_rd(mrd,clk,clrn,wrd);
	dff32 push_result(mresult,clk,clrn,wresult);
	dff32 push_dataout(mdataout,clk,clrn,wdataout);

endmodule
