`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:51:27 03/28/2022 
// Design Name: 
// Module Name:    sd1011_mealy 
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
module sd1011_mealy(input  clk,
                   input  reset,
                   input  din,
                   output reg dout);

  
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
reg [2:0] ps,ns;
  always @(posedge clk or posedge reset) begin
    if(reset) 
      ps<=s0;
    else
	 ps<=ns;
	 end
	 always @ (ps or din)
	 begin
      case(ps)
        s0: begin
          if(din==1)
            ns=s1;
          else 
            ns=s0;
		  end
        s1: begin
          if(din==0) 
            ns= s2;
            
         
          else 
            ns=s1;
         
			 end
        s2: begin
          if(din==1) 
            ns= s3;
            
          else 
            ns=s0;
           
          end
			 
        s3: begin
          if(din==1) 
            ns=s0;
          else 
            ns=s0;
          end
        default:ns=s0;
      endcase
    end
  always @ (ps)
  begin
  case(ps)
  s0:dout=0;
  s1:dout=0;
  s2:dout=0;
  s3:dout=1;
  default: dout=0;
  endcase
  end
endmodule
