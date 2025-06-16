`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 17:49:57
// Design Name: 
// Module Name: JK_flipflop
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


module JK_flipflop(    
    input J,   
    input K,    
    input CLK,    
    input PR,   
    input CLR,    
    output Q,    
    output P  
);

reg qm = 0;

always @(posedge CLK) begin
    if (PR == 1)
        qm = 1;
    else if (CLR == 0)
        qm = 0;
    else
        qm = (J & ~qm) | (~K & qm);
end

assign P = qm;
assign Q = ~qm;

endmodule