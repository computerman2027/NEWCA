`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 13:18:26
// Design Name: 
// Module Name: mux8to1_tb
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


module mux8to1_tb();
reg [2:0]s;
reg [7:0]d;
wire o;

mux8to1 uut(.s(s),.d(d),.o(o));

initial begin
//d=10;
d=89;
//d=10010011;
for(integer i =0;i<16;i=i+1)
begin
s=i;
#100;
end
end
endmodule

