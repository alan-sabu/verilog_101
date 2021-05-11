`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 11:13:01 AM
// Design Name: 
// Module Name: tb_4bitasy
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


module tb_4bitasy;
reg t,
clk,
rst,
mode;
wire [3:0] y;
counter_4bit ctr(y,t,clk,rst,mode);
initial 
begin
clk=0;
forever #2 clk=~clk;
end
initial
begin
rst=0;
t=1;
mode=0;
#1 rst=1;
#50 mode=1;t=0;
#1 t=1;
#50 $stop;
end
endmodule
