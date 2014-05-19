`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:54:32 03/28/2014
// Design Name:   addsub32
// Module Name:   D:/XilinxProject/CPU/as_test.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: addsub32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module as_test;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg sub;

	// Outputs
	wire [31:0] s;

	// Instantiate the Unit Under Test (UUT)
	addsub32 uut (
		.a(a), 
		.b(b), 
		.sub(sub), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		sub = 0;

		// Wait 100 ns for global reset to finish
		#100;
        	
		a = 3;
		b = 4;
		sub = 0;
		// Add stimulus here

	end
      
endmodule

