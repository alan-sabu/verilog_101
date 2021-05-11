`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2021 09:01:36 PM
// Design Name: 
// Module Name: tb_SerialAdd
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


module tb_SerialAdd;
reg clk,reset,a,b;
wire c_out;
wire [3:0] s_out;
SerialAdd SA(a,b,clk,reset,c_out,s_out);
initial begin
clk=1;
forever #5 clk=~clk;
end

initial begin
reset=0;a=0;b=0;reset=1;
//a=1111,b=1010,s=1001,c=1
#20 reset=0;a=1;b=0;
#10 a=1;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10 reset=1;
//a=1000,b=0011,s=1011,c=0
#20 reset=0;a=0;b=1;
#10 a=0;b=1;
#10 a=0;b=0;
#10 a=1;b=0;
#10 reset=1;
#10 $finish;
end
endmodule

