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
    
    reg CE;
    reg CLK;
    reg [WIDTH-1:0] IN;
    wire [WIDTH-1:0] OUT;
    
    integer i;
    
    register dut(.CE(CE), .CLK(CLK), .IN(IN), .OUT(OUT));
    
    always @(posedge CLK)
        CE = ~CE;
    
    initial
    begin
        CE = 0;
        CLK = 0;
        for (i = 0; i < (4*2**WIDTH + 2); i = i + 1)
        begin
            IN = i / 4;
            #1 CLK = ~CLK;
            if (i % 4 == 2)
                if (OUT != i/4)
                  $display ("Failure at", $time, i/4);
        end
    end
endmodule
