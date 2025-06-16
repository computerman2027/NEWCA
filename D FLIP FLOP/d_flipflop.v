`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 14:43:39
// Design Name: 
// Module Name: d_flipflop
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


module d_flipflop(
    input d,
    input pre,
    input clr,
    input clk,
    output s,
    output r
    );
    
    reg qm=0;
    
    always@(posedge clk)
    if(pre==1)
    begin
    qm=1;
    end
    else if (clr==1)
    begin
    qm=0;
    end
    else
    begin
    qm=d;
    end
    
    assign s=qm;
    assign r=~s;
endmodule
