`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:14:30 03/29/2014
// Design Name:   regfile
// Module Name:   D:/XilinxProject/CPU/regfile_test.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: regfile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regfile_test;

	// Inputs
	reg [4:0] rna;
	reg [4:0] rnb;
	reg [31:0] d;
	reg [4:0] wn;
	reg we;
	reg clk;
	reg clrn;

	// Outputs
	wire [31:0] qa;
	wire [31:0] qb;

	// Instantiate the Unit Under Test (UUT)
	regfile uut (
		.rna(rna), 
		.rnb(rnb), 
		.d(d), 
		.wn(wn), 
		.we(we), 
		.clk(clk), 
		.clrn(clrn), 
		.qa(qa), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		rna = 1;
		rnb = 2;
		d = 1;
		wn = 1;
		we = 1;
		clk = 0;
		clrn = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rna = 1;
		rnb = 2;
		d = 1;
		wn = 1;
		we = 1;
		clk = ~clk;
		#100;
		rna = 1;
		rnb = 2;
		d = 1;
		wn = 1;
		we = 1;
		clk = ~clk;		
		#100;
		rna = 1;
		rnb = 2;
		d = 1;
		wn = 1;
		we = 0;
		clk = ~clk;		
		// Add stimulus here

	end
      
endmodule

