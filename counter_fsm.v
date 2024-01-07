`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2022 09:06:19 AM
// Design Name: 
// Module Name: counter_fsm
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
module tff(
input clk,
input t,
output reg q
);

always @ (posedge clk) begin
if (t)
q <= ~q;
else
q <= q;
end
endmodule

module counter_fsm ( 
input clk,
input En,
output wire Q0,
output wire Q1,
output wire Q2,
output wire Q3
);
wire t1, t2, t3;
tff ff0(.clk (clk), .t (En), .q(Q0));
assign t1 = En & Q1;
tff ffl(.clk (clk), .t(t1), .q(Q1)); 
assign t2 = t1 & Q2;
tff ff2 (.clk (clk), .t(t2), .q(Q2)); 
assign t3 = t2 && Q3;
tff ff3(.clk (clk), .t (Et3), .q(Q3)); 


endmodule
