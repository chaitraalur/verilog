`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:13:35 03/09/2022 
// Design Name: 
// Module Name:    mux41s 
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
module mux41s(
    input [3:0] i,
    input [1:0] s,
    output y
    );
	 wire[1:0]w;
	 wire[3:0]a;
	 not(w[0],s[0]);
	 not(w[1],s[1]);
	 and(a[0],w[0],w[1],i[0]);
	 and(a[1],w[1],s[0],i[1]);
	 and(a[2],s[1],w[0],i[2]);
	 and(a[3],s[1],s[0],i[3]);
	 or(y,a[0],a[1],a[2],a[3]);
	 endmodule
