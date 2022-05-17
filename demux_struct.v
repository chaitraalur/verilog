`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:21:42 04/07/2022 
// Design Name: 
// Module Name:    demux_struct 
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
module demux_struct(d,s,y);
input d;
input[1:0]s;
output[3:0]y;
wire[1:0]w;
not(w[0],s[0]);
not(w[1],s[1]);
and(y[0],w[0],w[1],d);
and(y[1],w[1],s[0],d);
and(y[2],s[1],s[0],d);
and(y[3],s[1],s[0],d);
endmodule

