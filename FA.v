`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:00 03/07/2022 
// Design Name: 
// Module Name:    FA 
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
module FA(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
assign sum=a^b^cin;
assign cout=a&b|b&cin|cin&a;

endmodule
