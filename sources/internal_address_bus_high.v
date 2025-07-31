`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 04:51:39 PM
// Design Name: 
// Module Name: internal_address_bus_high
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


module internal_address_bus_high #(parameter WIDTH = 8)(
    input [2:0] CNTL,
    input [WIDTH-1:0] IN0,
    input [WIDTH-1:0] IN1,
    input [WIDTH-1:0] IN2,
    output reg [WIDTH-1:0] OUT
    );
    
    always @(CNTL)
        casex (CNTL)
            8'b001: OUT = IN0;
            8'b01x: OUT = IN1;
            8'b1xx: OUT = IN2;
            default: OUT = 0;
        endcase
endmodule
