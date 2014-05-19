`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:15:34 03/28/2014
// Design Name:   next_pc
// Module Name:   D:/XilinxProject/CPU/pc_test.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: next_pc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pc_test;

	// Inputs
	reg [31:0] inst;
	reg [1:0] pc_source;
	reg clk;

	// Outputs
	reg [31:0] pc;
	wire [31:0] npc;

	// Instantiate the Unit Under Test (UUT)
	next_pc uut (
		.inst(inst), 
		.pc_source(pc_source), 
		.clk(clk), 
		.pc(pc),
		.npc(npc)
	);

	always #100 
	begin clk = ~clk;	
			inst = inst + 1;
	end
	

	initial begin
		// Initialize Inputs
		inst = 0;
		pc_source = 0;
		clk = 0;
		pc = 0;

		// Wait 100 ns for global reset to finish
		#100;

		// Add stimulus here

	end
      
endmodule

