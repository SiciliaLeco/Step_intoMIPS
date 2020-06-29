`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/20 11:43:19
// Design Name: 
// Module Name: mux_2
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


module mux2
    #(parameter WIDTH=8)
    (
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    input s,
    output [WIDTH-1:0] y
);
assign y = s ? b : a;
endmodule

