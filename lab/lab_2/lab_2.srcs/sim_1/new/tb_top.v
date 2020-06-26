`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/07 14:35:21
// Design Name: 
// Module Name: tb_top
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


module tb_top();
	reg clk;
	reg rst;
	wire jump, branch, alusrc, memwrite, regwrite, regdst, memtoreg;
	wire [2:0] alu_control;
	wire [31:0] pcaddr;
//	module top(
//    input clk, rst,
//    output jump, branch, alusrc, memwrite, regwrite, regdst, memtoreg,
//	output [2:0] alu_control,
//	output [9:0] pcaddr
//    );
	top top(
		.clk(clk), .rst(rst),
		.jump(jump), .branch(branch),
		.alusrc(alusrc), .memwrite(memwrite), .regwrite(regwrite),
		.regdst(regdst), .memtoreg(memtoreg),
		.alu_control(alu_control),
		.pcaddr(pcaddr)
		);
	initial begin
		clk = 1;
		rst = 1;

	end

	always #5 begin
	clk = ~clk;
	end
	
	initial begin
	#10
	rst = 0;
    
	$display("instruction, memtoreg: %b, memwrite: %b, alusrc: %b, regdst: %b, regwrite: %b, jump: %b, branch: %b, alucontrol: %b", 
	memtoreg,memwrite, alusrc, regdst, regwrite, jump, branch, alu_control);
    
    #20

	$display("instruction, memtoreg: %b, memwrite: %b, alusrc: %b, regdst: %b, regwrite: %b, jump: %b, branch: %b, alucontrol: %b", 
	memtoreg,memwrite, alusrc, regdst, regwrite, jump, branch, alu_control);
    
    #10
	$display("instruction, memtoreg: %b, memwrite: %b, alusrc: %b, regdst: %b, regwrite: %b, jump: %b, branch: %b, alucontrol: %b", 
	memtoreg,memwrite, alusrc, regdst, regwrite, jump, branch, alu_control);
    
    #10
	$display("instruction, memtoreg: %b, memwrite: %b, alusrc: %b, regdst: %b, regwrite: %b, jump: %b, branch: %b, alucontrol: %b", 
	memtoreg,memwrite, alusrc, regdst, regwrite, jump, branch, alu_control);
    
    #10
	$display("instruction, memtoreg: %b, memwrite: %b, alusrc: %b, regdst: %b, regwrite: %b, jump: %b, branch: %b, alucontrol: %b", 
	memtoreg,memwrite, alusrc, regdst, regwrite, jump, branch, alu_control);
    
    #10
	$display("instruction, memtoreg: %b, memwrite: %b, alusrc: %b, regdst: %b, regwrite: %b, jump: %b, branch: %b, alucontrol: %b", 
	memtoreg,memwrite, alusrc, regdst, regwrite, jump, branch, alu_control);
    
    #10
	$display("instruction, memtoreg: %b, memwrite: %b, alusrc: %b, regdst: %b, regwrite: %b, jump: %b, branch: %b, alucontrol: %b", 
	memtoreg,memwrite, alusrc, regdst, regwrite, jump, branch, alu_control);
    
    #10
	$display("instruction, memtoreg: %b, memwrite: %b, alusrc: %b, regdst: %b, regwrite: %b, jump: %b, branch: %b, alucontrol: %b", 
	memtoreg,memwrite, alusrc, regdst, regwrite, jump, branch, alu_control);
    
//    $monitor("instruction 32'%t, memtoreg: %b, memwrite: %b, alusrc: %b, regdst: %b, regwrite: %b, jump: %b, branch: %b, alucontrol: %b", 
//	$time, memtoreg,memwrite, alusrc, regdst, regwrite, jump, branch, alu_control);
    
    end

endmodule

