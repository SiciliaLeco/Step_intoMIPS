`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/07 11:05:27
// Design Name: 
// Module Name: controller
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

module controller(
	input [31:0] inst,
	output jump, branch, alusrc, memwrite, regwrite, regdst, memtoreg,
	output [2:0] alu_control
	);
	wire [1:0] alu_op;

	main_decoder md(
		.opcode(inst[31:26]),
		.jump(jump), .branch(branch), .alusrc(alusrc), .memwrite(memwrite),
		.memtoreg(memtoreg), .regwrite(regwrite), .regdst(regdst), .aluop(alu_op)
		);

	alu_decoder ad(
		.funct(inst[5:0]),
		.op(alu_op),
		.alu_control(alu_control)
		);

endmodule
