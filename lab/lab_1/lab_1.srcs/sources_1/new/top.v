`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 19:48:30
// Design Name: 
// Module Name: top
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

module top(
    input clk,
    input rst,
    input [2:0] op,
    input [7:0] ins,
    output [7:0] ans,
    output [6:0] seg
    );
//    module alu(
//	input [31:0] num1,
//	input [31:0] num2,
//	input [2:0] op,
//	output reg [31:0] data
//	);
	
//	input wire clk,
//    input wire rst,
//    input wire [31:0]s,
//    output wire [6:0]seg,
//    output reg [7:0]ans
    wire [31:0] data;
    wire [31:0] num2 = 32'h01;
    alu alu(.num1(ins), .num2(num2), .op(op),.data(data));
    display display(.clk(clk),.rst(rst),.s(data),.ans(ans),.seg(seg));
endmodule
