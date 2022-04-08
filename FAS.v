`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:13 03/10/2022 
// Design Name: 
// Module Name:    FAS 
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
module FAS(
     a,
    b,
   cin,
     s,
  c
 );
 input a,b,cin;
    output s,c;
	
	 xor x1(s1,a,b);
	 xor x2(s,s1,cin);
	 and a1(s2,a,b);
	 and a2(s3,b,c);
	 and a3(s4,c,a);
	 or o1(s5,s2,s3);
	 or o2(c,s5,s4);
	endmodule
