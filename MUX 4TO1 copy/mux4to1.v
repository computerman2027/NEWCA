`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 13:07:48
// Design Name: 
// Module Name: mux4to1
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


module mux4to1(
    input [1:0]s,
    input [3:0]d,
    output o
);

assign o = (((!s[1])&(!s[0]))&(d[0])) | (((!s[1])&(s[0]))&(d[1])) | (((s[1])&(!s[0]))&(d[2]))  | (((s[1])&(s[0]))&(d[3]));

endmodule
