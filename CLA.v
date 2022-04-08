`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:18 03/07/2022 
// Design Name: 
// Module Name:    CLA 
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
module CLA(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
		
	 wire p0,p1,p2,p3,G0,G1,G2,G3;
	 wire c1,c2,c3;
	   assign p0=a[0]|b[0];
	   assign p1=a[1]|b[1];
	   assign p2=a[2]|b[2];
	   assign p3=a[3]|b[3];
		assign G0=a[0]&b[0];
		assign G1=a[1]&b[1];
		assign G2=a[2]&b[2];
		assign G3=a[3]&b[3];
		assign c1=G0|(p0&cin);
		assign c2=G1|(p1&G0);
		assign c3=G2|(p2&G1);
		assign cout=G3|(p3&G2);
		assign sum[0]=(p0^G0)^cin;
		assign sum[1]=(p1^G1)^c1;
      assign sum[2]=(p2^G2)^c2;
		assign sum[3]=(p3^G3)^c3;
		
		
		
		
		
		
		
		
		
		

endmodule
