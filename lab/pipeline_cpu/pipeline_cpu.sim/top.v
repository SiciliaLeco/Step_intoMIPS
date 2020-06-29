`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/20 20:48:09
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
	output[31:0] writedata,
	output[31:0]dataadr,
	output memwrite,
	output[31:0] pc,instr
    );
    
	wire[31:0] readdata;  
	      
	mips mips(
	clk,
	~clk,
	rst,
	pc,
	instr,
	memwrite,
	dataadr,
	writedata,
	readdata);
//	  .clka(clka),    // input wire clka
//  .ena(ena),      // input wire ena
//  .wea(wea),      // input wire [3 : 0] wea
//  .addra(addra),  // input wire [9 : 0] addra
//  .dina(dina),    // input wire [31 : 0] dina
//  .douta(douta)  // output wire [31 : 0] douta
	inst_mem im(
	.clka(~clk), //only delay half clk
	.addra(pc), 
	.ena(1'b1),
	.douta(instr)
	);
//	  .clka(clka),    // input wire clka
//  .ena(ena),      // input wire ena
//  .wea(wea),      // input wire [3 : 0] wea
//  .addra(addra),  // input wire [9 : 0] addra
//  .dina(dina),    // input wire [31 : 0] dina
//  .douta(douta)  // output wire [31 : 0] douta

	data_mem dm(
	.clka(~clk),
	.ena(1'b1),
	.wea({3'b000,memwrite}),
	.addra(dataadr),
	.dina(writedata),
	.douta(readdata)
	);
	
endmodule
