`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/20 20:48:09
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
	input wire clk,rst,
	input wire[5:0] opD,functD,
	output wire pcsrcD,branchD,
	input equalD,
	output jumpD,
	
	//execute stage
	input wire flushE,
	output wire memtoregE,alusrcE,
	output wire regdstE,regwriteE,	
	output wire[2:0] alucontrolE,
	output wire memtoregM,memwriteM,
				regwriteM,
	output wire memtoregW,regwriteW

    );
	
	wire[1:0] aluopD;
	wire memtoregD,memwriteD,alusrcD,
		regdstD,regwriteD;
	wire[2:0] alucontrolD;
	wire memwriteE;


/************     decode progress    **************/

	maindecode maind(
		.opcode(opD),
		.jump(jumpD),
		.branch(branchD),
		.alusrc(alusrcD),
		.memwrite(memwriteD),
		.regwrite(regwriteD), 
		.memtoreg(memtoregD),
		.regdst(regdstD),
		.aluop(aluopD)
		);

	aludecode alud(
		.funct(functD),
		.op(aluopD),
		.alu_control(alucontrolD)
		);

	assign pcsrcD = branchD & equalD;//提前得到跳转结果

/************flipflop for controller in each stage**************/
// wire [7:0] Ddata, Edata;
	// wire [2:0] Edata1, Mdata;
	// wire [1:0] Mdata1, Wdata; 

	// assign Ddata = {regwriteD, memtoregD, memwriteD, 
	// 		alucontrolD, alusrcD, regdstD};

	// assign Edata = {regwriteE, memtoregE, memwriteE,
	// 		alucontrolE, alusrcE, regdstE};
	

	// floprc #(8) flopDtoE(
	// .clk(clk),
	// .rst(rst), 
	// .clear(flushE),
	// .q(Ddata), 
	// .d(Edata)
	// );

	// assign Edata1 = {regwriteE, memtoregE, memwriteE};
	// assign Mdata = {regwriteM, memtoregM, memwriteM};

	// flopr #(3) flopEtoM(
	// .clk(clk),
	// .rst(rst), 
	// .q(Edata1), 
	// .d(Mdata)	
	// );

	// assign Mdata1 = {regwriteM, memtoregM};
	// assign Wdata = {regwriteW, memtoregW};

	// flopr #(2) flopMtoW(
	// .clk(clk),
	// .rst(rst), 
	// .q(Mdata1), 
	// .d(Wdata)	
	// );
	floprc #(8) flopDtoE(
		clk,
		rst,
		flushE,
		{memtoregD,memwriteD,alusrcD,regdstD,regwriteD,alucontrolD},
		{memtoregE,memwriteE,alusrcE,regdstE,regwriteE,alucontrolE}
		);
	flopr #(3) flopEtoM(
		clk,rst,
		{memtoregE,memwriteE,regwriteE},
		{memtoregM,memwriteM,regwriteM}
		);
	flopr #(2) flopMtoW(
		clk,rst,
		{memtoregM,regwriteM},
		{memtoregW,regwriteW}
		);

endmodule