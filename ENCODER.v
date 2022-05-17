`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:29:40 03/14/2022 
// Design Name: 
// Module Name:    ENCODER 
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
module ENCODER(
    input y0,
    input y1,
    input y2,
    input y3,
    output a0,
    output a1
    );
	 assign a1=y3|y2;
	 assign a0=y3|(y1&~y2);
	


endmodule
