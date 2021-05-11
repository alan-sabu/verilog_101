`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 11:04:01 AM
// Design Name: 
// Module Name: counter_4bit
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


module counter_4bit(
    output [3:0] y,
    input t,
    input clk,
    input rst,
    input mode
    );
    wire [3:0] ybar;
    wire [3:0] x;
    
        T_ff T1(t,clk,rst,y[0],ybar[0]);
        assign x[0]=mode^y[0];
        T_ff T2(t,x[0],rst,y[1],ybar[1]);
        assign x[1]=mode^y[1];
        T_ff T3(t,x[1],rst,y[2],ybar[2]);
        assign x[2]=mode^y[2];
        T_ff T4(t,x[2],rst,y[3],ybar[3]); 
endmodule
