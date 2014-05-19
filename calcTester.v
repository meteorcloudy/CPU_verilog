`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:59:53 03/24/2014
// Design Name:   cla32
// Module Name:   D:/XilinxProject/CPU/calcTester.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module calcTester;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg ci;

	// Outputs
	wire [31:0] s;

	// Instantiate the Unit Under Test (UUT)
	cla32 uut (
		.a(a), 
		.b(b), 
		.ci(ci), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		ci = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		#100;
		a = 98;
		b = 1;
		ci = 1;
	

	end
      
endmodule

