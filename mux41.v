`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:38:51 03/09/2022 
// Design Name: 
// Module Name:    mux41 
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
module mux41(
    input [3:0] i,
    input [1:0] s,
    output y
	 );
	 wire[3:0]x;
	 assign x[0]=(~s[1]&~s[0]&i[0]);
	 assign x[1]=(~s[1]&~s[0]&i[1]);
	 assign x[2]=(~s[1]&~s[0]&i[2]);	 
	 assign x[3]=(~s[1]&~s[0]&i[3]);
	 assign y=(x[0]|x[1]|x[2]|x[3]);
	 endmodule
