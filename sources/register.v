`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 12:42:32 PM
// Design Name: 
// Module Name: register
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


module register #(parameter WIDTH = 8)(
    input CE, //clock enable
    // OE (output enable) excluded as it is implemented
    // in the data bus
    input CLK,
    input [WIDTH-1:0] IN,
    output reg [WIDTH-1:0] OUT
    );
    
    initial
        OUT <= 8'd0;
    
    always @(negedge CLK)
        if (CE)
            OUT <= IN;
    
endmodule
