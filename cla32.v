`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:35:15 03/21/2014 
// Design Name: 
// Module Name:    cla32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// 32λ�ӷ�����·
// �����źţ�a,b,ci
// ����źţ�s
// a,bΪ�μ�����ļ�����ciΪ��λ�ź����룬sΪ�����������
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cla32(a,b,ci,s
    );
	input [31:0] a,b;
	input ci;
	output [31:0] s;
	assign s = a + b +ci;
endmodule
