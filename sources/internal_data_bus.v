`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 04:47:51 PM
// Design Name: 
// Module Name: internal_data_bus
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


module internal_data_bus #(parameter WIDTH = 8)(
    input [8:0] CNTL,
    input [WIDTH-1:0] IN0,
    input [WIDTH-1:0] IN1,
    input [WIDTH-1:0] IN2,
    input [WIDTH-1:0] IN3,
    input [WIDTH-1:0] IN4,
    input [WIDTH-1:0] IN5,
    input [WIDTH-1:0] IN6,
    input [WIDTH-1:0] IN7,
    output reg [WIDTH-1:0] OUT
    );
    
    always @(CNTL)
        casex (CNTL)
            8'b00000001: OUT = IN0;
            8'b0000001x: OUT = IN1;
            8'b000001xx: OUT = IN2;
            8'b00001xxx: OUT = IN3;
            8'b0001xxxx: OUT = IN4;
            8'b001xxxxx: OUT = IN5;
            8'b01xxxxxx: OUT = IN6;
            8'b1xxxxxxx: OUT = IN7;
            default: OUT = 0;
        endcase
endmodule
