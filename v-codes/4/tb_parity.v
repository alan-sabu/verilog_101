`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2021 11:27:08 AM
// Design Name: 
// Module Name: tb_parity
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


module tb_parity;
reg [7:0]a;
wire even_par,odd_par,even_check,odd_check;

parity_8bit gencheck(a,even_par,odd_par,even_check,odd_check);

initial
begin
a=8'b00000001;
#5 a=8'b00000010;
#5 a=8'b00000011;
#5 a=8'b00000100;
#5 a=8'b00010010;
#5 a=8'b00010101;
#5 a=8'b01010000;
#5 a=8'b01010010;
#5 a=8'b10100100;
#5 $stop;
end
endmodule
