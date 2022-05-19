`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:43:24 05/16/2022 
// Design Name: 
// Module Name:    mult 
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
'define m acc[0];
module mult(clk,st, mplier,mcand,done,result);
input clk;
input st;
input [3:0] mplier;
input [3:0] mcand;
output done;
output [7:0] result;
reg[3:0] state;
reg[8:0] acc;
initial
begin 
state=0;
acc=0;
end
always@(posedge clk)
begin
case (state)
0:
begin 
if(st==1'b1)
begin
acc[8:4]<=5'b00000;
acc[3:0]<=mplier;
state<=1;
end
end
1,3,5,7:
begin
if(m==1'b1)
begin
acc[8:4]<={1'b0,acc[7:4]}+mcand;
state<=state+1;
end
else
begin
acc<={1'b0,acc[8:1]};
state<=state+2;
end
end
2,4,6,8:
begin
acc<={1'b0,acc[8:1]};
state<=state+1;
end
9:
begin
state<=0;
end
endcase
end
assign done=(state==9)?1'b1:1'b0;
assign result=(state==9)?acc[7:0]:8'b01010101;
endmodule

    



