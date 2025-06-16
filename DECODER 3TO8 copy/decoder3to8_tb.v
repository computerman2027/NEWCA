`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 13:34:16
// Design Name: 
// Module Name: decoder3to8_tb
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


module decoder3to8_tb();

reg [2:0]s;
wire [7:0]d;

decoder3to8 uut(.s(s),.d(d));

initial begin

for(s=0;s<8;s=s+1)
begin
#100;
end
end
endmodule
