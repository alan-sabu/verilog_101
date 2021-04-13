`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2021 10:51:26 AM
// Design Name: 
// Module Name: tb_dff
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


module tb_dff;
reg d,clk,clr;
wire q,qbar;
D_ff d1(d,clk,clr,q,qbar);
initial
begin
clk=1;
 forever #5 clk=~clk;
end
initial begin
clr=1;d<=0;
#100 clr=0;d<=1;
#100 d<=0;
#100 d<=1; 
#100 $finish;
end
endmodule
