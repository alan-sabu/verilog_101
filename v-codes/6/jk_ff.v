`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 10:50:24 AM
// Design Name: 
// Module Name: jk_ff
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


module T_ff(
    input t,
    input clk,
    input rst,
    output q,
    output qbar
    );
    reg q,qbar;
    initial q=0;
    always@(negedge clk)
    begin
    if(!rst)
    begin
    q<=0;
    end
    else
    begin 
        if (t==1)
            begin  
            q=~q;
            end
        else 
            begin   
            q=q;
            end
        qbar=~q;
    end
    end
    endmodule

