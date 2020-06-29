`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/20 20:48:09
// Design Name: 
// Module Name: mips
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



module mips(
	input clk,
	input clkb,
	input rst,
	output[31:0] pcF,//
	input[31:0] instrF,
	output memwriteM,
	output[31:0] aluoutM,
	output[31:0] writedataM,
	input[31:0] readdataM 
    );
	
	wire [5:0] opD,functD;
	wire regdstE,alusrcE;
	wire pcsrcD,memtoregE,branchD,jumpD;
	wire memtoregM,memtoregW;
	wire regwriteE,regwriteM,regwriteW;
	wire [2:0] alucontrolE;
	wire flushE,equalD;

	controller controller(
		clk,rst,
		opD,functD,
		pcsrcD,
		branchD,
		equalD,
		jumpD,
		flushE,
		memtoregE,
		alusrcE,
		regdstE,
		regwriteE,	
		alucontrolE,
		memtoregM,
		memwriteM,
		regwriteM,
		memtoregW,
		regwriteW
		);
    
//    datapath dp(
//    clk, rst, clkb,
//	pcF,
//	instrF,
//	branchD, pcsrcD, jumpD,
//	equalD, //提前判断
//	opD, functD, // 输出信号
//    regwriteE, memtoregE, alusrcE, regdstE,
//	alucontrolE,
//	flushE, 
//	regwriteM, memtoregM, 
//	aluoutM, writedataM,
//	readdataM,
//	regwriteW, memtoregW);
	datapath datapath(
		clk,
		clkb,
		rst,
		pcF,
		instrF,
		pcsrcD,
		branchD,
		jumpD,
		equalD,
		opD,
		functD,
		memtoregE,
		alusrcE,
		regdstE,
		regwriteE,
		alucontrolE,
		flushE,
		memtoregM,
		regwriteM,
		aluoutM,
		writedataM,
		readdataM,
		memtoregW,
		regwriteW
	    );
	
endmodule
