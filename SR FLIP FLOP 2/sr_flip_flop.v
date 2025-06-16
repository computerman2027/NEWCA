`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2025 20:42:42
// Design Name: 
// Module Name: sr_flip_flop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sr_flip_flop(
input S,   
input R,    
input CLK,    
input PR,   
input CLR,    
output P,    
output Q 
    );
    
    reg q1=0;
    reg q2=0;

always@(posedge CLK)
if(PR==1)
    begin
        q1=1;
        q2=0;
    end
else if(CLR==0) 
    begin
        q1=0;
        q2=1;
    end
else if(S==1 && R==1)
    begin
        q1= ((~R)&(q1))|(S);
        q2= q1;
    end
else
    begin
        q1= ((~R)&(q1))|(S);
        q2= ~q1;
    end
assign P= q1;
assign Q= q2;
endmodule

