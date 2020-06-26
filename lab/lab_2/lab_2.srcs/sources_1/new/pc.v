`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/07 11:14:58
// Design Name: 
// Module Name: pc
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

module pc(
	input clk,
	input rst,
	output reg [31:0] pc_out, 
	output reg inst_ce
	);
	
	initial begin
		inst_ce = 1'b1;
	end

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			pc_out <= 32'b0;
		end
		else begin
			pc_out <= pc_out + 32'h4; // add
		end
	end
endmodule