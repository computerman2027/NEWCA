`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 15:06:52
// Design Name: 
// Module Name: t_flip_flop
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


module t_flip_flop(
    input t,
    input pre,
    input clr,
    input clk,
    output p,
    output q
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
    else if(t==1)
    begin
    qm=~p;
    end
    else
    begin
    qm=p;
    end
    
    assign p=qm;
    assign q=~p;
    
endmodule
