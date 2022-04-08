`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:54:18 03/10/2022 
// Design Name: 
// Module Name:    FAB 
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
module FAB(
    input a,
    input b,
    input cin,
    output s,
    output c
    );
	 always@ a,b,cin
	 begin
	 s=a^b^c;
	 c=(a&b)|(b&c)|(c&a);
	 end 


endmodule
