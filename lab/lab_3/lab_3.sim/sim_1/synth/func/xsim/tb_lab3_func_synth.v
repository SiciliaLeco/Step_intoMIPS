// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Jun  5 00:43:15 2020
// Host        : 2AC7 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/liqilin/.Xilinx/school/lab_3/lab_3.sim/sim_1/synth/func/xsim/tb_lab3_func_synth.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adder
   (O,
    \pcout_reg[6] ,
    Q,
    S,
    \pcout_reg[7] );
  output [2:0]O;
  output [2:0]\pcout_reg[6] ;
  input [5:0]Q;
  input [2:0]S;
  input [2:0]\pcout_reg[7] ;

  wire [2:0]O;
  wire [5:0]Q;
  wire [2:0]S;
  wire [2:0]\pcout_reg[6] ;
  wire [2:0]\pcout_reg[7] ;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [0:0]NLW_y_carry_O_UNCONNECTED;
  wire [3:2]NLW_y_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_y_carry__0_O_UNCONNECTED;

  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Q[3:1],1'b0}),
        .O({O,NLW_y_carry_O_UNCONNECTED[0]}),
        .S({S,Q[0]}));
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({NLW_y_carry__0_CO_UNCONNECTED[3:2],y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[5:4]}),
        .O({NLW_y_carry__0_O_UNCONNECTED[3],\pcout_reg[6] }),
        .S({1'b0,\pcout_reg[7] }));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module adder_0
   (O,
    \pcout_reg[7] ,
    Q,
    S);
  output [3:0]O;
  output [2:0]\pcout_reg[7] ;
  input [6:0]Q;
  input [0:0]S;

  wire [3:0]O;
  wire [6:0]Q;
  wire [0:0]S;
  wire [2:0]\pcout_reg[7] ;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:2]NLW_y_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_y_carry__0_O_UNCONNECTED;

  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[1],1'b0}),
        .O(O),
        .S({Q[3:2],S,Q[0]}));
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({NLW_y_carry__0_CO_UNCONNECTED[3:2],y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_carry__0_O_UNCONNECTED[3],\pcout_reg[7] }),
        .S({1'b0,Q[6:4]}));
endmodule

module alu
   (s_carry__6_i_7,
    O,
    wd3,
    dataadr_OBUF,
    in,
    \bbstub_douta[31] ,
    \bbstub_douta[20] ,
    bout,
    rd1,
    S,
    \dataadr_OBUF[4]_inst_i_1 ,
    \dataadr_OBUF[8]_inst_i_1 ,
    \dataadr_OBUF[12]_inst_i_1 ,
    \dataadr_OBUF[16]_inst_i_1 ,
    \dataadr_OBUF[20]_inst_i_1 ,
    \dataadr_OBUF[24]_inst_i_1 ,
    \dataadr_OBUF[28]_inst_i_1 ,
    rf_reg_r1_0_31_12_17,
    rf_reg_r1_0_31_12_17_0,
    \dataadr[0] ,
    \dataadr[0]_0 ,
    \dataadr[13] ,
    douta,
    s_carry__6_i_8,
    s_carry__6_i_8_0);
  output [29:0]s_carry__6_i_7;
  output [0:0]O;
  output [1:0]wd3;
  output [1:0]dataadr_OBUF;
  output in;
  output \bbstub_douta[31] ;
  output \bbstub_douta[20] ;
  input [0:0]bout;
  input [30:0]rd1;
  input [3:0]S;
  input [3:0]\dataadr_OBUF[4]_inst_i_1 ;
  input [3:0]\dataadr_OBUF[8]_inst_i_1 ;
  input [3:0]\dataadr_OBUF[12]_inst_i_1 ;
  input [3:0]\dataadr_OBUF[16]_inst_i_1 ;
  input [3:0]\dataadr_OBUF[20]_inst_i_1 ;
  input [3:0]\dataadr_OBUF[24]_inst_i_1 ;
  input [3:0]\dataadr_OBUF[28]_inst_i_1 ;
  input [1:0]rf_reg_r1_0_31_12_17;
  input rf_reg_r1_0_31_12_17_0;
  input \dataadr[0] ;
  input \dataadr[0]_0 ;
  input \dataadr[13] ;
  input [15:0]douta;
  input s_carry__6_i_8;
  input s_carry__6_i_8_0;

  wire [0:0]O;
  wire [3:0]S;
  wire \bbstub_douta[20] ;
  wire \bbstub_douta[31] ;
  wire [0:0]bout;
  wire \dataadr[0] ;
  wire \dataadr[0]_0 ;
  wire \dataadr[13] ;
  wire [1:0]dataadr_OBUF;
  wire [3:0]\dataadr_OBUF[12]_inst_i_1 ;
  wire [3:0]\dataadr_OBUF[16]_inst_i_1 ;
  wire [3:0]\dataadr_OBUF[20]_inst_i_1 ;
  wire [3:0]\dataadr_OBUF[24]_inst_i_1 ;
  wire [3:0]\dataadr_OBUF[28]_inst_i_1 ;
  wire \dataadr_OBUF[31]_inst_i_11_n_0 ;
  wire [3:0]\dataadr_OBUF[4]_inst_i_1 ;
  wire [3:0]\dataadr_OBUF[8]_inst_i_1 ;
  wire [15:0]douta;
  wire in;
  wire [30:0]rd1;
  wire [1:0]rf_reg_r1_0_31_12_17;
  wire rf_reg_r1_0_31_12_17_0;
  wire [13:13]s;
  wire s_carry__0_n_0;
  wire s_carry__0_n_1;
  wire s_carry__0_n_2;
  wire s_carry__0_n_3;
  wire s_carry__1_n_0;
  wire s_carry__1_n_1;
  wire s_carry__1_n_2;
  wire s_carry__1_n_3;
  wire s_carry__2_n_0;
  wire s_carry__2_n_1;
  wire s_carry__2_n_2;
  wire s_carry__2_n_3;
  wire s_carry__3_n_0;
  wire s_carry__3_n_1;
  wire s_carry__3_n_2;
  wire s_carry__3_n_3;
  wire s_carry__4_n_0;
  wire s_carry__4_n_1;
  wire s_carry__4_n_2;
  wire s_carry__4_n_3;
  wire s_carry__5_n_0;
  wire s_carry__5_n_1;
  wire s_carry__5_n_2;
  wire s_carry__5_n_3;
  wire [29:0]s_carry__6_i_7;
  wire s_carry__6_i_8;
  wire s_carry__6_i_8_0;
  wire s_carry__6_n_1;
  wire s_carry__6_n_2;
  wire s_carry__6_n_3;
  wire s_carry_n_0;
  wire s_carry_n_1;
  wire s_carry_n_2;
  wire s_carry_n_3;
  wire [1:0]wd3;
  wire [3:3]NLW_s_carry__6_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFCC0BBBBFCC08888)) 
    \dataadr_OBUF[0]_inst_i_1 
       (.I0(O),
        .I1(\dataadr[0] ),
        .I2(bout),
        .I3(rd1[0]),
        .I4(\dataadr[0]_0 ),
        .I5(s_carry__6_i_7[0]),
        .O(dataadr_OBUF[0]));
  LUT6 #(
    .INIT(64'hC022FC22FC22C022)) 
    \dataadr_OBUF[13]_inst_i_1 
       (.I0(s),
        .I1(\dataadr[0] ),
        .I2(rd1[13]),
        .I3(\dataadr[0]_0 ),
        .I4(\dataadr[13] ),
        .I5(in),
        .O(dataadr_OBUF[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \dataadr_OBUF[31]_inst_i_11 
       (.I0(douta[2]),
        .I1(douta[0]),
        .O(\dataadr_OBUF[31]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFF70000FFFF0000)) 
    \dataadr_OBUF[31]_inst_i_5 
       (.I0(douta[1]),
        .I1(douta[4]),
        .I2(douta[3]),
        .I3(\dataadr_OBUF[31]_inst_i_11_n_0 ),
        .I4(s_carry__6_i_8),
        .I5(s_carry__6_i_8_0),
        .O(in));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_3
       (.I0(rf_reg_r1_0_31_12_17[0]),
        .I1(rf_reg_r1_0_31_12_17_0),
        .I2(dataadr_OBUF[0]),
        .O(wd3[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_1
       (.I0(rf_reg_r1_0_31_12_17[1]),
        .I1(rf_reg_r1_0_31_12_17_0),
        .I2(dataadr_OBUF[1]),
        .O(wd3[1]));
  CARRY4 s_carry
       (.CI(1'b0),
        .CO({s_carry_n_0,s_carry_n_1,s_carry_n_2,s_carry_n_3}),
        .CYINIT(bout),
        .DI(rd1[3:0]),
        .O(s_carry__6_i_7[3:0]),
        .S(S));
  CARRY4 s_carry__0
       (.CI(s_carry_n_0),
        .CO({s_carry__0_n_0,s_carry__0_n_1,s_carry__0_n_2,s_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rd1[7:4]),
        .O(s_carry__6_i_7[7:4]),
        .S(\dataadr_OBUF[4]_inst_i_1 ));
  CARRY4 s_carry__1
       (.CI(s_carry__0_n_0),
        .CO({s_carry__1_n_0,s_carry__1_n_1,s_carry__1_n_2,s_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(rd1[11:8]),
        .O(s_carry__6_i_7[11:8]),
        .S(\dataadr_OBUF[8]_inst_i_1 ));
  CARRY4 s_carry__2
       (.CI(s_carry__1_n_0),
        .CO({s_carry__2_n_0,s_carry__2_n_1,s_carry__2_n_2,s_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(rd1[15:12]),
        .O({s_carry__6_i_7[14:13],s,s_carry__6_i_7[12]}),
        .S(\dataadr_OBUF[12]_inst_i_1 ));
  CARRY4 s_carry__3
       (.CI(s_carry__2_n_0),
        .CO({s_carry__3_n_0,s_carry__3_n_1,s_carry__3_n_2,s_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(rd1[19:16]),
        .O(s_carry__6_i_7[18:15]),
        .S(\dataadr_OBUF[16]_inst_i_1 ));
  CARRY4 s_carry__4
       (.CI(s_carry__3_n_0),
        .CO({s_carry__4_n_0,s_carry__4_n_1,s_carry__4_n_2,s_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(rd1[23:20]),
        .O(s_carry__6_i_7[22:19]),
        .S(\dataadr_OBUF[20]_inst_i_1 ));
  CARRY4 s_carry__5
       (.CI(s_carry__4_n_0),
        .CO({s_carry__5_n_0,s_carry__5_n_1,s_carry__5_n_2,s_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(rd1[27:24]),
        .O(s_carry__6_i_7[26:23]),
        .S(\dataadr_OBUF[24]_inst_i_1 ));
  CARRY4 s_carry__6
       (.CI(s_carry__5_n_0),
        .CO({NLW_s_carry__6_CO_UNCONNECTED[3],s_carry__6_n_1,s_carry__6_n_2,s_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,rd1[30:28]}),
        .O({O,s_carry__6_i_7[29:27]}),
        .S(\dataadr_OBUF[28]_inst_i_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    s_carry_i_10
       (.I0(douta[8]),
        .I1(douta[7]),
        .I2(douta[5]),
        .I3(douta[6]),
        .I4(douta[9]),
        .O(\bbstub_douta[20] ));
  LUT6 #(
    .INIT(64'h00000A0000000004)) 
    s_carry_i_11
       (.I0(douta[10]),
        .I1(douta[13]),
        .I2(douta[14]),
        .I3(douta[11]),
        .I4(douta[12]),
        .I5(douta[15]),
        .O(\bbstub_douta[31] ));
endmodule

(* CHECK_LICENSE_TYPE = "data_ram,blk_mem_gen_v8_4_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *) 
module data_ram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "data_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  data_ram_blk_mem_gen_v8_4_3 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule

module datapath
   (dina,
    Q,
    dataadr_OBUF,
    douta,
    clk_IBUF_BUFG,
    AR,
    rf_reg_r2_0_31_30_31);
  output [31:0]dina;
  output [5:0]Q;
  output [31:0]dataadr_OBUF;
  input [31:0]douta;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [31:0]rf_reg_r2_0_31_30_31;

  wire [0:0]AR;
  wire [5:0]Q;
  wire alu_n_36;
  wire alu_n_37;
  wire [0:0]bout;
  wire clk_IBUF_BUFG;
  wire [31:0]dataadr_OBUF;
  wire [31:0]dina;
  wire [31:0]douta;
  wire in;
  wire p_0_in;
  wire pc_branch_adder_n_0;
  wire pc_branch_adder_n_1;
  wire pc_branch_adder_n_2;
  wire pc_branch_adder_n_3;
  wire pc_branch_adder_n_4;
  wire pc_branch_adder_n_5;
  wire pcadder4_n_0;
  wire pcadder4_n_1;
  wire pcadder4_n_2;
  wire pcadder4_n_3;
  wire pcadder4_n_4;
  wire pcadder4_n_5;
  wire pcadder4_n_6;
  wire pctry_n_0;
  wire pctry_n_1;
  wire pctry_n_10;
  wire pctry_n_11;
  wire pctry_n_12;
  wire pctry_n_13;
  wire pctry_n_14;
  wire pctry_n_8;
  wire pctry_n_9;
  wire [30:0]rd1;
  wire regfiles_n_0;
  wire regfiles_n_1;
  wire regfiles_n_107;
  wire regfiles_n_108;
  wire regfiles_n_109;
  wire regfiles_n_110;
  wire regfiles_n_111;
  wire regfiles_n_112;
  wire regfiles_n_113;
  wire regfiles_n_114;
  wire regfiles_n_115;
  wire regfiles_n_116;
  wire regfiles_n_117;
  wire regfiles_n_118;
  wire regfiles_n_119;
  wire regfiles_n_120;
  wire regfiles_n_121;
  wire regfiles_n_122;
  wire regfiles_n_123;
  wire regfiles_n_124;
  wire regfiles_n_125;
  wire regfiles_n_126;
  wire regfiles_n_127;
  wire regfiles_n_128;
  wire regfiles_n_129;
  wire regfiles_n_130;
  wire regfiles_n_131;
  wire regfiles_n_132;
  wire regfiles_n_133;
  wire regfiles_n_2;
  wire regfiles_n_3;
  wire regfiles_n_4;
  wire regfiles_n_5;
  wire regfiles_n_6;
  wire regfiles_n_7;
  wire regfiles_n_71;
  wire regfiles_n_72;
  wire regfiles_n_73;
  wire regfiles_n_74;
  wire regfiles_n_77;
  wire regfiles_n_78;
  wire [31:0]rf_reg_r2_0_31_30_31;
  wire [30:0]s;
  wire [13:0]wd3;

  alu alu
       (.O(p_0_in),
        .S({regfiles_n_0,regfiles_n_1,regfiles_n_2,regfiles_n_3}),
        .\bbstub_douta[20] (alu_n_37),
        .\bbstub_douta[31] (alu_n_36),
        .bout(bout),
        .\dataadr[0] (regfiles_n_77),
        .\dataadr[0]_0 (regfiles_n_78),
        .\dataadr[13] (regfiles_n_113),
        .dataadr_OBUF({dataadr_OBUF[13],dataadr_OBUF[0]}),
        .\dataadr_OBUF[12]_inst_i_1 ({regfiles_n_4,regfiles_n_5,regfiles_n_6,regfiles_n_7}),
        .\dataadr_OBUF[16]_inst_i_1 ({regfiles_n_122,regfiles_n_123,regfiles_n_124,regfiles_n_125}),
        .\dataadr_OBUF[20]_inst_i_1 ({regfiles_n_126,regfiles_n_127,regfiles_n_128,regfiles_n_129}),
        .\dataadr_OBUF[24]_inst_i_1 ({regfiles_n_130,regfiles_n_131,regfiles_n_132,regfiles_n_133}),
        .\dataadr_OBUF[28]_inst_i_1 ({regfiles_n_109,regfiles_n_110,regfiles_n_111,regfiles_n_112}),
        .\dataadr_OBUF[4]_inst_i_1 ({regfiles_n_114,regfiles_n_115,regfiles_n_116,regfiles_n_117}),
        .\dataadr_OBUF[8]_inst_i_1 ({regfiles_n_118,regfiles_n_119,regfiles_n_120,regfiles_n_121}),
        .douta({douta[31:26],douta[20:16],douta[5:4],douta[2:0]}),
        .in(in),
        .rd1(rd1),
        .rf_reg_r1_0_31_12_17({rf_reg_r2_0_31_30_31[13],rf_reg_r2_0_31_30_31[0]}),
        .rf_reg_r1_0_31_12_17_0(regfiles_n_107),
        .s_carry__6_i_7({s[30:14],s[12:0]}),
        .s_carry__6_i_8(regfiles_n_74),
        .s_carry__6_i_8_0(regfiles_n_108),
        .wd3({wd3[13],wd3[0]}));
  adder pc_branch_adder
       (.O({pc_branch_adder_n_0,pc_branch_adder_n_1,pc_branch_adder_n_2}),
        .Q({Q[4:0],pctry_n_8}),
        .S({pctry_n_12,pctry_n_13,pctry_n_14}),
        .\pcout_reg[6] ({pc_branch_adder_n_3,pc_branch_adder_n_4,pc_branch_adder_n_5}),
        .\pcout_reg[7] ({pctry_n_9,pctry_n_10,pctry_n_11}));
  adder_0 pcadder4
       (.O({pcadder4_n_0,pcadder4_n_1,pcadder4_n_2,pcadder4_n_3}),
        .Q({Q,pctry_n_8}),
        .S(pctry_n_1),
        .\pcout_reg[7] ({pcadder4_n_4,pcadder4_n_5,pcadder4_n_6}));
  pc pctry
       (.AR(AR),
        .D(regfiles_n_71),
        .O({pcadder4_n_0,pcadder4_n_1,pcadder4_n_2}),
        .Q({Q,pctry_n_8}),
        .S(pctry_n_1),
        .\bbstub_douta[26] (pctry_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .douta({douta[31:26],douta[5:0]}),
        .\pcout_reg[2]_0 (regfiles_n_73),
        .\pcout_reg[2]_1 (regfiles_n_72),
        .\pcout_reg[4]_0 ({pctry_n_12,pctry_n_13,pctry_n_14}),
        .\pcout_reg[4]_1 ({pc_branch_adder_n_0,pc_branch_adder_n_1,pc_branch_adder_n_2}),
        .\pcout_reg[7]_0 ({pctry_n_9,pctry_n_10,pctry_n_11}),
        .\pcout_reg[7]_1 ({pcadder4_n_4,pcadder4_n_5,pcadder4_n_6}),
        .\pcout_reg[7]_2 ({pc_branch_adder_n_3,pc_branch_adder_n_4,pc_branch_adder_n_5}));
  regfiles regfiles
       (.D(regfiles_n_71),
        .O(pcadder4_n_3),
        .Q(pctry_n_8),
        .S({regfiles_n_0,regfiles_n_1,regfiles_n_2,regfiles_n_3}),
        .\bbstub_douta[29] (regfiles_n_108),
        .\bbstub_douta[31] (regfiles_n_74),
        .\bbstub_douta[31]_0 (regfiles_n_107),
        .\bbstub_douta[4] (regfiles_n_78),
        .bout(bout),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\dataadr[30] ({s[30:14],s[12:0]}),
        .\dataadr[31] (p_0_in),
        .dataadr_OBUF({dataadr_OBUF[13],dataadr_OBUF[0]}),
        .\dataadr_OBUF[26]_inst_i_1_0 (regfiles_n_72),
        .\dataadr_OBUF[31]_inst_i_10_0 (regfiles_n_77),
        .\dataadr_OBUF[31]_inst_i_1_0 (alu_n_37),
        .\dataadr_OBUF[31]_inst_i_1_1 (alu_n_36),
        .\dataadr_OBUF[31]_inst_i_2_0 (dataadr_OBUF[24]),
        .\dataadr_OBUF[31]_inst_i_2_1 (dataadr_OBUF[25]),
        .\dataadr_OBUF[31]_inst_i_5 ({regfiles_n_4,regfiles_n_5,regfiles_n_6,regfiles_n_7}),
        .\dataadr_OBUF[31]_inst_i_5_0 ({regfiles_n_114,regfiles_n_115,regfiles_n_116,regfiles_n_117}),
        .\dataadr_OBUF[31]_inst_i_5_1 ({regfiles_n_118,regfiles_n_119,regfiles_n_120,regfiles_n_121}),
        .\dataadr_OBUF[31]_inst_i_5_2 ({regfiles_n_122,regfiles_n_123,regfiles_n_124,regfiles_n_125}),
        .\dataadr_OBUF[31]_inst_i_5_3 ({regfiles_n_126,regfiles_n_127,regfiles_n_128,regfiles_n_129}),
        .\dataadr_OBUF[31]_inst_i_5_4 ({regfiles_n_130,regfiles_n_131,regfiles_n_132,regfiles_n_133}),
        .dina(dina),
        .douta(douta),
        .in(in),
        .\pcout[7]_i_9_0 (regfiles_n_73),
        .\pcout_reg[1] (pctry_n_0),
        .rd1(rd1),
        .rf_reg_r1_0_31_12_17_0(regfiles_n_113),
        .rf_reg_r2_0_31_30_31_0({rf_reg_r2_0_31_30_31[31:14],rf_reg_r2_0_31_30_31[12:1]}),
        .s_carry__3_i_8_0({wd3[13],wd3[0]}),
        .s_carry__6({dataadr_OBUF[31:26],dataadr_OBUF[23:14],dataadr_OBUF[12:1]}),
        .s_carry__6_i_8_0({regfiles_n_109,regfiles_n_110,regfiles_n_111,regfiles_n_112}));
endmodule

(* CHECK_LICENSE_TYPE = "inst_ram,blk_mem_gen_v8_4_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *) 
module inst_ram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "inst_ram.mem" *) 
  (* C_INIT_FILE_NAME = "inst_ram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  inst_ram__blk_mem_gen_v8_4_3 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule

module mips
   (dina,
    Q,
    dataadr_OBUF,
    douta,
    clk_IBUF_BUFG,
    AR,
    rf_reg_r2_0_31_30_31);
  output [31:0]dina;
  output [5:0]Q;
  output [31:0]dataadr_OBUF;
  input [31:0]douta;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [31:0]rf_reg_r2_0_31_30_31;

  wire [0:0]AR;
  wire [5:0]Q;
  wire clk_IBUF_BUFG;
  wire [31:0]dataadr_OBUF;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [31:0]rf_reg_r2_0_31_30_31;

  datapath dp
       (.AR(AR),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dataadr_OBUF(dataadr_OBUF),
        .dina(dina),
        .douta(douta),
        .rf_reg_r2_0_31_30_31(rf_reg_r2_0_31_30_31));
endmodule

module pc
   (\bbstub_douta[26] ,
    S,
    Q,
    \pcout_reg[7]_0 ,
    \pcout_reg[4]_0 ,
    douta,
    O,
    \pcout_reg[2]_0 ,
    \pcout_reg[2]_1 ,
    \pcout_reg[4]_1 ,
    \pcout_reg[7]_1 ,
    \pcout_reg[7]_2 ,
    clk_IBUF_BUFG,
    AR,
    D);
  output \bbstub_douta[26] ;
  output [0:0]S;
  output [6:0]Q;
  output [2:0]\pcout_reg[7]_0 ;
  output [2:0]\pcout_reg[4]_0 ;
  input [11:0]douta;
  input [2:0]O;
  input \pcout_reg[2]_0 ;
  input \pcout_reg[2]_1 ;
  input [2:0]\pcout_reg[4]_1 ;
  input [2:0]\pcout_reg[7]_1 ;
  input [2:0]\pcout_reg[7]_2 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire [0:0]D;
  wire [2:0]O;
  wire [6:0]Q;
  wire [0:0]S;
  wire \bbstub_douta[26] ;
  wire clk_IBUF_BUFG;
  wire [11:0]douta;
  wire \pcout[2]_i_1_n_0 ;
  wire \pcout[3]_i_1_n_0 ;
  wire \pcout[4]_i_1_n_0 ;
  wire \pcout[5]_i_1_n_0 ;
  wire \pcout[6]_i_1_n_0 ;
  wire \pcout[7]_i_1_n_0 ;
  wire \pcout_reg[2]_0 ;
  wire \pcout_reg[2]_1 ;
  wire [2:0]\pcout_reg[4]_0 ;
  wire [2:0]\pcout_reg[4]_1 ;
  wire [2:0]\pcout_reg[7]_0 ;
  wire [2:0]\pcout_reg[7]_1 ;
  wire [2:0]\pcout_reg[7]_2 ;

  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \pcout[2]_i_1 
       (.I0(douta[0]),
        .I1(\bbstub_douta[26] ),
        .I2(O[0]),
        .I3(\pcout_reg[2]_0 ),
        .I4(\pcout_reg[2]_1 ),
        .I5(\pcout_reg[4]_1 [0]),
        .O(\pcout[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \pcout[3]_i_1 
       (.I0(douta[1]),
        .I1(\bbstub_douta[26] ),
        .I2(O[1]),
        .I3(\pcout_reg[2]_0 ),
        .I4(\pcout_reg[2]_1 ),
        .I5(\pcout_reg[4]_1 [1]),
        .O(\pcout[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \pcout[4]_i_1 
       (.I0(douta[2]),
        .I1(\bbstub_douta[26] ),
        .I2(O[2]),
        .I3(\pcout_reg[2]_0 ),
        .I4(\pcout_reg[2]_1 ),
        .I5(\pcout_reg[4]_1 [2]),
        .O(\pcout[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \pcout[5]_i_1 
       (.I0(douta[3]),
        .I1(\bbstub_douta[26] ),
        .I2(\pcout_reg[7]_1 [0]),
        .I3(\pcout_reg[2]_0 ),
        .I4(\pcout_reg[2]_1 ),
        .I5(\pcout_reg[7]_2 [0]),
        .O(\pcout[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \pcout[6]_i_1 
       (.I0(douta[4]),
        .I1(\bbstub_douta[26] ),
        .I2(\pcout_reg[7]_1 [1]),
        .I3(\pcout_reg[2]_0 ),
        .I4(\pcout_reg[2]_1 ),
        .I5(\pcout_reg[7]_2 [1]),
        .O(\pcout[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \pcout[7]_i_1 
       (.I0(douta[5]),
        .I1(\bbstub_douta[26] ),
        .I2(\pcout_reg[7]_1 [2]),
        .I3(\pcout_reg[2]_0 ),
        .I4(\pcout_reg[2]_1 ),
        .I5(\pcout_reg[7]_2 [2]),
        .O(\pcout[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \pcout[7]_i_2 
       (.I0(douta[11]),
        .I1(douta[8]),
        .I2(douta[7]),
        .I3(douta[10]),
        .I4(douta[9]),
        .I5(douta[6]),
        .O(\bbstub_douta[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \pcout_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pcout_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\pcout[2]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pcout_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\pcout[3]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pcout_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\pcout[4]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pcout_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\pcout[5]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pcout_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\pcout[6]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pcout_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\pcout[7]_i_1_n_0 ),
        .Q(Q[6]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_1
       (.I0(douta[5]),
        .I1(Q[6]),
        .O(\pcout_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_2
       (.I0(Q[5]),
        .I1(douta[4]),
        .O(\pcout_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_3
       (.I0(Q[4]),
        .I1(douta[3]),
        .O(\pcout_reg[7]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    y_carry_i_1
       (.I0(Q[1]),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_1__0
       (.I0(Q[3]),
        .I1(douta[2]),
        .O(\pcout_reg[4]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_2
       (.I0(Q[2]),
        .I1(douta[1]),
        .O(\pcout_reg[4]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_3
       (.I0(Q[1]),
        .I1(douta[0]),
        .O(\pcout_reg[4]_0 [0]));
endmodule

module regfiles
   (S,
    \dataadr_OBUF[31]_inst_i_5 ,
    rd1,
    dina,
    D,
    \dataadr_OBUF[26]_inst_i_1_0 ,
    \pcout[7]_i_9_0 ,
    \bbstub_douta[31] ,
    \dataadr_OBUF[31]_inst_i_2_0 ,
    \dataadr_OBUF[31]_inst_i_2_1 ,
    \dataadr_OBUF[31]_inst_i_10_0 ,
    \bbstub_douta[4] ,
    s_carry__6,
    \bbstub_douta[31]_0 ,
    \bbstub_douta[29] ,
    s_carry__6_i_8_0,
    rf_reg_r1_0_31_12_17_0,
    \dataadr_OBUF[31]_inst_i_5_0 ,
    \dataadr_OBUF[31]_inst_i_5_1 ,
    \dataadr_OBUF[31]_inst_i_5_2 ,
    \dataadr_OBUF[31]_inst_i_5_3 ,
    \dataadr_OBUF[31]_inst_i_5_4 ,
    bout,
    in,
    \dataadr_OBUF[31]_inst_i_1_0 ,
    \dataadr_OBUF[31]_inst_i_1_1 ,
    douta,
    Q,
    O,
    \pcout_reg[1] ,
    dataadr_OBUF,
    \dataadr[31] ,
    \dataadr[30] ,
    s_carry__3_i_8_0,
    rf_reg_r2_0_31_30_31_0,
    clk_IBUF_BUFG);
  output [3:0]S;
  output [3:0]\dataadr_OBUF[31]_inst_i_5 ;
  output [30:0]rd1;
  output [31:0]dina;
  output [0:0]D;
  output \dataadr_OBUF[26]_inst_i_1_0 ;
  output \pcout[7]_i_9_0 ;
  output \bbstub_douta[31] ;
  output \dataadr_OBUF[31]_inst_i_2_0 ;
  output \dataadr_OBUF[31]_inst_i_2_1 ;
  output \dataadr_OBUF[31]_inst_i_10_0 ;
  output \bbstub_douta[4] ;
  output [27:0]s_carry__6;
  output \bbstub_douta[31]_0 ;
  output \bbstub_douta[29] ;
  output [3:0]s_carry__6_i_8_0;
  output rf_reg_r1_0_31_12_17_0;
  output [3:0]\dataadr_OBUF[31]_inst_i_5_0 ;
  output [3:0]\dataadr_OBUF[31]_inst_i_5_1 ;
  output [3:0]\dataadr_OBUF[31]_inst_i_5_2 ;
  output [3:0]\dataadr_OBUF[31]_inst_i_5_3 ;
  output [3:0]\dataadr_OBUF[31]_inst_i_5_4 ;
  output [0:0]bout;
  input in;
  input \dataadr_OBUF[31]_inst_i_1_0 ;
  input \dataadr_OBUF[31]_inst_i_1_1 ;
  input [31:0]douta;
  input [0:0]Q;
  input [0:0]O;
  input \pcout_reg[1] ;
  input [1:0]dataadr_OBUF;
  input [0:0]\dataadr[31] ;
  input [29:0]\dataadr[30] ;
  input [1:0]s_carry__3_i_8_0;
  input [29:0]rf_reg_r2_0_31_30_31_0;
  input clk_IBUF_BUFG;

  wire [0:0]D;
  wire [0:0]O;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]\alu/bout0 ;
  wire \bbstub_douta[29] ;
  wire \bbstub_douta[31] ;
  wire \bbstub_douta[31]_0 ;
  wire \bbstub_douta[4] ;
  wire [0:0]bout;
  wire clk_IBUF_BUFG;
  wire [29:0]\dataadr[30] ;
  wire [0:0]\dataadr[31] ;
  wire [1:0]dataadr_OBUF;
  wire \dataadr_OBUF[10]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[11]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[12]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[14]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[15]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[16]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[17]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[18]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[19]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[1]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[20]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[21]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[22]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[23]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[24]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[25]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[26]_inst_i_1_0 ;
  wire \dataadr_OBUF[26]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[26]_inst_i_3_n_0 ;
  wire \dataadr_OBUF[27]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[28]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[29]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[2]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[30]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[31]_inst_i_10_0 ;
  wire \dataadr_OBUF[31]_inst_i_10_n_0 ;
  wire \dataadr_OBUF[31]_inst_i_1_0 ;
  wire \dataadr_OBUF[31]_inst_i_1_1 ;
  wire \dataadr_OBUF[31]_inst_i_2_0 ;
  wire \dataadr_OBUF[31]_inst_i_2_1 ;
  wire \dataadr_OBUF[31]_inst_i_3_n_0 ;
  wire \dataadr_OBUF[31]_inst_i_4_n_0 ;
  wire [3:0]\dataadr_OBUF[31]_inst_i_5 ;
  wire [3:0]\dataadr_OBUF[31]_inst_i_5_0 ;
  wire [3:0]\dataadr_OBUF[31]_inst_i_5_1 ;
  wire [3:0]\dataadr_OBUF[31]_inst_i_5_2 ;
  wire [3:0]\dataadr_OBUF[31]_inst_i_5_3 ;
  wire [3:0]\dataadr_OBUF[31]_inst_i_5_4 ;
  wire \dataadr_OBUF[31]_inst_i_8_n_0 ;
  wire \dataadr_OBUF[3]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[4]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[5]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[6]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[7]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[8]_inst_i_2_n_0 ;
  wire \dataadr_OBUF[9]_inst_i_2_n_0 ;
  wire [31:0]dina;
  wire [31:0]douta;
  wire in;
  wire \pcout[1]_i_2_n_0 ;
  wire \pcout[1]_i_3_n_0 ;
  wire \pcout[7]_i_10_n_0 ;
  wire \pcout[7]_i_11_n_0 ;
  wire \pcout[7]_i_12_n_0 ;
  wire \pcout[7]_i_5_n_0 ;
  wire \pcout[7]_i_6_n_0 ;
  wire \pcout[7]_i_7_n_0 ;
  wire \pcout[7]_i_8_n_0 ;
  wire \pcout[7]_i_9_0 ;
  wire \pcout[7]_i_9_n_0 ;
  wire \pcout_reg[1] ;
  wire [30:0]rd1;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire rf_reg_r1_0_31_0_5_i_14_n_0;
  wire rf_reg_r1_0_31_0_5_i_1_n_0;
  wire rf_reg_r1_0_31_12_17_0;
  wire [29:0]rf_reg_r2_0_31_30_31_0;
  wire [1:0]s_carry__3_i_8_0;
  wire [27:0]s_carry__6;
  wire [3:0]s_carry__6_i_8_0;
  wire s_carry__6_i_8_n_0;
  wire [31:1]wd3;
  wire [4:0]write2reg;
  wire [1:0]NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'hEB00EB0082FF8200)) 
    \dataadr_OBUF[10]_inst_i_1 
       (.I0(rd1[10]),
        .I1(\dataadr_OBUF[10]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [10]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[9]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \dataadr_OBUF[10]_inst_i_2 
       (.I0(douta[10]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(rd20[10]),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .O(\dataadr_OBUF[10]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEB825555EB820000)) 
    \dataadr_OBUF[11]_inst_i_1 
       (.I0(\dataadr_OBUF[31]_inst_i_10_0 ),
        .I1(\dataadr_OBUF[11]_inst_i_2_n_0 ),
        .I2(in),
        .I3(rd1[11]),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[30] [11]),
        .O(s_carry__6[10]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \dataadr_OBUF[11]_inst_i_2 
       (.I0(douta[11]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(rd20[11]),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .O(\dataadr_OBUF[11]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEB00EB0082FF8200)) 
    \dataadr_OBUF[12]_inst_i_1 
       (.I0(rd1[12]),
        .I1(\dataadr_OBUF[12]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [12]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[11]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \dataadr_OBUF[12]_inst_i_2 
       (.I0(douta[12]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(rd20[12]),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .O(\dataadr_OBUF[12]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[13]_inst_i_2 
       (.I0(douta[13]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[13]),
        .O(rf_reg_r1_0_31_12_17_0));
  LUT6 #(
    .INIT(64'hEB00EB0082FF8200)) 
    \dataadr_OBUF[14]_inst_i_1 
       (.I0(rd1[14]),
        .I1(\dataadr_OBUF[14]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [13]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[12]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \dataadr_OBUF[14]_inst_i_2 
       (.I0(douta[14]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(rd20[14]),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .O(\dataadr_OBUF[14]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE0028FF2800)) 
    \dataadr_OBUF[15]_inst_i_1 
       (.I0(rd1[15]),
        .I1(\dataadr_OBUF[15]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [14]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[13]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[15]_inst_i_2 
       (.I0(douta[15]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[15]),
        .O(\dataadr_OBUF[15]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE0028FF2800)) 
    \dataadr_OBUF[16]_inst_i_1 
       (.I0(rd1[16]),
        .I1(\dataadr_OBUF[16]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [15]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[14]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[16]_inst_i_2 
       (.I0(douta[15]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[16]),
        .O(\dataadr_OBUF[16]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8E8855558E880000)) 
    \dataadr_OBUF[17]_inst_i_1 
       (.I0(\dataadr_OBUF[31]_inst_i_10_0 ),
        .I1(\dataadr_OBUF[17]_inst_i_2_n_0 ),
        .I2(\dataadr_OBUF[26]_inst_i_3_n_0 ),
        .I3(rd10[17]),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[30] [16]),
        .O(s_carry__6[15]));
  LUT5 #(
    .INIT(32'hAA655565)) 
    \dataadr_OBUF[17]_inst_i_2 
       (.I0(in),
        .I1(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I2(rd20[17]),
        .I3(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I4(douta[15]),
        .O(\dataadr_OBUF[17]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE0028FF2800)) 
    \dataadr_OBUF[18]_inst_i_1 
       (.I0(rd1[18]),
        .I1(\dataadr_OBUF[18]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [17]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[16]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[18]_inst_i_2 
       (.I0(douta[15]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[18]),
        .O(\dataadr_OBUF[18]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE0028FF2800)) 
    \dataadr_OBUF[19]_inst_i_1 
       (.I0(rd1[19]),
        .I1(\dataadr_OBUF[19]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [18]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[17]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[19]_inst_i_2 
       (.I0(douta[15]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[19]),
        .O(\dataadr_OBUF[19]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE285555BE280000)) 
    \dataadr_OBUF[1]_inst_i_1 
       (.I0(\dataadr_OBUF[31]_inst_i_10_0 ),
        .I1(\dataadr_OBUF[1]_inst_i_2_n_0 ),
        .I2(in),
        .I3(rd1[1]),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[30] [1]),
        .O(s_carry__6[0]));
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[1]_inst_i_2 
       (.I0(douta[1]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[1]),
        .O(\dataadr_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8E8855558E880000)) 
    \dataadr_OBUF[20]_inst_i_1 
       (.I0(\dataadr_OBUF[31]_inst_i_10_0 ),
        .I1(\dataadr_OBUF[20]_inst_i_2_n_0 ),
        .I2(\dataadr_OBUF[26]_inst_i_3_n_0 ),
        .I3(rd10[20]),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[30] [19]),
        .O(s_carry__6[18]));
  LUT5 #(
    .INIT(32'hAA655565)) 
    \dataadr_OBUF[20]_inst_i_2 
       (.I0(in),
        .I1(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I2(rd20[20]),
        .I3(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I4(douta[15]),
        .O(\dataadr_OBUF[20]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8E8855558E880000)) 
    \dataadr_OBUF[21]_inst_i_1 
       (.I0(\dataadr_OBUF[31]_inst_i_10_0 ),
        .I1(\dataadr_OBUF[21]_inst_i_2_n_0 ),
        .I2(\dataadr_OBUF[26]_inst_i_3_n_0 ),
        .I3(rd10[21]),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[30] [20]),
        .O(s_carry__6[19]));
  LUT5 #(
    .INIT(32'hAA655565)) 
    \dataadr_OBUF[21]_inst_i_2 
       (.I0(in),
        .I1(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I2(rd20[21]),
        .I3(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I4(douta[15]),
        .O(\dataadr_OBUF[21]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE285555BE280000)) 
    \dataadr_OBUF[22]_inst_i_1 
       (.I0(\dataadr_OBUF[31]_inst_i_10_0 ),
        .I1(\dataadr_OBUF[22]_inst_i_2_n_0 ),
        .I2(in),
        .I3(rd1[22]),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[30] [21]),
        .O(s_carry__6[20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[22]_inst_i_2 
       (.I0(douta[15]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[22]),
        .O(\dataadr_OBUF[22]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE285555BE280000)) 
    \dataadr_OBUF[23]_inst_i_1 
       (.I0(\dataadr_OBUF[31]_inst_i_10_0 ),
        .I1(\dataadr_OBUF[23]_inst_i_2_n_0 ),
        .I2(in),
        .I3(rd1[23]),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[30] [22]),
        .O(s_carry__6[21]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[23]_inst_i_2 
       (.I0(douta[15]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[23]),
        .O(\dataadr_OBUF[23]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE0028FF2800)) 
    \dataadr_OBUF[24]_inst_i_1 
       (.I0(rd1[24]),
        .I1(\dataadr_OBUF[24]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [23]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(\dataadr_OBUF[31]_inst_i_2_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[24]_inst_i_2 
       (.I0(douta[15]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[24]),
        .O(\dataadr_OBUF[24]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE0028FF2800)) 
    \dataadr_OBUF[25]_inst_i_1 
       (.I0(rd1[25]),
        .I1(\dataadr_OBUF[25]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [24]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(\dataadr_OBUF[31]_inst_i_2_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[25]_inst_i_2 
       (.I0(douta[15]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[25]),
        .O(\dataadr_OBUF[25]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8E8855558E880000)) 
    \dataadr_OBUF[26]_inst_i_1 
       (.I0(\dataadr_OBUF[31]_inst_i_10_0 ),
        .I1(\dataadr_OBUF[26]_inst_i_2_n_0 ),
        .I2(\dataadr_OBUF[26]_inst_i_3_n_0 ),
        .I3(rd10[26]),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[30] [25]),
        .O(s_carry__6[22]));
  LUT5 #(
    .INIT(32'hAA655565)) 
    \dataadr_OBUF[26]_inst_i_2 
       (.I0(in),
        .I1(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I2(rd20[26]),
        .I3(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I4(douta[15]),
        .O(\dataadr_OBUF[26]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \dataadr_OBUF[26]_inst_i_3 
       (.I0(douta[25]),
        .I1(douta[24]),
        .I2(douta[22]),
        .I3(douta[21]),
        .I4(douta[23]),
        .O(\dataadr_OBUF[26]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE0028FF2800)) 
    \dataadr_OBUF[27]_inst_i_1 
       (.I0(rd1[27]),
        .I1(\dataadr_OBUF[27]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [26]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[27]_inst_i_2 
       (.I0(douta[15]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[27]),
        .O(\dataadr_OBUF[27]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE0028FF2800)) 
    \dataadr_OBUF[28]_inst_i_1 
       (.I0(rd1[28]),
        .I1(\dataadr_OBUF[28]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [27]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[24]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[28]_inst_i_2 
       (.I0(douta[15]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[28]),
        .O(\dataadr_OBUF[28]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE0028FF2800)) 
    \dataadr_OBUF[29]_inst_i_1 
       (.I0(rd1[29]),
        .I1(\dataadr_OBUF[29]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [28]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[25]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[29]_inst_i_2 
       (.I0(douta[15]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[29]),
        .O(\dataadr_OBUF[29]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8E8855558E880000)) 
    \dataadr_OBUF[2]_inst_i_1 
       (.I0(\dataadr_OBUF[31]_inst_i_10_0 ),
        .I1(\dataadr_OBUF[2]_inst_i_2_n_0 ),
        .I2(\dataadr_OBUF[26]_inst_i_3_n_0 ),
        .I3(rd10[2]),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[30] [2]),
        .O(s_carry__6[1]));
  LUT5 #(
    .INIT(32'hAA655565)) 
    \dataadr_OBUF[2]_inst_i_2 
       (.I0(in),
        .I1(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I2(rd20[2]),
        .I3(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I4(douta[2]),
        .O(\dataadr_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE0028FF2800)) 
    \dataadr_OBUF[30]_inst_i_1 
       (.I0(rd1[30]),
        .I1(\dataadr_OBUF[30]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [29]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[26]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[30]_inst_i_2 
       (.I0(douta[15]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[30]),
        .O(\dataadr_OBUF[30]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8EE855558EE80000)) 
    \dataadr_OBUF[31]_inst_i_1 
       (.I0(\dataadr_OBUF[31]_inst_i_10_0 ),
        .I1(\dataadr_OBUF[31]_inst_i_3_n_0 ),
        .I2(\dataadr_OBUF[31]_inst_i_4_n_0 ),
        .I3(in),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[31] ),
        .O(s_carry__6[27]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFD3D)) 
    \dataadr_OBUF[31]_inst_i_10 
       (.I0(douta[3]),
        .I1(douta[2]),
        .I2(douta[0]),
        .I3(douta[1]),
        .O(\dataadr_OBUF[31]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \dataadr_OBUF[31]_inst_i_2 
       (.I0(\bbstub_douta[29] ),
        .I1(\dataadr_OBUF[31]_inst_i_8_n_0 ),
        .I2(douta[4]),
        .I3(\bbstub_douta[31] ),
        .I4(\dataadr_OBUF[31]_inst_i_10_n_0 ),
        .O(\dataadr_OBUF[31]_inst_i_10_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \dataadr_OBUF[31]_inst_i_3 
       (.I0(rd10[31]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(\dataadr_OBUF[31]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[31]_inst_i_4 
       (.I0(douta[15]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[31]),
        .O(\dataadr_OBUF[31]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA8A)) 
    \dataadr_OBUF[31]_inst_i_6 
       (.I0(\bbstub_douta[29] ),
        .I1(\dataadr_OBUF[31]_inst_i_8_n_0 ),
        .I2(\bbstub_douta[31] ),
        .I3(douta[2]),
        .I4(douta[0]),
        .I5(douta[4]),
        .O(\bbstub_douta[4] ));
  LUT6 #(
    .INIT(64'hFFFFDFFEFFFEDFEF)) 
    \dataadr_OBUF[31]_inst_i_7 
       (.I0(douta[31]),
        .I1(douta[30]),
        .I2(douta[27]),
        .I3(douta[26]),
        .I4(douta[28]),
        .I5(douta[29]),
        .O(\bbstub_douta[29] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \dataadr_OBUF[31]_inst_i_8 
       (.I0(douta[1]),
        .I1(douta[3]),
        .I2(douta[5]),
        .O(\dataadr_OBUF[31]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \dataadr_OBUF[31]_inst_i_9 
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[26]),
        .I3(douta[27]),
        .I4(douta[28]),
        .I5(douta[31]),
        .O(\bbstub_douta[31] ));
  LUT6 #(
    .INIT(64'hBE00BE0028FF2800)) 
    \dataadr_OBUF[3]_inst_i_1 
       (.I0(rd1[3]),
        .I1(\dataadr_OBUF[3]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [3]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[2]));
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[3]_inst_i_2 
       (.I0(douta[3]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[3]),
        .O(\dataadr_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEB00EB0082FF8200)) 
    \dataadr_OBUF[4]_inst_i_1 
       (.I0(rd1[4]),
        .I1(\dataadr_OBUF[4]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [4]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[3]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \dataadr_OBUF[4]_inst_i_2 
       (.I0(douta[4]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(rd20[4]),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .O(\dataadr_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE285555BE280000)) 
    \dataadr_OBUF[5]_inst_i_1 
       (.I0(\dataadr_OBUF[31]_inst_i_10_0 ),
        .I1(\dataadr_OBUF[5]_inst_i_2_n_0 ),
        .I2(in),
        .I3(rd1[5]),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[30] [5]),
        .O(s_carry__6[4]));
  LUT4 #(
    .INIT(16'h7477)) 
    \dataadr_OBUF[5]_inst_i_2 
       (.I0(douta[5]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(rd20[5]),
        .O(\dataadr_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEB825555EB820000)) 
    \dataadr_OBUF[6]_inst_i_1 
       (.I0(\dataadr_OBUF[31]_inst_i_10_0 ),
        .I1(\dataadr_OBUF[6]_inst_i_2_n_0 ),
        .I2(in),
        .I3(rd1[6]),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[30] [6]),
        .O(s_carry__6[5]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \dataadr_OBUF[6]_inst_i_2 
       (.I0(douta[6]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(rd20[6]),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .O(\dataadr_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEB825555EB820000)) 
    \dataadr_OBUF[7]_inst_i_1 
       (.I0(\dataadr_OBUF[31]_inst_i_10_0 ),
        .I1(\dataadr_OBUF[7]_inst_i_2_n_0 ),
        .I2(in),
        .I3(rd1[7]),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[30] [7]),
        .O(s_carry__6[6]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \dataadr_OBUF[7]_inst_i_2 
       (.I0(douta[7]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(rd20[7]),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .O(\dataadr_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEB00EB0082FF8200)) 
    \dataadr_OBUF[8]_inst_i_1 
       (.I0(rd1[8]),
        .I1(\dataadr_OBUF[8]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [8]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[7]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \dataadr_OBUF[8]_inst_i_2 
       (.I0(douta[8]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(rd20[8]),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .O(\dataadr_OBUF[8]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEB00EB0082FF8200)) 
    \dataadr_OBUF[9]_inst_i_1 
       (.I0(rd1[9]),
        .I1(\dataadr_OBUF[9]_inst_i_2_n_0 ),
        .I2(in),
        .I3(\bbstub_douta[4] ),
        .I4(\dataadr[30] [9]),
        .I5(\dataadr_OBUF[31]_inst_i_10_0 ),
        .O(s_carry__6[8]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \dataadr_OBUF[9]_inst_i_2 
       (.I0(douta[9]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(rd20[9]),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .O(\dataadr_OBUF[9]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAC)) 
    \pcout[1]_i_1 
       (.I0(Q),
        .I1(O),
        .I2(\dataadr_OBUF[26]_inst_i_1_0 ),
        .I3(\pcout[1]_i_2_n_0 ),
        .I4(\pcout[1]_i_3_n_0 ),
        .I5(\pcout_reg[1] ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pcout[1]_i_2 
       (.I0(s_carry__6[6]),
        .I1(s_carry__6[5]),
        .I2(s_carry__6[10]),
        .I3(\pcout[7]_i_5_n_0 ),
        .O(\pcout[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pcout[1]_i_3 
       (.I0(dataadr_OBUF[0]),
        .I1(\bbstub_douta[31] ),
        .I2(\dataadr_OBUF[31]_inst_i_2_0 ),
        .I3(\dataadr_OBUF[31]_inst_i_2_1 ),
        .I4(\pcout[7]_i_8_n_0 ),
        .I5(\pcout[7]_i_7_n_0 ),
        .O(\pcout[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pcout[7]_i_10 
       (.I0(s_carry__6[2]),
        .I1(s_carry__6[11]),
        .I2(s_carry__6[12]),
        .I3(s_carry__6[13]),
        .I4(s_carry__6[4]),
        .I5(s_carry__6[0]),
        .O(\pcout[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6F66FFFF6F660000)) 
    \pcout[7]_i_11 
       (.I0(\alu/bout0 ),
        .I1(in),
        .I2(\dataadr_OBUF[26]_inst_i_3_n_0 ),
        .I3(rd10[0]),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[31] ),
        .O(\pcout[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0600FFFF06000000)) 
    \pcout[7]_i_12 
       (.I0(\alu/bout0 ),
        .I1(in),
        .I2(\dataadr_OBUF[26]_inst_i_3_n_0 ),
        .I3(rd10[0]),
        .I4(\bbstub_douta[4] ),
        .I5(\dataadr[30] [0]),
        .O(\pcout[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7747)) 
    \pcout[7]_i_13 
       (.I0(douta[0]),
        .I1(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I2(rd20[0]),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .O(\alu/bout0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pcout[7]_i_3 
       (.I0(\pcout[7]_i_5_n_0 ),
        .I1(\pcout[7]_i_6_n_0 ),
        .I2(\pcout[7]_i_7_n_0 ),
        .I3(\pcout[7]_i_8_n_0 ),
        .I4(\pcout[7]_i_9_n_0 ),
        .O(\pcout[7]_i_9_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pcout[7]_i_4 
       (.I0(\pcout[7]_i_10_n_0 ),
        .I1(s_carry__6[1]),
        .I2(s_carry__6[19]),
        .I3(s_carry__6[18]),
        .I4(s_carry__6[15]),
        .I5(s_carry__6[22]),
        .O(\dataadr_OBUF[26]_inst_i_1_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pcout[7]_i_5 
       (.I0(s_carry__6[27]),
        .I1(s_carry__6[9]),
        .I2(dataadr_OBUF[1]),
        .I3(s_carry__6[8]),
        .I4(s_carry__6[7]),
        .O(\pcout[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pcout[7]_i_6 
       (.I0(s_carry__6[10]),
        .I1(s_carry__6[5]),
        .I2(s_carry__6[6]),
        .O(\pcout[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pcout[7]_i_7 
       (.I0(s_carry__6[21]),
        .I1(s_carry__6[20]),
        .I2(s_carry__6[3]),
        .I3(s_carry__6[26]),
        .I4(s_carry__6[14]),
        .I5(s_carry__6[16]),
        .O(\pcout[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pcout[7]_i_8 
       (.I0(s_carry__6[25]),
        .I1(s_carry__6[24]),
        .I2(s_carry__6[17]),
        .I3(s_carry__6[23]),
        .O(\pcout[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFB8)) 
    \pcout[7]_i_9 
       (.I0(\pcout[7]_i_11_n_0 ),
        .I1(\dataadr_OBUF[31]_inst_i_10_0 ),
        .I2(\pcout[7]_i_12_n_0 ),
        .I3(\bbstub_douta[31] ),
        .I4(\dataadr_OBUF[31]_inst_i_2_0 ),
        .I5(\dataadr_OBUF[31]_inst_i_2_1 ),
        .O(\pcout[7]_i_9_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mips/dp/regfiles/rf" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_0_5
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(write2reg),
        .DIA({wd3[1],s_carry__3_i_8_0[0]}),
        .DIB(wd3[3:2]),
        .DIC(wd3[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(rf_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000020000000005)) 
    rf_reg_r1_0_31_0_5_i_1
       (.I0(douta[26]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[27]),
        .I4(douta[28]),
        .I5(douta[31]),
        .O(rf_reg_r1_0_31_0_5_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_10
       (.I0(douta[18]),
        .I1(rf_reg_r1_0_31_0_5_i_14_n_0),
        .I2(douta[13]),
        .O(write2reg[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_11
       (.I0(douta[17]),
        .I1(rf_reg_r1_0_31_0_5_i_14_n_0),
        .I2(douta[12]),
        .O(write2reg[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_12
       (.I0(douta[16]),
        .I1(rf_reg_r1_0_31_0_5_i_14_n_0),
        .I2(douta[11]),
        .O(write2reg[0]));
  LUT6 #(
    .INIT(64'h00000A0000010000)) 
    rf_reg_r1_0_31_0_5_i_13
       (.I0(douta[26]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[27]),
        .I4(douta[28]),
        .I5(douta[31]),
        .O(\bbstub_douta[31]_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFA)) 
    rf_reg_r1_0_31_0_5_i_14
       (.I0(douta[31]),
        .I1(douta[28]),
        .I2(douta[30]),
        .I3(douta[27]),
        .I4(douta[26]),
        .I5(douta[29]),
        .O(rf_reg_r1_0_31_0_5_i_14_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_2
       (.I0(rf_reg_r2_0_31_30_31_0[0]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[0]),
        .O(wd3[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_4
       (.I0(rf_reg_r2_0_31_30_31_0[2]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[2]),
        .O(wd3[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_5
       (.I0(rf_reg_r2_0_31_30_31_0[1]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[1]),
        .O(wd3[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_6
       (.I0(rf_reg_r2_0_31_30_31_0[4]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[4]),
        .O(wd3[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_7
       (.I0(rf_reg_r2_0_31_30_31_0[3]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[3]),
        .O(wd3[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_8
       (.I0(douta[20]),
        .I1(rf_reg_r1_0_31_0_5_i_14_n_0),
        .I2(douta[15]),
        .O(write2reg[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_9
       (.I0(douta[19]),
        .I1(rf_reg_r1_0_31_0_5_i_14_n_0),
        .I2(douta[14]),
        .O(write2reg[3]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mips/dp/regfiles/rf" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_12_17
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(write2reg),
        .DIA({s_carry__3_i_8_0[1],wd3[12]}),
        .DIB(wd3[15:14]),
        .DIC(wd3[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[13:12]),
        .DOB(rd20[15:14]),
        .DOC(rd20[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(rf_reg_r1_0_31_0_5_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_2
       (.I0(rf_reg_r2_0_31_30_31_0[11]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[11]),
        .O(wd3[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_3
       (.I0(rf_reg_r2_0_31_30_31_0[13]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[13]),
        .O(wd3[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_4
       (.I0(rf_reg_r2_0_31_30_31_0[12]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[12]),
        .O(wd3[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_5
       (.I0(rf_reg_r2_0_31_30_31_0[15]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[15]),
        .O(wd3[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_6
       (.I0(rf_reg_r2_0_31_30_31_0[14]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[14]),
        .O(wd3[16]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mips/dp/regfiles/rf" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_18_23
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(write2reg),
        .DIA(wd3[19:18]),
        .DIB(wd3[21:20]),
        .DIC(wd3[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[19:18]),
        .DOB(rd20[21:20]),
        .DOC(rd20[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(rf_reg_r1_0_31_0_5_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_1
       (.I0(rf_reg_r2_0_31_30_31_0[17]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[17]),
        .O(wd3[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_2
       (.I0(rf_reg_r2_0_31_30_31_0[16]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[16]),
        .O(wd3[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_3
       (.I0(rf_reg_r2_0_31_30_31_0[19]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[19]),
        .O(wd3[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_4
       (.I0(rf_reg_r2_0_31_30_31_0[18]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[18]),
        .O(wd3[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_5
       (.I0(rf_reg_r2_0_31_30_31_0[21]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[21]),
        .O(wd3[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_6
       (.I0(rf_reg_r2_0_31_30_31_0[20]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[20]),
        .O(wd3[22]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mips/dp/regfiles/rf" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_24_29
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(write2reg),
        .DIA(wd3[25:24]),
        .DIB(wd3[27:26]),
        .DIC(wd3[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[25:24]),
        .DOB(rd20[27:26]),
        .DOC(rd20[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(rf_reg_r1_0_31_0_5_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_1
       (.I0(rf_reg_r2_0_31_30_31_0[23]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(\dataadr_OBUF[31]_inst_i_2_1 ),
        .O(wd3[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_2
       (.I0(rf_reg_r2_0_31_30_31_0[22]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(\dataadr_OBUF[31]_inst_i_2_0 ),
        .O(wd3[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_3
       (.I0(rf_reg_r2_0_31_30_31_0[25]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[23]),
        .O(wd3[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_4
       (.I0(rf_reg_r2_0_31_30_31_0[24]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[22]),
        .O(wd3[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_5
       (.I0(rf_reg_r2_0_31_30_31_0[27]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[25]),
        .O(wd3[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_6
       (.I0(rf_reg_r2_0_31_30_31_0[26]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[24]),
        .O(wd3[28]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mips/dp/regfiles/rf" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_30_31
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(write2reg),
        .DIA(wd3[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rd20[31:30]),
        .DOB(NLW_rf_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_rf_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_rf_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(rf_reg_r1_0_31_0_5_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_30_31_i_1
       (.I0(rf_reg_r2_0_31_30_31_0[29]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[27]),
        .O(wd3[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_30_31_i_2
       (.I0(rf_reg_r2_0_31_30_31_0[28]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[26]),
        .O(wd3[30]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mips/dp/regfiles/rf" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_6_11
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(write2reg),
        .DIA(wd3[7:6]),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20[9:8]),
        .DOC(rd20[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(rf_reg_r1_0_31_0_5_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_1
       (.I0(rf_reg_r2_0_31_30_31_0[6]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[6]),
        .O(wd3[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_2
       (.I0(rf_reg_r2_0_31_30_31_0[5]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[5]),
        .O(wd3[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_3
       (.I0(rf_reg_r2_0_31_30_31_0[8]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[8]),
        .O(wd3[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_4
       (.I0(rf_reg_r2_0_31_30_31_0[7]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[7]),
        .O(wd3[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_5
       (.I0(rf_reg_r2_0_31_30_31_0[10]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[10]),
        .O(wd3[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_6
       (.I0(rf_reg_r2_0_31_30_31_0[9]),
        .I1(\bbstub_douta[31]_0 ),
        .I2(s_carry__6[9]),
        .O(wd3[10]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mips/dp/regfiles/rf" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_0_5
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(write2reg),
        .DIA({wd3[1],s_carry__3_i_8_0[0]}),
        .DIB(wd3[3:2]),
        .DIC(wd3[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[1:0]),
        .DOB(rd10[3:2]),
        .DOC(rd10[5:4]),
        .DOD(NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(rf_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mips/dp/regfiles/rf" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_12_17
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(write2reg),
        .DIA({s_carry__3_i_8_0[1],wd3[12]}),
        .DIB(wd3[15:14]),
        .DIC(wd3[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[13:12]),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(rf_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mips/dp/regfiles/rf" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_18_23
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(write2reg),
        .DIA(wd3[19:18]),
        .DIB(wd3[21:20]),
        .DIC(wd3[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[19:18]),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(rf_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mips/dp/regfiles/rf" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_24_29
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(write2reg),
        .DIA(wd3[25:24]),
        .DIB(wd3[27:26]),
        .DIC(wd3[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[25:24]),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(rf_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mips/dp/regfiles/rf" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_30_31
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(write2reg),
        .DIA(wd3[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rd10[31:30]),
        .DOB(NLW_rf_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_rf_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_rf_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(rf_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "mips/dp/regfiles/rf" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_6_11
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(write2reg),
        .DIA(wd3[7:6]),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[7:6]),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(rf_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__0_i_1
       (.I0(rd10[7]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__0_i_2
       (.I0(rd10[6]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__0_i_3
       (.I0(rd10[5]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__0_i_4
       (.I0(rd10[4]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[4]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    s_carry__0_i_5
       (.I0(rd1[7]),
        .I1(douta[7]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(rd20[7]),
        .I4(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_0 [3]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    s_carry__0_i_6
       (.I0(rd1[6]),
        .I1(douta[6]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(rd20[6]),
        .I4(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_0 [2]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry__0_i_7
       (.I0(rd1[5]),
        .I1(douta[5]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[5]),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_0 [1]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    s_carry__0_i_8
       (.I0(rd1[4]),
        .I1(douta[4]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(rd20[4]),
        .I4(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_0 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__1_i_1
       (.I0(rd10[11]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__1_i_2
       (.I0(rd10[10]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__1_i_3
       (.I0(rd10[9]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__1_i_4
       (.I0(rd10[8]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[8]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    s_carry__1_i_5
       (.I0(rd1[11]),
        .I1(douta[11]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(rd20[11]),
        .I4(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_1 [3]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    s_carry__1_i_6
       (.I0(rd1[10]),
        .I1(douta[10]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(rd20[10]),
        .I4(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_1 [2]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    s_carry__1_i_7
       (.I0(rd1[9]),
        .I1(douta[9]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(rd20[9]),
        .I4(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_1 [1]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    s_carry__1_i_8
       (.I0(rd1[8]),
        .I1(douta[8]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(rd20[8]),
        .I4(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_1 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__2_i_1
       (.I0(rd10[15]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__2_i_2
       (.I0(rd10[14]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__2_i_3
       (.I0(rd10[13]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__2_i_4
       (.I0(rd10[12]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[12]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry__2_i_5
       (.I0(rd1[15]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[15]),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5 [3]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    s_carry__2_i_6
       (.I0(rd1[14]),
        .I1(douta[14]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(rd20[14]),
        .I4(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5 [2]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry__2_i_7
       (.I0(rd1[13]),
        .I1(douta[13]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[13]),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5 [1]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    s_carry__2_i_8
       (.I0(rd1[12]),
        .I1(douta[12]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(rd20[12]),
        .I4(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__3_i_1
       (.I0(rd10[19]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[19]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__3_i_2
       (.I0(rd10[18]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[18]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__3_i_3
       (.I0(rd10[17]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[17]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__3_i_4
       (.I0(rd10[16]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[16]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry__3_i_5
       (.I0(rd1[19]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[19]),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_2 [3]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry__3_i_6
       (.I0(rd1[18]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[18]),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_2 [2]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    s_carry__3_i_7
       (.I0(rd1[17]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(rd20[17]),
        .I4(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_2 [1]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry__3_i_8
       (.I0(rd1[16]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[16]),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_2 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__4_i_1
       (.I0(rd10[23]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[23]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__4_i_2
       (.I0(rd10[22]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[22]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__4_i_3
       (.I0(rd10[21]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[21]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__4_i_4
       (.I0(rd10[20]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[20]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry__4_i_5
       (.I0(rd1[23]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[23]),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_3 [3]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry__4_i_6
       (.I0(rd1[22]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[22]),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_3 [2]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    s_carry__4_i_7
       (.I0(rd1[21]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(rd20[21]),
        .I4(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_3 [1]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    s_carry__4_i_8
       (.I0(rd1[20]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(rd20[20]),
        .I4(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_3 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__5_i_1
       (.I0(rd10[27]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[27]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__5_i_2
       (.I0(rd10[26]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[26]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__5_i_3
       (.I0(rd10[25]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[25]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__5_i_4
       (.I0(rd10[24]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[24]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry__5_i_5
       (.I0(rd1[27]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[27]),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_4 [3]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    s_carry__5_i_6
       (.I0(rd1[26]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(rd20[26]),
        .I4(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_4 [2]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry__5_i_7
       (.I0(rd1[25]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[25]),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_4 [1]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry__5_i_8
       (.I0(rd1[24]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[24]),
        .I5(in),
        .O(\dataadr_OBUF[31]_inst_i_5_4 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__6_i_1
       (.I0(rd10[30]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[30]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__6_i_2
       (.I0(rd10[29]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[29]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry__6_i_3
       (.I0(rd10[28]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[28]));
  LUT3 #(
    .INIT(8'hB4)) 
    s_carry__6_i_4
       (.I0(\dataadr_OBUF[26]_inst_i_3_n_0 ),
        .I1(rd10[31]),
        .I2(s_carry__6_i_8_n_0),
        .O(s_carry__6_i_8_0[3]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry__6_i_5
       (.I0(rd1[30]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[30]),
        .I5(in),
        .O(s_carry__6_i_8_0[2]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry__6_i_6
       (.I0(rd1[29]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[29]),
        .I5(in),
        .O(s_carry__6_i_8_0[1]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry__6_i_7
       (.I0(rd1[28]),
        .I1(douta[15]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[28]),
        .I5(in),
        .O(s_carry__6_i_8_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA595559)) 
    s_carry__6_i_8
       (.I0(in),
        .I1(rd20[31]),
        .I2(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I4(douta[15]),
        .O(s_carry__6_i_8_n_0));
  LUT5 #(
    .INIT(32'hAA655565)) 
    s_carry_i_1
       (.I0(in),
        .I1(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I2(rd20[0]),
        .I3(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I4(douta[0]),
        .O(bout));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry_i_2
       (.I0(rd10[3]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry_i_3
       (.I0(rd10[2]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry_i_4
       (.I0(rd10[1]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    s_carry_i_5
       (.I0(rd10[0]),
        .I1(douta[23]),
        .I2(douta[21]),
        .I3(douta[22]),
        .I4(douta[24]),
        .I5(douta[25]),
        .O(rd1[0]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry_i_6
       (.I0(rd1[3]),
        .I1(douta[3]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[3]),
        .I5(in),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    s_carry_i_7
       (.I0(rd1[2]),
        .I1(douta[2]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(rd20[2]),
        .I4(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I5(in),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h6A656A6A959A9595)) 
    s_carry_i_8
       (.I0(rd1[1]),
        .I1(douta[1]),
        .I2(\dataadr_OBUF[31]_inst_i_1_1 ),
        .I3(\dataadr_OBUF[31]_inst_i_1_0 ),
        .I4(rd20[1]),
        .I5(in),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h4B)) 
    s_carry_i_9
       (.I0(\dataadr_OBUF[26]_inst_i_3_n_0 ),
        .I1(rd10[0]),
        .I2(in),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[0]_inst_i_1 
       (.I0(rd20[0]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[10]_inst_i_1 
       (.I0(rd20[10]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[11]_inst_i_1 
       (.I0(rd20[11]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[12]_inst_i_1 
       (.I0(rd20[12]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[12]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[13]_inst_i_1 
       (.I0(rd20[13]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[14]_inst_i_1 
       (.I0(rd20[14]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[15]_inst_i_1 
       (.I0(rd20[15]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[16]_inst_i_1 
       (.I0(rd20[16]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[16]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[17]_inst_i_1 
       (.I0(rd20[17]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[17]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[18]_inst_i_1 
       (.I0(rd20[18]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[18]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[19]_inst_i_1 
       (.I0(rd20[19]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[19]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[1]_inst_i_1 
       (.I0(rd20[1]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[20]_inst_i_1 
       (.I0(rd20[20]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[20]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[21]_inst_i_1 
       (.I0(rd20[21]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[21]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[22]_inst_i_1 
       (.I0(rd20[22]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[22]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[23]_inst_i_1 
       (.I0(rd20[23]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[23]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[24]_inst_i_1 
       (.I0(rd20[24]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[24]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[25]_inst_i_1 
       (.I0(rd20[25]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[25]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[26]_inst_i_1 
       (.I0(rd20[26]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[26]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[27]_inst_i_1 
       (.I0(rd20[27]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[27]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[28]_inst_i_1 
       (.I0(rd20[28]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[28]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[29]_inst_i_1 
       (.I0(rd20[29]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[29]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[2]_inst_i_1 
       (.I0(rd20[2]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[30]_inst_i_1 
       (.I0(rd20[30]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[30]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[31]_inst_i_1 
       (.I0(rd20[31]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[31]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[3]_inst_i_1 
       (.I0(rd20[3]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[4]_inst_i_1 
       (.I0(rd20[4]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[5]_inst_i_1 
       (.I0(rd20[5]),
        .I1(douta[19]),
        .I2(douta[18]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(douta[20]),
        .O(dina[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[6]_inst_i_1 
       (.I0(rd20[6]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[7]_inst_i_1 
       (.I0(rd20[7]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[8]_inst_i_1 
       (.I0(rd20[8]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \writedata_OBUF[9]_inst_i_1 
       (.I0(rd20[9]),
        .I1(douta[20]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[18]),
        .I5(douta[19]),
        .O(dina[9]));
endmodule

(* NotValidForBitStream *)
module top
   (clk,
    rst,
    writedata,
    dataadr,
    memwrite);
  input clk;
  input rst;
  output [31:0]writedata;
  output [31:0]dataadr;
  output memwrite;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]dataadr;
  wire [31:0]dataadr_OBUF;
  wire [31:0]instr;
  wire memwrite;
  wire memwrite_OBUF;
  wire [7:2]pc;
  wire [31:0]readdata;
  wire rst;
  wire rst_IBUF;
  wire [31:0]writedata;
  wire [31:0]writedata_OBUF;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \dataadr_OBUF[0]_inst 
       (.I(dataadr_OBUF[0]),
        .O(dataadr[0]));
  OBUF \dataadr_OBUF[10]_inst 
       (.I(dataadr_OBUF[10]),
        .O(dataadr[10]));
  OBUF \dataadr_OBUF[11]_inst 
       (.I(dataadr_OBUF[11]),
        .O(dataadr[11]));
  OBUF \dataadr_OBUF[12]_inst 
       (.I(dataadr_OBUF[12]),
        .O(dataadr[12]));
  OBUF \dataadr_OBUF[13]_inst 
       (.I(dataadr_OBUF[13]),
        .O(dataadr[13]));
  OBUF \dataadr_OBUF[14]_inst 
       (.I(dataadr_OBUF[14]),
        .O(dataadr[14]));
  OBUF \dataadr_OBUF[15]_inst 
       (.I(dataadr_OBUF[15]),
        .O(dataadr[15]));
  OBUF \dataadr_OBUF[16]_inst 
       (.I(dataadr_OBUF[16]),
        .O(dataadr[16]));
  OBUF \dataadr_OBUF[17]_inst 
       (.I(dataadr_OBUF[17]),
        .O(dataadr[17]));
  OBUF \dataadr_OBUF[18]_inst 
       (.I(dataadr_OBUF[18]),
        .O(dataadr[18]));
  OBUF \dataadr_OBUF[19]_inst 
       (.I(dataadr_OBUF[19]),
        .O(dataadr[19]));
  OBUF \dataadr_OBUF[1]_inst 
       (.I(dataadr_OBUF[1]),
        .O(dataadr[1]));
  OBUF \dataadr_OBUF[20]_inst 
       (.I(dataadr_OBUF[20]),
        .O(dataadr[20]));
  OBUF \dataadr_OBUF[21]_inst 
       (.I(dataadr_OBUF[21]),
        .O(dataadr[21]));
  OBUF \dataadr_OBUF[22]_inst 
       (.I(dataadr_OBUF[22]),
        .O(dataadr[22]));
  OBUF \dataadr_OBUF[23]_inst 
       (.I(dataadr_OBUF[23]),
        .O(dataadr[23]));
  OBUF \dataadr_OBUF[24]_inst 
       (.I(dataadr_OBUF[24]),
        .O(dataadr[24]));
  OBUF \dataadr_OBUF[25]_inst 
       (.I(dataadr_OBUF[25]),
        .O(dataadr[25]));
  OBUF \dataadr_OBUF[26]_inst 
       (.I(dataadr_OBUF[26]),
        .O(dataadr[26]));
  OBUF \dataadr_OBUF[27]_inst 
       (.I(dataadr_OBUF[27]),
        .O(dataadr[27]));
  OBUF \dataadr_OBUF[28]_inst 
       (.I(dataadr_OBUF[28]),
        .O(dataadr[28]));
  OBUF \dataadr_OBUF[29]_inst 
       (.I(dataadr_OBUF[29]),
        .O(dataadr[29]));
  OBUF \dataadr_OBUF[2]_inst 
       (.I(dataadr_OBUF[2]),
        .O(dataadr[2]));
  OBUF \dataadr_OBUF[30]_inst 
       (.I(dataadr_OBUF[30]),
        .O(dataadr[30]));
  OBUF \dataadr_OBUF[31]_inst 
       (.I(dataadr_OBUF[31]),
        .O(dataadr[31]));
  OBUF \dataadr_OBUF[3]_inst 
       (.I(dataadr_OBUF[3]),
        .O(dataadr[3]));
  OBUF \dataadr_OBUF[4]_inst 
       (.I(dataadr_OBUF[4]),
        .O(dataadr[4]));
  OBUF \dataadr_OBUF[5]_inst 
       (.I(dataadr_OBUF[5]),
        .O(dataadr[5]));
  OBUF \dataadr_OBUF[6]_inst 
       (.I(dataadr_OBUF[6]),
        .O(dataadr[6]));
  OBUF \dataadr_OBUF[7]_inst 
       (.I(dataadr_OBUF[7]),
        .O(dataadr[7]));
  OBUF \dataadr_OBUF[8]_inst 
       (.I(dataadr_OBUF[8]),
        .O(dataadr[8]));
  OBUF \dataadr_OBUF[9]_inst 
       (.I(dataadr_OBUF[9]),
        .O(dataadr[9]));
  (* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *) 
  data_ram dr
       (.addra(dataadr_OBUF[9:0]),
        .clka(clk_IBUF),
        .dina(writedata_OBUF),
        .douta(readdata),
        .ena(1'b1),
        .wea({memwrite_OBUF,memwrite_OBUF,memwrite_OBUF,memwrite_OBUF}));
  (* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *) 
  inst_ram ir
       (.addra({1'b0,1'b0,pc}),
        .clka(clk_IBUF_BUFG),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(instr),
        .ena(1'b1),
        .wea({1'b0,1'b0,1'b0,1'b0}));
  OBUF memwrite_OBUF_inst
       (.I(memwrite_OBUF),
        .O(memwrite));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    memwrite_OBUF_inst_i_1
       (.I0(instr[31]),
        .I1(instr[28]),
        .I2(instr[27]),
        .I3(instr[30]),
        .I4(instr[29]),
        .I5(instr[26]),
        .O(memwrite_OBUF));
  mips mips
       (.AR(rst_IBUF),
        .Q(pc),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dataadr_OBUF(dataadr_OBUF),
        .dina(writedata_OBUF),
        .douta(instr),
        .rf_reg_r2_0_31_30_31(readdata));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \writedata_OBUF[0]_inst 
       (.I(writedata_OBUF[0]),
        .O(writedata[0]));
  OBUF \writedata_OBUF[10]_inst 
       (.I(writedata_OBUF[10]),
        .O(writedata[10]));
  OBUF \writedata_OBUF[11]_inst 
       (.I(writedata_OBUF[11]),
        .O(writedata[11]));
  OBUF \writedata_OBUF[12]_inst 
       (.I(writedata_OBUF[12]),
        .O(writedata[12]));
  OBUF \writedata_OBUF[13]_inst 
       (.I(writedata_OBUF[13]),
        .O(writedata[13]));
  OBUF \writedata_OBUF[14]_inst 
       (.I(writedata_OBUF[14]),
        .O(writedata[14]));
  OBUF \writedata_OBUF[15]_inst 
       (.I(writedata_OBUF[15]),
        .O(writedata[15]));
  OBUF \writedata_OBUF[16]_inst 
       (.I(writedata_OBUF[16]),
        .O(writedata[16]));
  OBUF \writedata_OBUF[17]_inst 
       (.I(writedata_OBUF[17]),
        .O(writedata[17]));
  OBUF \writedata_OBUF[18]_inst 
       (.I(writedata_OBUF[18]),
        .O(writedata[18]));
  OBUF \writedata_OBUF[19]_inst 
       (.I(writedata_OBUF[19]),
        .O(writedata[19]));
  OBUF \writedata_OBUF[1]_inst 
       (.I(writedata_OBUF[1]),
        .O(writedata[1]));
  OBUF \writedata_OBUF[20]_inst 
       (.I(writedata_OBUF[20]),
        .O(writedata[20]));
  OBUF \writedata_OBUF[21]_inst 
       (.I(writedata_OBUF[21]),
        .O(writedata[21]));
  OBUF \writedata_OBUF[22]_inst 
       (.I(writedata_OBUF[22]),
        .O(writedata[22]));
  OBUF \writedata_OBUF[23]_inst 
       (.I(writedata_OBUF[23]),
        .O(writedata[23]));
  OBUF \writedata_OBUF[24]_inst 
       (.I(writedata_OBUF[24]),
        .O(writedata[24]));
  OBUF \writedata_OBUF[25]_inst 
       (.I(writedata_OBUF[25]),
        .O(writedata[25]));
  OBUF \writedata_OBUF[26]_inst 
       (.I(writedata_OBUF[26]),
        .O(writedata[26]));
  OBUF \writedata_OBUF[27]_inst 
       (.I(writedata_OBUF[27]),
        .O(writedata[27]));
  OBUF \writedata_OBUF[28]_inst 
       (.I(writedata_OBUF[28]),
        .O(writedata[28]));
  OBUF \writedata_OBUF[29]_inst 
       (.I(writedata_OBUF[29]),
        .O(writedata[29]));
  OBUF \writedata_OBUF[2]_inst 
       (.I(writedata_OBUF[2]),
        .O(writedata[2]));
  OBUF \writedata_OBUF[30]_inst 
       (.I(writedata_OBUF[30]),
        .O(writedata[30]));
  OBUF \writedata_OBUF[31]_inst 
       (.I(writedata_OBUF[31]),
        .O(writedata[31]));
  OBUF \writedata_OBUF[3]_inst 
       (.I(writedata_OBUF[3]),
        .O(writedata[3]));
  OBUF \writedata_OBUF[4]_inst 
       (.I(writedata_OBUF[4]),
        .O(writedata[4]));
  OBUF \writedata_OBUF[5]_inst 
       (.I(writedata_OBUF[5]),
        .O(writedata[5]));
  OBUF \writedata_OBUF[6]_inst 
       (.I(writedata_OBUF[6]),
        .O(writedata[6]));
  OBUF \writedata_OBUF[7]_inst 
       (.I(writedata_OBUF[7]),
        .O(writedata[7]));
  OBUF \writedata_OBUF[8]_inst 
       (.I(writedata_OBUF[8]),
        .O(writedata[8]));
  OBUF \writedata_OBUF[9]_inst 
       (.I(writedata_OBUF[9]),
        .O(writedata[9]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module data_ram_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [9:0]addra;
  input [31:0]dina;
  input [3:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;

  data_ram_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module data_ram_blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [9:0]addra;
  input [31:0]dina;
  input [3:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;

  data_ram_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module data_ram_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [9:0]addra;
  input [31:0]dina;
  input [3:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_68 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_69 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_70 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b1),
    .IS_CLKBWRCLK_INVERTED(1'b1),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI(dina),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(douta),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_68 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_69 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_70 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA(wea),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module data_ram_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [9:0]addra;
  input [31:0]dina;
  input [3:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;

  data_ram_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "10" *) (* C_ADDRB_WIDTH = "10" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "8" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "data_ram.mem" *) 
(* C_INIT_FILE_NAME = "no_coe_file_loaded" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "0" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "1024" *) (* C_READ_DEPTH_B = "1024" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "32" *) (* C_READ_WIDTH_B = "32" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "1" *) (* C_USE_BYTE_WEB = "1" *) (* C_USE_DEFAULT_DATA = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "4" *) (* C_WEB_WIDTH = "4" *) (* C_WRITE_DEPTH_A = "1024" *) 
(* C_WRITE_DEPTH_B = "1024" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3" *) (* downgradeipidentifiedwarnings = "yes" *) 
module data_ram_blk_mem_gen_v8_4_3
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [3:0]wea;
  input [9:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [3:0]web;
  input [9:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [9:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [9:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  data_ram_blk_mem_gen_v8_4_3_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3_synth" *) 
module data_ram_blk_mem_gen_v8_4_3_synth
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [9:0]addra;
  input [31:0]dina;
  input [3:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;

  data_ram_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module inst_ram__blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [3:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;

  inst_ram__blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module inst_ram__blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [3:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;

  inst_ram__blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module inst_ram__blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [3:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 ;
  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0064202A10A7000A00A428200064282400E220252067FFF72003000C20020005),
    .INIT_01(256'h080000118C020050AC67004400E238220085382000E2202A2005000010800001),
    .INIT_02(256'h000000000000000000000000000000000000000000000000AC02005420020001),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addra,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI(dina[15:0]),
        .DIBDI(dina[31:16]),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(douta[15:0]),
        .DOBDO(douta[31:16]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(ena),
        .ENBWREN(ena),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA(wea[1:0]),
        .WEBWE({1'b0,1'b0,wea[3:2]}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module inst_ram__blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [3:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;

  inst_ram__blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "8" *) (* C_ADDRB_WIDTH = "8" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "8" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "inst_ram.mem" *) 
(* C_INIT_FILE_NAME = "inst_ram.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "256" *) (* C_READ_DEPTH_B = "256" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "32" *) (* C_READ_WIDTH_B = "32" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "1" *) (* C_USE_BYTE_WEB = "1" *) (* C_USE_DEFAULT_DATA = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "4" *) (* C_WEB_WIDTH = "4" *) (* C_WRITE_DEPTH_A = "256" *) 
(* C_WRITE_DEPTH_B = "256" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3" *) (* downgradeipidentifiedwarnings = "yes" *) 
module inst_ram__blk_mem_gen_v8_4_3
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [3:0]wea;
  input [7:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [3:0]web;
  input [7:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [7:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [7:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  inst_ram__blk_mem_gen_v8_4_3_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3_synth" *) 
module inst_ram__blk_mem_gen_v8_4_3_synth
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [7:0]addra;
  input [31:0]dina;
  input [3:0]wea;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;

  inst_ram__blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
