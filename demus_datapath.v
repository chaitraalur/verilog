`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:22:33 04/07/2022 
// Design Name: 
// Module Name:    demus_datapath 
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
/////////////////////////////////////////////////////////////////////////////////
module demus_datapath(d,s,y);
input d;
input[1:0]s;
output[3:0]y;
assign y[0]=(~s[1]&~s[0]&d);
assign y[1]=(~s[1]&s[0]&d);
assign y[2]=(s[1]&~s[0]&d);
assign y[3]=(s[1]&~s[0]&d);
endmodule


