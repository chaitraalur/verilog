`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:43:57 03/14/2022 
// Design Name: 
// Module Name:    ENCODERS 
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
module ENCODERS(
    input a0,
    input a1,
    output y0,
    output y1,
    output y2,
    output y3
    );
	 reg u1,u2,u3;
	 not n1(y2bar,y2);
	 and a1(u1,y2bar,y);
	 or o1(a1,y3,y2);
	 or o2(a0,y3,u1);
	 


endmodule
