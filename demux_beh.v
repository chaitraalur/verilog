`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:18:41 04/07/2022 
// Design Name: 
// Module Name:    demux_beh 
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
module demux_beh(d,s,y);
input d;
input[1:0]s;
output reg[3:0]y;
always @(d,s)
begin
 y[0]=(~s[1]&~s[0]&d);
 y[1]=(~s[1]&s[0]&d);
 y[2]=(s[1]&~s[0]&d);
 y[3]=(s[1]&s[0]&d);
 end
endmodule


