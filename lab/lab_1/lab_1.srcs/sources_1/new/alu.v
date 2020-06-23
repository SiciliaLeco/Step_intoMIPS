`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/21 19:46:45
// Design Name: 
// Module Name: alu
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

module alu(
	input [31:0] num1,
	input [31:0] num2,
	input [2:0] op,
	output reg [31:0] data
	);
	
	wire signed [31:0] signed_a = num1, signed_b = num2;
	always@(*)begin
		case(op)
			3'b000: data <= num1 + num2;
			3'b001: data <= num1 - num2;
			3'b010: data <= num1 & num2;
			3'b011: data <= num1 | num2;
			3'b100: data <= ~num1;
			3'b101: data <= (signed_a < signed_b); //slt
			default: data <= 32'b0;
	   endcase
	end
endmodule
