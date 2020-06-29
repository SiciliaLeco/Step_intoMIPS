module pc(
	input wire clk, 
	input wire rst,
	input wire[31:0] in, 
	output reg[31:0] pcout
	);
	always @(posedge clk or posedge rst) begin
		if (rst) begin
			// reset
			pcout <= 32'b0;
		end
		else begin
			pcout <= in;
		end
	end
endmodule
