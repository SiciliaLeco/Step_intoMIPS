`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/21 23:05:19
// Design Name: 
// Module Name: sl2
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


module sl2(
	input wire[31:0] a,
	output wire[31:0] b
    );

	assign b = {a[29:0],2'b00};
endmodule