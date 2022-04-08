`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:30 03/10/2022 
// Design Name: 
// Module Name:    FAD 
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
module FAD(
    input a,
    input b,
    input cin,
    output s,
    output c
    );
	 assign s=a^b^c;
	 assign c=(a&b)|(b&c)|(c&a);
	 endmodule
