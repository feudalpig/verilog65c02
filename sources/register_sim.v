`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 12:50:08 PM
// Design Name: 
// Module Name: register_sim
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


module register_sim #(
    parameter WIDTH = 8
    );
    
    reg ce;
    reg clk;
    reg [WIDTH-1:0] in;
    wire [WIDTH-1:0] out;
    
    integer i;
    
    register dut(.CE(ce), .CLK(clk), .IN(in), .OUT(out));
    
    always @(posedge clk)
        ce = ~ce;
    
    initial
    begin
        ce = 0;
        clk = 0;
        for (i = 0; i < (4*2**WIDTH + 2); i = i + 1)
        begin
            in = i / 4;
            #1 clk = ~clk;
            if (i % 4 == 2)
                if (out != i/4)
                  $display ("Failure at", $time, i/4);
        end
    end
endmodule
