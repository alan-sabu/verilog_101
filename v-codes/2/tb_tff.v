`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2021 08:41:08 PM
// Design Name: 
// Module Name: tb_tff
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


module tb_tff;
reg t,clk,reset;
wire q,qbar;
t_ff t1(t,clk,reset,q,qbar);
initial 
begin
clk=1;
forever #5 clk=~clk;
end
initial
begin
t=0;reset=1;
#50reset=0;
#50 t=1;
#50 t=0;
#50 t=1;
#50 $finish;
end
endmodule
