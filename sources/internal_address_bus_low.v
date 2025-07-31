`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 04:51:39 PM
// Design Name: 
// Module Name: internal_address_bus_low
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


module internal_address_bus_low #(parameter WIDTH = 8)(
    input [3:0] CNTL,
    input [WIDTH-1:0] IN0,
    input [WIDTH-1:0] IN1,
    input [WIDTH-1:0] IN2,
    input [WIDTH-1:0] IN3,
    output reg [WIDTH-1:0] OUT
    );
    
    always @(CNTL)
        casex (CNTL)
            8'b0001: OUT = IN0;
            8'b001x: OUT = IN1;
            8'b01xx: OUT = IN2;
            8'b1xxx: OUT = IN3;
            default: OUT = 0;
        endcase
endmodule
