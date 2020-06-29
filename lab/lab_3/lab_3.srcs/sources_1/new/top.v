`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/07 13:50:53
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
	input wire clk,rst,
	output wire[31:0] writedata,dataadr,
	output wire memwrite
    );
	// wire clk;
	wire[31:0] pc,instr,readdata;

wire inst_ena = 1;
wire [3:0] d_ramena = {4{memwrite}};
wire data_ena = 1;


mips mips(clk,rst,pc,instr,memwrite,dataadr,writedata,readdata);
//	inst_ram imem(clk,pc[7:2],instr);
inst_ram ir (
  .clka(~clk),    // input wire clka
  .ena(inst_ena),      // input wire ena
  .wea(4'b0),      // input wire [3 : 0] wea
  .addra({2'b00, pc[7:2]}),  // input wire [7 : 0] addra
  .dina(32'b0),    // input wire [31 : 0] dina
  .douta(instr)  // output wire [31 : 0] douta
);


data_ram dr (
  .clka(~clk),    // input wire clka
  .ena(data_ena),      // input wire ena
  .wea(d_ramena),      // input wire [3 : 0] wea
  .addra(dataadr[9:0]),  // input wire [9 : 0] addra
  .dina(writedata),    // input wire [31 : 0] dina
  .douta(readdata)  // output wire [31 : 0] douta
);

//	data_ram dmem(clk,memwrite,dataadr,writedata,readdata);
endmodule
