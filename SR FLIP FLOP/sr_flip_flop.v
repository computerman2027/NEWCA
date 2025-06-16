`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 15:21:20
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
input J,   
input K,    
input CLK,    
input PR,   
input CLR,    
output Q,    
output P 
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
else
if(J==0 && K==1) begin
q1=0;
q2=1;
end
else
if(J==1 && K==0) begin
q1=1;
q2=0;
end
else
if(J==0 && K==0) begin
q1=P;
q2=Q;
end
else
if(J==1 && K==1) begin
q1=1'bx;
q2=1'bx;
end
assign P= q1;
assign Q= q2;
endmodule
