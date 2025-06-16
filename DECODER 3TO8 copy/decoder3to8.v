`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 13:27:43
// Design Name: 
// Module Name: decoder3to8
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


module decoder3to8(
    input [2:0]s,
    output [7:0]d
    );
    
    assign d[0]= ((!s[2])&(!s[1])&(!s[0]));
    assign d[1]= ((!s[2])&(!s[1])&(s[0]));
    assign d[2]= ((!s[2])&(s[1])&(!s[0]));
    assign d[3]= ((!s[2])&(s[1])&(s[0]));
    assign d[4]= ((s[2])&(!s[1])&(!s[0]));
    assign d[5]= ((s[2])&(!s[1])&(s[0]));
    assign d[6]= ((s[2])&(s[1])&(!s[0]));
    assign d[7]= ((s[2])&(s[1])&(s[0]));
endmodule
