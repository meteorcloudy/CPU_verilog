`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:59:01 03/28/2014 
// Design Name: 
// Module Name:    next_pc 
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
module next_pc(inst,pc_source,clk,loaddepend,pc,npc);
		input clk ,loaddepend;
		input[31:0] inst;
		input [31:0] pc;
		output[31:0] npc;
		reg[31:0] npc;
		input[1:0] pc_source;

		wire[31:0] pcInc,Branch1,branchAdd,jumpAdd,next;
		wire[15:0] address;
			
		assign pcInc = pc + 4 ;
		assign address = inst[15:0];
		
		assign branchAdd = {pcInc[31:26],inst[25:0]};
		assign jumpAdd =  {{16{1'h0}},address[15:0]};
		
		mux4x32 slct_pc(pcInc,jumpAdd,pcInc,branchAdd,pc_source,next);
		
		always @(posedge clk)
		begin
			if (~loaddepend)
				npc <= next;
		end
endmodule
