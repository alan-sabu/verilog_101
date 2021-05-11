`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2021 09:01:36 PM
// Design Name: 
// Module Name: SerialAdd
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


module SerialAdd(
    input a,
    input b,
      input clk,
    input reset,
    output reg c_out,
    output reg [3:0] s_out
    );
    reg s,c,en;
    always @(posedge clk, posedge reset)
    begin
        if(reset==1)begin
         s=0;
         c_out=0;
         en=0;
         s_out=4'b0;
        end
            else begin
            if(en==0)begin
                c=0;
                en=1;
                end
            
            s=a^b^c;
            c=(a&b)|(c&b)|(a&c);
            s_out={s,s_out[3:1]};
            c_out=c;
            end
    end
    
    
endmodule
