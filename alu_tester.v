`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:57:07 03/28/2014
// Design Name:   alu
// Module Name:   D:/XilinxProject/CPU/alu_tester.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tester;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [3:0] aluc;

	// Outputs
	wire zero;
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.aluc(aluc), 
		.zero(zero), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		aluc = 0;

		// Wait 100 ns for global reset to finish

		#100;
		a = 127;
		b = 128;
		aluc = 3;		
		

		#100;
		a = 128;
		b = 128;
		aluc = 3;
			
		#100;
		a = 1;
		b = 1;
		aluc = 8;
	
		// Add stimulus here

	end
      
endmodule

