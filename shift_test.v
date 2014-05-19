`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:34:57 03/28/2014
// Design Name:   shift
// Module Name:   D:/XilinxProject/CPU/shift_test.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shift_test;

	// Inputs
	reg [31:0] d;
	reg [4:0] sa;
	reg right;
	reg arith;

	// Outputs
	wire [31:0] sh;

	// Instantiate the Unit Under Test (UUT)
	shift uut (
		.d(d), 
		.sa(sa), 
		.right(right), 
		.arith(arith), 
		.sh(sh)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		sa = 0;
		right = 0;
		arith = 0;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4;
		sa = 2;
		right = 1;
		arith = 1;        
		

	end
      
endmodule

