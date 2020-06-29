// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Jun 23 15:27:42 2020
// Host        : 2AC7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/liqilin/.Xilinx/school/pipeline_cpu/pipeline_cpu.srcs/sources_1/ip/data_mem/data_mem_stub.v
// Design      : data_mem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *)
module data_mem(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[3:0],addra[9:0],dina[31:0],douta[31:0]" */;
  input clka;
  input ena;
  input [3:0]wea;
  input [9:0]addra;
  input [31:0]dina;
  output [31:0]douta;
endmodule
