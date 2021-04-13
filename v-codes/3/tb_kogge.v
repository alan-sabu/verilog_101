`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2021 09:02:44 PM
// Design Name: 
// Module Name: tb_kogge
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


module tb_kogge;
    reg [7:0] a;
    reg [7:0] b;
    reg cin;
    wire [7:0] y;
    wire cout;
    wire [8:0] sum;
   kogge_adder_8bit ksa(.a(a),.b(b),.cin(cin),.y(y),.cout(cout),.sum(sum));
    initial begin 
    a=8'b00001000;b=8'b00011011;cin=1'b0;#100
    a=8'b00011000;b=8'b00101011;cin=1'b1;#100
    a=8'b001011000;b=8'b01011011;cin=1'b0;#100
    a=8'b01001000;b=8'b11011011;cin=1'b1;#100
    $stop;
    end 
endmodule
