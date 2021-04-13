`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2021 08:50:18 PM
// Design Name: 
// Module Name: kogge_adder_8bit
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


module kogge_adder_8bit(input [7:0] a,
    input [7:0] b,
    input cin,
    
    output cout,
    output  [8:0] sum
    );
    wire [7:0] p,y,g,cg,cp,ccg,ccp,cccp,cccg,c;
    assign p=a^b;
    assign g = a & b;
    assign cp[0]=p[0], 
    cp[1]=p[1]&p[0],
    cp[2]=p[2]&p[1],
    cp[3]=p[3]&p[2],
    cp[4]=p[4]&p[3],
    cp[5]=p[5]&p[4],
    cp[6]=p[6]&p[5],
    cp[7]=p[7]&p[6];
    assign cg[0]=g[0],
           cg[1]=g[1]|(p[1]&g[0]),
           cg[2]=g[2]|(p[2]&g[1]),
           cg[3]=g[3]|(p[3]&g[2]),
        cg[4]=g[4]|(p[4]&g[3]),
         cg[5]=g[5]|(p[5]&g[4]),
        cg[6]=g[6]|(p[6]&g[5]), cg[7]=g[7]|(p[7]&g[6]);       
    assign ccp[1]=cp[1],ccp[0]=cp[0],ccp[2]=cp[2]&cp[1],
            ccp[3]=cp[2]&cp[3],ccp[4]=cp[4]&cp[3],ccp[5]=cp[5]&cp[4],
            ccp[6]=cp[6]&cp[5],ccp[7]=cp[7]&cp[6];
    assign ccg[0]=cg[0],ccg[1]=cg[1],ccg[2]=cg[2]|(cp[2]&cg[1]),ccg[3]=cg[3]|(cp[3]&cg[2]),
    ccg[4]=cg[4]|(cp[4]&cg[3]),ccg[5]=cg[5]|(cp[5]&cg[4]),ccg[6]=cg[6]|(cp[6]&cg[5]),
        ccg[7]=cg[7]|(cp[7]&cg[6]);
    assign cccp[0]=ccp[0],cccp[1]=ccp[1],cccp[2]=ccp[2],cccp[3]=ccp[3],
     cccp[4]=ccp[4]&ccp[3], cccp[5]=ccp[5]&ccp[4], cccp[6]=ccp[6]&ccp[5],
      cccp[7]=ccp[7]&ccp[6];
    assign cccg[0]=ccg[0],cccg[1]=ccg[1],cccg[2]=ccg[2],cccg[3]=ccg[3],
     cccg[4]=ccg[4]|(ccp[4]&ccg[3]), cccg[5]=ccg[5]|(ccp[5]&ccg[4]),
      cccg[6]=ccg[6]|(ccp[6]&ccg[5]), cccg[7]=ccg[7]|(ccp[7]&ccg[6]);
    assign c=cccg;
    assign y[0]=p[0]^cin, y[1]=p[1]^c[0],y[2]=p[2]^c[1],y[3]=p[3]^c[2],
    y[4]=p[4]^c[3],y[5]=p[5]^c[4],y[6]=p[6]^c[5],y[7]=p[7]^c[6];
    assign cout = c[7];
  assign sum={cout,y};
endmodule
