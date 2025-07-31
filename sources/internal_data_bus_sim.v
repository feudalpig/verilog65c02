`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 04:55:47 PM
// Design Name: 
// Module Name: internal_data_bus_sim
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


module internal_data_bus_sim(

    );
    reg [7:0] IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7;
    reg [8:0] CNTL;
    wire[7:0] OUT;
    
    integer i;
    
    internal_data_bus DUT(.CNTL(CNTL), 
    .IN0(IN0), .IN1(IN1), .IN2(IN2), .IN3(IN3), 
    .IN4(IN4), .IN5(IN5), .IN6(IN6), .IN7(IN7), .OUT(OUT));
    
    initial
    begin
        CNTL = 0;
        IN0 = 1;
        IN1 = 2;
        IN2 = 3;
        IN3 = 4;
        IN4 = 5;
        IN5 = 6;
        IN6 = 7;
        IN7 = 8;
        
        for (i = 0; i < 17; i = i+1)
        begin
            #1 CNTL = (i % 2) * (2**(i/2));
        end
    end
endmodule
