`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:45:56 04/26/2014
// Design Name:   sccpu_cpu
// Module Name:   D:/XilinxProject/CPU/sccpu.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sccpu_cpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sccpu;

	// Inputs
	reg clk;
	reg clrn;

	// Outputs
	wire [31:0] pc;
	wire [31:0] inst;
	wire [31:0] dataout;
	wire [31:0] result;
	wire [31:0] d;
	wire zero;
	wire wreg;
	wire m2reg;
	wire [1:0] pcsource;

	// Instantiate the Unit Under Test (UUT)
	sccpu_cpu uut (
		.clk(clk), 
		.clrn(clrn), 
		.pc(pc), 
		.inst(inst), 
		.dataout(dataout), 
		.result(result), 
		.d(d), 
		.zero(zero), 
		.wreg(wreg), 
		.m2reg(m2reg), 
		.pcsource(pcsource)
	);

	always #100 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		clrn = 0;
		#100;
		clrn = 1;
		// Wait 100 ns for global reset to finish

	
		// Add stimulus here

	end
      
endmodule

