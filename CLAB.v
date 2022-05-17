`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:08:23 03/08/2022 
// Design Name: 
// Module Name:    CLAB 
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
module CLAB(a,b,cin,s,cout);
    input [3:0] a;
    input [3:0] b;
    input cin;
    output reg [3:0] s;
    output reg cout;
	 reg p0,p1,p2,p3,g0,g1,g2,g3;
	 reg c0,c1,c2,c3;
	 always @(a,b,cin)
	 begin
	 p0=a[0]|b[0];
	 p1=a[1]|b[1];
    p2=a[2]|b[2];
    p3=a[3]|b[3];
	 g0=a[0]&b[0];
	 g1=a[1]&b[1];
	 g2=a[2]&b[2];
	 g3=a[3]&b[3];
	 c0=g0|(p0&cin);
	 c1=g1|(p1&c0);
	 c2=g2|(p2&c1);
	 c3=g3|(p3&c2);
	 cout=g3|(p3&c2);
	 s[0]=(p0^g0)^c0;
	 s[1]=(p1^g1)^c1;
	 s[2]=(p2^g2)^c2;
	 s[3]=(p3^g3)^c3;
	 cout=c3;
	 end
	 endmodule
