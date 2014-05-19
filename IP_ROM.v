`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:23:11 10/29/2012 
// Design Name: 
// Module Name:    IP_ROM 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// 指令存储器模块
// 输入信号：a
// 输出信号：inst
// a为指令地址，根据a的地址从存储器中取得指令，使用inst将指令输出
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module IP_ROM(a,inst
    );
	 input [31:0] a;
	 output [31:0] inst;
	 wire [31:0] rom [0:63];
	 	 /*
	 assign rom[6'h00]=32'h20230000;//load r1,0(r3)	
	 assign rom[6'h01]=32'h20430000;//load r2,0(r3)
	 assign rom[6'h02]=32'h14420001;//addi r2,r2,4
	 assign rom[6'h03]=32'hffffffff;					  
	 assign rom[6'h04]=32'hffffffff;//32'h14210001;//addi r1,r1,1
	 assign rom[6'h05]=32'h1c210080;//subi r1,r1,128
	 assign rom[6'h06]=32'hffffffff;
	 assign rom[6'h07]=32'h28000078;//beq 16'h0078  	  1E位置指令 store r1,0(r3)
	 assign rom[6'h08]=32'hffffffff;
	 assign rom[6'h09]=32'hffffffff;
	 assign rom[6'h0A]=32'h28000078;//beq 16'h0078  	  1E位置指令 store r1,0(r3)*/
	 
	assign rom[6'h00]= 32'h20230000;//load r1,0(r3)						  
	assign rom[6'h01]= 32'h14210001;//addi r1,r1,1
	assign rom[6'h02]= 32'h24230000;//store r1,0(r3)
	assign rom[6'h03]= 32'h1c210080;//subi r1,r1,128
	assign rom[6'h04]= 32'h28000020;//beq 16'h0020 -> rom[6'h08] load r1,0(r3)
	assign rom[6'h05]= 32'hffffffff;//nop
	assign rom[6'h06]= 32'h30000000;//brach 0
	assign rom[6'h07]= 32'hffffffff;//nop
	assign rom[6'h08]= 32'h20230000;//load r1,0(r3)
	assign rom[6'h09]= 32'h20430000;//load r2,0(r3)
	assign rom[6'h0A]= 32'h3c410002;//srl r2,r2,1
	assign rom[6'h0B]= 32'h08210002;//or r1,r1,r2
	assign rom[6'h0C]= 32'h24230000;//store r1,0(r3)
	assign rom[6'h0D]= 32'hffffffff;
	assign rom[6'h0E]= 32'hffffffff;
	assign rom[6'h0F]= 32'hffffffff;	 
	assign rom[6'h10]= 32'hffffffff;
	assign rom[6'h11]= 32'hffffffff;
	assign rom[6'h12]= 32'hffffffff;
	assign rom[6'h13]= 32'hffffffff;
	assign rom[6'h14]= 32'hffffffff;
	assign rom[6'h15]= 32'hffffffff;

	 assign rom[6'h16]=32'hffffffff;
	 assign rom[6'h17]=32'hffffffff;
	 assign rom[6'h18]=32'hffffffff;
	 assign rom[6'h19]=32'hffffffff;
	 assign rom[6'h1A]=32'hffffffff;
	 assign rom[6'h1B]=32'hffffffff;
	 assign rom[6'h1C]=32'hffffffff;
	 assign rom[6'h1D]=32'hffffffff;
	 assign rom[6'h1E]=32'h24230000;
	 assign rom[6'h1F]=32'hffffffff;
	 assign rom[6'h20]=32'hffffffff;
	 assign rom[6'h21]=32'hffffffff;
	 assign rom[6'h22]=32'hffffffff;
	 assign rom[6'h23]=32'hffffffff;
	 assign rom[6'h24]=32'hffffffff;
	 assign rom[6'h25]=32'h00000000;
	 assign rom[6'h26]=32'h00000000;
	 assign rom[6'h27]=32'h00000000;
	 assign rom[6'h28]=32'h00000000;
	 assign rom[6'h29]=32'h00000000;
	 assign rom[6'h2A]=32'h00000000;
	 assign rom[6'h2B]=32'h00000000;
	 assign rom[6'h2C]=32'h00000000;
	 assign rom[6'h2D]=32'h00000000;
	 assign rom[6'h2E]=32'h00000000;
	 assign rom[6'h2F]=32'h00000000;
	 assign rom[6'h30]=32'h00000000;
	 assign rom[6'h31]=32'h00000000;
	 assign rom[6'h32]=32'h00000000;
	 assign rom[6'h33]=32'h00000000;
	 assign rom[6'h34]=32'h00000000;
	 assign rom[6'h35]=32'h00000000;
	 assign rom[6'h36]=32'h00000000;
	 assign rom[6'h37]=32'h00000000;
	 assign rom[6'h38]=32'h00000000;
	 assign rom[6'h39]=32'h00000000;
	 assign rom[6'h3A]=32'h00000000;
	 assign rom[6'h3B]=32'h00000000;
	 assign rom[6'h3C]=32'h00000000;
	 assign rom[6'h3D]=32'h00000000;
	 assign rom[6'h3E]=32'h00000000;
	 assign rom[6'h3F]=32'h00000000;
	 
	 assign inst=rom[a[7:2]];
endmodule
