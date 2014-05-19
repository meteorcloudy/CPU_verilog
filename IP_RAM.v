`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:39 10/29/2012 
// Design Name: 
// Module Name:    IP_RAM 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// 数据存储器模块
// 输入信号：datain,addr,clk,we
// 输出信号：dataout
// datain为将要向存储器中写入的数据，addr为数据写入地址
// clk为时钟信号，we为写使能信号
// 在clk上升沿到来时如果we信号为1，则datain的数据将会写入存储器中
// dataout会根据addr的地址值从存储器中读出数据输出
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module IP_RAM(we,addr,datain,clk,dataout
    );
	 input [31:0] datain;
	 input [31:0] addr;
	 input clk,we;
	 output [31:0] dataout;
	 reg [31:0] ram [0:31];
	 assign dataout=ram[addr[6:2]];
	 always @(posedge clk)begin
		if(we)ram[addr[6:2]]=datain;
	 end
	 integer i;
	 initial begin
	 for(i=0;i<32;i=i+1)
	    ram[i]=0;
		 ram[5'h00]=126;//32'h00000001;
		 ram[5'h01]=32'h00000001;
		 ram[5'h14]=32'h00000001;
		 ram[5'h15]=32'h00000027;
		 ram[5'h16]=32'h00000079;
		 ram[5'h17]=32'h00000115;
		 end
endmodule
