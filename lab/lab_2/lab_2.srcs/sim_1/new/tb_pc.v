`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/07 11:48:41
// Design Name: 
// Module Name: tb_pc
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


module tb_pc();
reg clk; 
reg rst;
reg [31:0] pcin;
wire [31:0] pc;
wire inst_ce;

pc mypc(.clk(clk), .rst(rst), .pcin(pcin), .pc(pc), .inst_ce(inst_ce));
initial begin
    clk = 0;
end

always #1 clk = ~clk;
initial begin
rst = 1;
pcin = 32'b0;
#5
rst = 0;
#20
rst = 1;

end
//module pc(
//	input clk,
//	input rst,
//	input [31:0] pcin,
//	output reg [31:0] pc, 
//	output reg inst_ce
//	);
	
endmodule
