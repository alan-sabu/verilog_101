`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2021 11:18:35 AM
// Design Name: 
// Module Name: parity_8bit
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


module parity_8bit(
    input [7:0] a,
    output even_par,
    output odd_par,
    output even_check,
    output odd_check
    );
    assign even_par=a[0]^a[1]^a[2]^a[3]^a[4]^a[5]^a[6]^a[7];
    assign odd_par=~even_par;
    assign even_check=(a[0]^a[1]^a[2]^a[3]^a[4]^a[5]^a[6]^a[7])^even_par;
    assign odd_check=(a[0]^a[1]^a[2]^a[3]^a[4]^a[5]^a[6]^a[7])~^odd_par;
endmodule
