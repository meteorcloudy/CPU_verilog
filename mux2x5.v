`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:50:15 10/26/2012 
// Design Name: 
// Module Name:    mux2x5 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// 2x5λ��·ѡ����
// �����źţ�a0,a1,s
// ����źţ�y
// ����s�źŵ�ֵ��ѡ��a0��a1��Ϊs�����ֵ��
// sΪ0ʱѡ��a0,Ϊ1ʱѡ��a1.
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux2x5(a0,a1,s,y
    );
	 input [4:0] a0,a1;
	 input s;
	 output [4:0] y;
	 assign y=s?a1:a0;


endmodule
