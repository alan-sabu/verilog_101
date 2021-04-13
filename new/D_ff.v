`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2021 10:37:25 AM
// Design Name: 
// Module Name: D_ff
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


module D_ff(
    input d,
    input clk,
    input clr,
    output reg q,
    output reg qbar
    );
always@(posedge clk) 
begin
if(clr== 1)
begin
q <= 0;
qbar <= 1;
end
else
begin
q <= d; 
qbar = !d; 
end 
end
endmodule
