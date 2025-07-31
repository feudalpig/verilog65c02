`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 04:57:26 PM
// Design Name: 
// Module Name: internal_data_bus_low_sim
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


module internal_data_bus_low_sim(

    );
    reg [7:0] IN0,IN1,IN2,IN3;
    reg [3:0] CNTL;
    wire[7:0] OUT;
    
    integer i;
    
    internal_address_bus_low DUT(.CNTL(CNTL), 
    .IN0(IN0), .IN1(IN1), .IN2(IN2), .IN3(IN3), .OUT(OUT));
    
    initial
    begin
        CNTL = 0;
        IN0 = 1;
        IN1 = 2;
        IN2 = 3;
        IN3 = 4;
        
        for (i = 0; i < 9; i = i+1)
        begin
            #1 CNTL = (i % 2) * (2**(i/2));
        end
    end   
endmodule
