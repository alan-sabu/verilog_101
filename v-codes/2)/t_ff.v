`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2021 08:28:04 PM
// Design Name: 
// Module Name: t_ff
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


module t_ff(
    input t,
    input clk,
    input reset,
    output reg q,
    output reg qbar
    );
    
    initial q=0;
    always@(posedge clk)
    begin
    if(reset==1)
    begin
      q<=0;
      qbar=~q;
    end  
    
    else
    begin 
        if (t==1)
        begin
            q=~q;
            qbar=~q;
        end
        else 
        begin
            q=q;
        end
       
    end
    
    end
endmodule
