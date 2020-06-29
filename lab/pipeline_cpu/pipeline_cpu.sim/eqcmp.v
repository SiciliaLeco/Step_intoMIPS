`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/20 11:43:19
// Design Name: 
// Module Name: eqcmp
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


module eqcmp(
	input [31:0] a,b,
	output y
    );
	assign y = (a == b) ? 1 : 0;
endmodule
