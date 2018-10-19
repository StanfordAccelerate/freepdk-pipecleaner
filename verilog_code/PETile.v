module coreir_const #(parameter value=1, parameter width=1) (
  output [width-1:0] out
);
  assign out = value;

endmodule  // coreir_const

module corebit_and (
  input in0,
  input in1,
  output out
);
  assign out = in0 & in1;

endmodule  // corebit_and

module corebit_const #(parameter value=1) (
  output out
);
  assign out = value;

endmodule  // corebit_const

module coreir_eq #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 == in1;

endmodule  // coreir_eq

module Decode28 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_2_8__out;
  coreir_const #(.value(8'h02),.width(8)) const_2_8(
    .out(const_2_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_2_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode28

module Decode58 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_5_8__out;
  coreir_const #(.value(8'h05),.width(8)) const_5_8(
    .out(const_5_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_5_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode58

module coreir_mux #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  input sel,
  output [width-1:0] out
);
  assign out = sel ? in1 : in0;

endmodule  // coreir_mux

// Generated from commonlib.muxn(N:2, width:32)
module muxn_U5 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [0:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  assign _join__in0[31:0] = in_data_0[31:0];

  assign _join__in1[31:0] = in_data_1[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[0];


endmodule  // muxn_U5

// Generated from commonlib.muxn(N:2, width:1)
module muxn_U21 (
  input [0:0] in_data_0,
  input [0:0] in_data_1,
  input [0:0] in_sel,
  output [0:0] out
);


  // Instancing generated Module: coreir.mux(width:1)
  wire [0:0] _join__in0;
  wire [0:0] _join__in1;
  wire [0:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(1)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  assign _join__in0[0:0] = in_data_0[0:0];

  assign _join__in1[0:0] = in_data_1[0:0];

  assign out[0:0] = _join__out[0:0];

  assign _join__sel = in_sel[0];


endmodule  // muxn_U21

// Generated from commonlib.muxn(N:2, width:16)
module muxn_U26 (
  input [15:0] in_data_0,
  input [15:0] in_data_1,
  input [0:0] in_sel,
  output [15:0] out
);


  // Instancing generated Module: coreir.mux(width:16)
  wire [15:0] _join__in0;
  wire [15:0] _join__in1;
  wire [15:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(16)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  assign _join__in0[15:0] = in_data_0[15:0];

  assign _join__in1[15:0] = in_data_1[15:0];

  assign out[15:0] = _join__out[15:0];

  assign _join__sel = in_sel[0];


endmodule  // muxn_U26

// Generated from commonlib.muxn(N:2, width:2)
module muxn_U4 (
  input [1:0] in_data_0,
  input [1:0] in_data_1,
  input [0:0] in_sel,
  output [1:0] out
);


  // Instancing generated Module: coreir.mux(width:2)
  wire [1:0] _join__in0;
  wire [1:0] _join__in1;
  wire [1:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(2)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  assign _join__in0[1:0] = in_data_0[1:0];

  assign _join__in1[1:0] = in_data_1[1:0];

  assign out[1:0] = _join__out[1:0];

  assign _join__sel = in_sel[0];


endmodule  // muxn_U4

// Generated from commonlib.muxn(N:2, width:4)
module muxn_U6 (
  input [3:0] in_data_0,
  input [3:0] in_data_1,
  input [0:0] in_sel,
  output [3:0] out
);


  // Instancing generated Module: coreir.mux(width:4)
  wire [3:0] _join__in0;
  wire [3:0] _join__in1;
  wire [3:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(4)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  assign _join__in0[3:0] = in_data_0[3:0];

  assign _join__in1[3:0] = in_data_1[3:0];

  assign out[3:0] = _join__out[3:0];

  assign _join__sel = in_sel[0];


endmodule  // muxn_U6

module Mux2x4 (
  input [3:0] I0,
  input [3:0] I1,
  output [3:0] O,
  input  S
);


  // Instancing generated Module: commonlib.muxn(N:2, width:4)
  wire [3:0] inst0__in_data_0;
  wire [3:0] inst0__in_data_1;
  wire [0:0] inst0__in_sel;
  wire [3:0] inst0__out;
  muxn_U6 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[3:0] = I0[3:0];

  assign inst0__in_data_1[3:0] = I1[3:0];

  assign inst0__in_sel[0] = S;

  assign O[3:0] = inst0__out[3:0];


endmodule  // Mux2x4

module coreir_reg_arst #(parameter arst_posedge=1, parameter clk_posedge=1, parameter init=1, parameter width=1) (
  input clk,
  input arst,
  input [width-1:0] in,
  output [width-1:0] out
);
  reg [width-1:0] outReg;
  wire real_rst;
  assign real_rst = arst_posedge ? arst : ~arst;
  wire real_clk;
  assign real_clk = clk_posedge ? clk : ~clk;
  always @(posedge real_clk, posedge real_rst) begin
    if (real_rst) outReg <= init;
    else outReg <= in;
  end
  assign out = outReg;

endmodule  // coreir_reg_arst

module coreir_slice #(parameter hi=1, parameter lo=1, parameter width=1) (
  input [width-1:0] in,
  output [hi-lo-1:0] out
);
  assign out = in[hi-1:lo];

endmodule  // coreir_slice

// Generated from commonlib.muxn(N:4, width:16)
module muxn_U9 (
  input [15:0] in_data_0,
  input [15:0] in_data_1,
  input [15:0] in_data_2,
  input [15:0] in_data_3,
  input [1:0] in_sel,
  output [15:0] out
);


  // Instancing generated Module: coreir.mux(width:16)
  wire [15:0] _join__in0;
  wire [15:0] _join__in1;
  wire [15:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(16)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:16)
  wire [15:0] muxN_0__in_data_0;
  wire [15:0] muxN_0__in_data_1;
  wire [0:0] muxN_0__in_sel;
  wire [15:0] muxN_0__out;
  muxn_U26 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:16)
  wire [15:0] muxN_1__in_data_0;
  wire [15:0] muxN_1__in_data_1;
  wire [0:0] muxN_1__in_sel;
  wire [15:0] muxN_1__out;
  muxn_U26 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice0__in;
  wire [0:0] sel_slice0__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice1__in;
  wire [0:0] sel_slice1__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[15:0] = muxN_0__out[15:0];

  assign _join__in1[15:0] = muxN_1__out[15:0];

  assign out[15:0] = _join__out[15:0];

  assign _join__sel = in_sel[1];

  assign muxN_0__in_data_0[15:0] = in_data_0[15:0];

  assign muxN_0__in_data_1[15:0] = in_data_1[15:0];

  assign muxN_0__in_sel[0:0] = sel_slice0__out[0:0];

  assign muxN_1__in_data_0[15:0] = in_data_2[15:0];

  assign muxN_1__in_data_1[15:0] = in_data_3[15:0];

  assign muxN_1__in_sel[0:0] = sel_slice1__out[0:0];

  assign sel_slice0__in[1:0] = in_sel[1:0];

  assign sel_slice1__in[1:0] = in_sel[1:0];


endmodule  // muxn_U9

// Generated from commonlib.muxn(N:8, width:16)
module muxn_U25 (
  input [15:0] in_data_0,
  input [15:0] in_data_1,
  input [15:0] in_data_2,
  input [15:0] in_data_3,
  input [15:0] in_data_4,
  input [15:0] in_data_5,
  input [15:0] in_data_6,
  input [15:0] in_data_7,
  input [2:0] in_sel,
  output [15:0] out
);


  // Instancing generated Module: coreir.mux(width:16)
  wire [15:0] _join__in0;
  wire [15:0] _join__in1;
  wire [15:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(16)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:16)
  wire [15:0] muxN_0__in_data_0;
  wire [15:0] muxN_0__in_data_1;
  wire [15:0] muxN_0__in_data_2;
  wire [15:0] muxN_0__in_data_3;
  wire [1:0] muxN_0__in_sel;
  wire [15:0] muxN_0__out;
  muxn_U9 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:16)
  wire [15:0] muxN_1__in_data_0;
  wire [15:0] muxN_1__in_data_1;
  wire [15:0] muxN_1__in_data_2;
  wire [15:0] muxN_1__in_data_3;
  wire [1:0] muxN_1__in_sel;
  wire [15:0] muxN_1__out;
  muxn_U9 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_2(muxN_1__in_data_2),
    .in_data_3(muxN_1__in_data_3),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice0__in;
  wire [1:0] sel_slice0__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice1__in;
  wire [1:0] sel_slice1__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[15:0] = muxN_0__out[15:0];

  assign _join__in1[15:0] = muxN_1__out[15:0];

  assign out[15:0] = _join__out[15:0];

  assign _join__sel = in_sel[2];

  assign muxN_0__in_data_0[15:0] = in_data_0[15:0];

  assign muxN_0__in_data_1[15:0] = in_data_1[15:0];

  assign muxN_0__in_data_2[15:0] = in_data_2[15:0];

  assign muxN_0__in_data_3[15:0] = in_data_3[15:0];

  assign muxN_0__in_sel[1:0] = sel_slice0__out[1:0];

  assign muxN_1__in_data_0[15:0] = in_data_4[15:0];

  assign muxN_1__in_data_1[15:0] = in_data_5[15:0];

  assign muxN_1__in_data_2[15:0] = in_data_6[15:0];

  assign muxN_1__in_data_3[15:0] = in_data_7[15:0];

  assign muxN_1__in_sel[1:0] = sel_slice1__out[1:0];

  assign sel_slice0__in[2:0] = in_sel[2:0];

  assign sel_slice1__in[2:0] = in_sel[2:0];


endmodule  // muxn_U25

// Generated from commonlib.muxn(N:10, width:16)
module muxn_U3 (
  input [15:0] in_data_0,
  input [15:0] in_data_1,
  input [15:0] in_data_2,
  input [15:0] in_data_3,
  input [15:0] in_data_4,
  input [15:0] in_data_5,
  input [15:0] in_data_6,
  input [15:0] in_data_7,
  input [15:0] in_data_8,
  input [15:0] in_data_9,
  input [3:0] in_sel,
  output [15:0] out
);


  // Instancing generated Module: coreir.mux(width:16)
  wire [15:0] _join__in0;
  wire [15:0] _join__in1;
  wire [15:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(16)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:8, width:16)
  wire [15:0] muxN_0__in_data_0;
  wire [15:0] muxN_0__in_data_1;
  wire [15:0] muxN_0__in_data_2;
  wire [15:0] muxN_0__in_data_3;
  wire [15:0] muxN_0__in_data_4;
  wire [15:0] muxN_0__in_data_5;
  wire [15:0] muxN_0__in_data_6;
  wire [15:0] muxN_0__in_data_7;
  wire [2:0] muxN_0__in_sel;
  wire [15:0] muxN_0__out;
  muxn_U25 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_data_4(muxN_0__in_data_4),
    .in_data_5(muxN_0__in_data_5),
    .in_data_6(muxN_0__in_data_6),
    .in_data_7(muxN_0__in_data_7),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:16)
  wire [15:0] muxN_1__in_data_0;
  wire [15:0] muxN_1__in_data_1;
  wire [0:0] muxN_1__in_sel;
  wire [15:0] muxN_1__out;
  muxn_U26 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:3, lo:0, width:4)
  wire [3:0] sel_slice0__in;
  wire [2:0] sel_slice0__out;
  coreir_slice #(.hi(3),.lo(0),.width(4)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:4)
  wire [3:0] sel_slice1__in;
  wire [0:0] sel_slice1__out;
  coreir_slice #(.hi(1),.lo(0),.width(4)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[15:0] = muxN_0__out[15:0];

  assign _join__in1[15:0] = muxN_1__out[15:0];

  assign out[15:0] = _join__out[15:0];

  assign _join__sel = in_sel[3];

  assign muxN_0__in_data_0[15:0] = in_data_0[15:0];

  assign muxN_0__in_data_1[15:0] = in_data_1[15:0];

  assign muxN_0__in_data_2[15:0] = in_data_2[15:0];

  assign muxN_0__in_data_3[15:0] = in_data_3[15:0];

  assign muxN_0__in_data_4[15:0] = in_data_4[15:0];

  assign muxN_0__in_data_5[15:0] = in_data_5[15:0];

  assign muxN_0__in_data_6[15:0] = in_data_6[15:0];

  assign muxN_0__in_data_7[15:0] = in_data_7[15:0];

  assign muxN_0__in_sel[2:0] = sel_slice0__out[2:0];

  assign muxN_1__in_data_0[15:0] = in_data_8[15:0];

  assign muxN_1__in_data_1[15:0] = in_data_9[15:0];

  assign muxN_1__in_sel[0:0] = sel_slice1__out[0:0];

  assign sel_slice0__in[3:0] = in_sel[3:0];

  assign sel_slice1__in[3:0] = in_sel[3:0];


endmodule  // muxn_U3

module Mux10x16 (
  input [15:0] I0,
  input [15:0] I1,
  input [15:0] I2,
  input [15:0] I3,
  input [15:0] I4,
  input [15:0] I5,
  input [15:0] I6,
  input [15:0] I7,
  input [15:0] I8,
  input [15:0] I9,
  output [15:0] O,
  input [3:0] S
);


  // Instancing generated Module: commonlib.muxn(N:10, width:16)
  wire [15:0] inst0__in_data_0;
  wire [15:0] inst0__in_data_1;
  wire [15:0] inst0__in_data_2;
  wire [15:0] inst0__in_data_3;
  wire [15:0] inst0__in_data_4;
  wire [15:0] inst0__in_data_5;
  wire [15:0] inst0__in_data_6;
  wire [15:0] inst0__in_data_7;
  wire [15:0] inst0__in_data_8;
  wire [15:0] inst0__in_data_9;
  wire [3:0] inst0__in_sel;
  wire [15:0] inst0__out;
  muxn_U3 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_data_2(inst0__in_data_2),
    .in_data_3(inst0__in_data_3),
    .in_data_4(inst0__in_data_4),
    .in_data_5(inst0__in_data_5),
    .in_data_6(inst0__in_data_6),
    .in_data_7(inst0__in_data_7),
    .in_data_8(inst0__in_data_8),
    .in_data_9(inst0__in_data_9),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[15:0] = I0[15:0];

  assign inst0__in_data_1[15:0] = I1[15:0];

  assign inst0__in_data_2[15:0] = I2[15:0];

  assign inst0__in_data_3[15:0] = I3[15:0];

  assign inst0__in_data_4[15:0] = I4[15:0];

  assign inst0__in_data_5[15:0] = I5[15:0];

  assign inst0__in_data_6[15:0] = I6[15:0];

  assign inst0__in_data_7[15:0] = I7[15:0];

  assign inst0__in_data_8[15:0] = I8[15:0];

  assign inst0__in_data_9[15:0] = I9[15:0];

  assign inst0__in_sel[3:0] = S[3:0];

  assign O[15:0] = inst0__out[15:0];


endmodule  // Mux10x16

module MuxWrapper_10_16 (
  input [15:0] I_0,
  input [15:0] I_1,
  input [15:0] I_2,
  input [15:0] I_3,
  input [15:0] I_4,
  input [15:0] I_5,
  input [15:0] I_6,
  input [15:0] I_7,
  input [15:0] I_8,
  input [15:0] I_9,
  output [15:0] O,
  input [3:0] S
);


  wire [15:0] inst0__I0;
  wire [15:0] inst0__I1;
  wire [15:0] inst0__I2;
  wire [15:0] inst0__I3;
  wire [15:0] inst0__I4;
  wire [15:0] inst0__I5;
  wire [15:0] inst0__I6;
  wire [15:0] inst0__I7;
  wire [15:0] inst0__I8;
  wire [15:0] inst0__I9;
  wire [15:0] inst0__O;
  wire [3:0] inst0__S;
  Mux10x16 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .I2(inst0__I2),
    .I3(inst0__I3),
    .I4(inst0__I4),
    .I5(inst0__I5),
    .I6(inst0__I6),
    .I7(inst0__I7),
    .I8(inst0__I8),
    .I9(inst0__I9),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[15:0] = I_0[15:0];

  assign inst0__I1[15:0] = I_1[15:0];

  assign inst0__I2[15:0] = I_2[15:0];

  assign inst0__I3[15:0] = I_3[15:0];

  assign inst0__I4[15:0] = I_4[15:0];

  assign inst0__I5[15:0] = I_5[15:0];

  assign inst0__I6[15:0] = I_6[15:0];

  assign inst0__I7[15:0] = I_7[15:0];

  assign inst0__I8[15:0] = I_8[15:0];

  assign inst0__I9[15:0] = I_9[15:0];

  assign O[15:0] = inst0__O[15:0];

  assign inst0__S[3:0] = S[3:0];


endmodule  // MuxWrapper_10_16

// Generated from commonlib.muxn(N:4, width:1)
module muxn_U8 (
  input [0:0] in_data_0,
  input [0:0] in_data_1,
  input [0:0] in_data_2,
  input [0:0] in_data_3,
  input [1:0] in_sel,
  output [0:0] out
);


  // Instancing generated Module: coreir.mux(width:1)
  wire [0:0] _join__in0;
  wire [0:0] _join__in1;
  wire [0:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(1)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:1)
  wire [0:0] muxN_0__in_data_0;
  wire [0:0] muxN_0__in_data_1;
  wire [0:0] muxN_0__in_sel;
  wire [0:0] muxN_0__out;
  muxn_U21 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:1)
  wire [0:0] muxN_1__in_data_0;
  wire [0:0] muxN_1__in_data_1;
  wire [0:0] muxN_1__in_sel;
  wire [0:0] muxN_1__out;
  muxn_U21 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice0__in;
  wire [0:0] sel_slice0__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice1__in;
  wire [0:0] sel_slice1__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[0:0] = muxN_0__out[0:0];

  assign _join__in1[0:0] = muxN_1__out[0:0];

  assign out[0:0] = _join__out[0:0];

  assign _join__sel = in_sel[1];

  assign muxN_0__in_data_0[0:0] = in_data_0[0:0];

  assign muxN_0__in_data_1[0:0] = in_data_1[0:0];

  assign muxN_0__in_sel[0:0] = sel_slice0__out[0:0];

  assign muxN_1__in_data_0[0:0] = in_data_2[0:0];

  assign muxN_1__in_data_1[0:0] = in_data_3[0:0];

  assign muxN_1__in_sel[0:0] = sel_slice1__out[0:0];

  assign sel_slice0__in[1:0] = in_sel[1:0];

  assign sel_slice1__in[1:0] = in_sel[1:0];


endmodule  // muxn_U8

// Generated from commonlib.muxn(N:8, width:1)
module muxn_U20 (
  input [0:0] in_data_0,
  input [0:0] in_data_1,
  input [0:0] in_data_2,
  input [0:0] in_data_3,
  input [0:0] in_data_4,
  input [0:0] in_data_5,
  input [0:0] in_data_6,
  input [0:0] in_data_7,
  input [2:0] in_sel,
  output [0:0] out
);


  // Instancing generated Module: coreir.mux(width:1)
  wire [0:0] _join__in0;
  wire [0:0] _join__in1;
  wire [0:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(1)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:1)
  wire [0:0] muxN_0__in_data_0;
  wire [0:0] muxN_0__in_data_1;
  wire [0:0] muxN_0__in_data_2;
  wire [0:0] muxN_0__in_data_3;
  wire [1:0] muxN_0__in_sel;
  wire [0:0] muxN_0__out;
  muxn_U8 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:1)
  wire [0:0] muxN_1__in_data_0;
  wire [0:0] muxN_1__in_data_1;
  wire [0:0] muxN_1__in_data_2;
  wire [0:0] muxN_1__in_data_3;
  wire [1:0] muxN_1__in_sel;
  wire [0:0] muxN_1__out;
  muxn_U8 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_2(muxN_1__in_data_2),
    .in_data_3(muxN_1__in_data_3),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice0__in;
  wire [1:0] sel_slice0__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice1__in;
  wire [1:0] sel_slice1__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[0:0] = muxN_0__out[0:0];

  assign _join__in1[0:0] = muxN_1__out[0:0];

  assign out[0:0] = _join__out[0:0];

  assign _join__sel = in_sel[2];

  assign muxN_0__in_data_0[0:0] = in_data_0[0:0];

  assign muxN_0__in_data_1[0:0] = in_data_1[0:0];

  assign muxN_0__in_data_2[0:0] = in_data_2[0:0];

  assign muxN_0__in_data_3[0:0] = in_data_3[0:0];

  assign muxN_0__in_sel[1:0] = sel_slice0__out[1:0];

  assign muxN_1__in_data_0[0:0] = in_data_4[0:0];

  assign muxN_1__in_data_1[0:0] = in_data_5[0:0];

  assign muxN_1__in_data_2[0:0] = in_data_6[0:0];

  assign muxN_1__in_data_3[0:0] = in_data_7[0:0];

  assign muxN_1__in_sel[1:0] = sel_slice1__out[1:0];

  assign sel_slice0__in[2:0] = in_sel[2:0];

  assign sel_slice1__in[2:0] = in_sel[2:0];


endmodule  // muxn_U20

// Generated from commonlib.muxn(N:10, width:1)
module muxn_U2 (
  input [0:0] in_data_0,
  input [0:0] in_data_1,
  input [0:0] in_data_2,
  input [0:0] in_data_3,
  input [0:0] in_data_4,
  input [0:0] in_data_5,
  input [0:0] in_data_6,
  input [0:0] in_data_7,
  input [0:0] in_data_8,
  input [0:0] in_data_9,
  input [3:0] in_sel,
  output [0:0] out
);


  // Instancing generated Module: coreir.mux(width:1)
  wire [0:0] _join__in0;
  wire [0:0] _join__in1;
  wire [0:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(1)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:8, width:1)
  wire [0:0] muxN_0__in_data_0;
  wire [0:0] muxN_0__in_data_1;
  wire [0:0] muxN_0__in_data_2;
  wire [0:0] muxN_0__in_data_3;
  wire [0:0] muxN_0__in_data_4;
  wire [0:0] muxN_0__in_data_5;
  wire [0:0] muxN_0__in_data_6;
  wire [0:0] muxN_0__in_data_7;
  wire [2:0] muxN_0__in_sel;
  wire [0:0] muxN_0__out;
  muxn_U20 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_data_4(muxN_0__in_data_4),
    .in_data_5(muxN_0__in_data_5),
    .in_data_6(muxN_0__in_data_6),
    .in_data_7(muxN_0__in_data_7),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:1)
  wire [0:0] muxN_1__in_data_0;
  wire [0:0] muxN_1__in_data_1;
  wire [0:0] muxN_1__in_sel;
  wire [0:0] muxN_1__out;
  muxn_U21 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:3, lo:0, width:4)
  wire [3:0] sel_slice0__in;
  wire [2:0] sel_slice0__out;
  coreir_slice #(.hi(3),.lo(0),.width(4)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:4)
  wire [3:0] sel_slice1__in;
  wire [0:0] sel_slice1__out;
  coreir_slice #(.hi(1),.lo(0),.width(4)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[0:0] = muxN_0__out[0:0];

  assign _join__in1[0:0] = muxN_1__out[0:0];

  assign out[0:0] = _join__out[0:0];

  assign _join__sel = in_sel[3];

  assign muxN_0__in_data_0[0:0] = in_data_0[0:0];

  assign muxN_0__in_data_1[0:0] = in_data_1[0:0];

  assign muxN_0__in_data_2[0:0] = in_data_2[0:0];

  assign muxN_0__in_data_3[0:0] = in_data_3[0:0];

  assign muxN_0__in_data_4[0:0] = in_data_4[0:0];

  assign muxN_0__in_data_5[0:0] = in_data_5[0:0];

  assign muxN_0__in_data_6[0:0] = in_data_6[0:0];

  assign muxN_0__in_data_7[0:0] = in_data_7[0:0];

  assign muxN_0__in_sel[2:0] = sel_slice0__out[2:0];

  assign muxN_1__in_data_0[0:0] = in_data_8[0:0];

  assign muxN_1__in_data_1[0:0] = in_data_9[0:0];

  assign muxN_1__in_sel[0:0] = sel_slice1__out[0:0];

  assign sel_slice0__in[3:0] = in_sel[3:0];

  assign sel_slice1__in[3:0] = in_sel[3:0];


endmodule  // muxn_U2

// Generated from commonlib.muxn(N:4, width:32)
module muxn_U17 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [31:0] in_data_2,
  input [31:0] in_data_3,
  input [1:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:32)
  wire [31:0] muxN_0__in_data_0;
  wire [31:0] muxN_0__in_data_1;
  wire [0:0] muxN_0__in_sel;
  wire [31:0] muxN_0__out;
  muxn_U5 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:2, width:32)
  wire [31:0] muxN_1__in_data_0;
  wire [31:0] muxN_1__in_data_1;
  wire [0:0] muxN_1__in_sel;
  wire [31:0] muxN_1__out;
  muxn_U5 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice0__in;
  wire [0:0] sel_slice0__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:1, lo:0, width:2)
  wire [1:0] sel_slice1__in;
  wire [0:0] sel_slice1__out;
  coreir_slice #(.hi(1),.lo(0),.width(2)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[31:0] = muxN_0__out[31:0];

  assign _join__in1[31:0] = muxN_1__out[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[1];

  assign muxN_0__in_data_0[31:0] = in_data_0[31:0];

  assign muxN_0__in_data_1[31:0] = in_data_1[31:0];

  assign muxN_0__in_sel[0:0] = sel_slice0__out[0:0];

  assign muxN_1__in_data_0[31:0] = in_data_2[31:0];

  assign muxN_1__in_data_1[31:0] = in_data_3[31:0];

  assign muxN_1__in_sel[0:0] = sel_slice1__out[0:0];

  assign sel_slice0__in[1:0] = in_sel[1:0];

  assign sel_slice1__in[1:0] = in_sel[1:0];


endmodule  // muxn_U17

// Generated from commonlib.muxn(N:8, width:32)
module muxn_U10 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [31:0] in_data_2,
  input [31:0] in_data_3,
  input [31:0] in_data_4,
  input [31:0] in_data_5,
  input [31:0] in_data_6,
  input [31:0] in_data_7,
  input [2:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:32)
  wire [31:0] muxN_0__in_data_0;
  wire [31:0] muxN_0__in_data_1;
  wire [31:0] muxN_0__in_data_2;
  wire [31:0] muxN_0__in_data_3;
  wire [1:0] muxN_0__in_sel;
  wire [31:0] muxN_0__out;
  muxn_U17 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:4, width:32)
  wire [31:0] muxN_1__in_data_0;
  wire [31:0] muxN_1__in_data_1;
  wire [31:0] muxN_1__in_data_2;
  wire [31:0] muxN_1__in_data_3;
  wire [1:0] muxN_1__in_sel;
  wire [31:0] muxN_1__out;
  muxn_U17 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_2(muxN_1__in_data_2),
    .in_data_3(muxN_1__in_data_3),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice0__in;
  wire [1:0] sel_slice0__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:2, lo:0, width:3)
  wire [2:0] sel_slice1__in;
  wire [1:0] sel_slice1__out;
  coreir_slice #(.hi(2),.lo(0),.width(3)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[31:0] = muxN_0__out[31:0];

  assign _join__in1[31:0] = muxN_1__out[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[2];

  assign muxN_0__in_data_0[31:0] = in_data_0[31:0];

  assign muxN_0__in_data_1[31:0] = in_data_1[31:0];

  assign muxN_0__in_data_2[31:0] = in_data_2[31:0];

  assign muxN_0__in_data_3[31:0] = in_data_3[31:0];

  assign muxN_0__in_sel[1:0] = sel_slice0__out[1:0];

  assign muxN_1__in_data_0[31:0] = in_data_4[31:0];

  assign muxN_1__in_data_1[31:0] = in_data_5[31:0];

  assign muxN_1__in_data_2[31:0] = in_data_6[31:0];

  assign muxN_1__in_data_3[31:0] = in_data_7[31:0];

  assign muxN_1__in_sel[1:0] = sel_slice1__out[1:0];

  assign sel_slice0__in[2:0] = in_sel[2:0];

  assign sel_slice1__in[2:0] = in_sel[2:0];


endmodule  // muxn_U10

// Generated from commonlib.muxn(N:16, width:32)
module muxn_U33 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [31:0] in_data_10,
  input [31:0] in_data_11,
  input [31:0] in_data_12,
  input [31:0] in_data_13,
  input [31:0] in_data_14,
  input [31:0] in_data_15,
  input [31:0] in_data_2,
  input [31:0] in_data_3,
  input [31:0] in_data_4,
  input [31:0] in_data_5,
  input [31:0] in_data_6,
  input [31:0] in_data_7,
  input [31:0] in_data_8,
  input [31:0] in_data_9,
  input [3:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:8, width:32)
  wire [31:0] muxN_0__in_data_0;
  wire [31:0] muxN_0__in_data_1;
  wire [31:0] muxN_0__in_data_2;
  wire [31:0] muxN_0__in_data_3;
  wire [31:0] muxN_0__in_data_4;
  wire [31:0] muxN_0__in_data_5;
  wire [31:0] muxN_0__in_data_6;
  wire [31:0] muxN_0__in_data_7;
  wire [2:0] muxN_0__in_sel;
  wire [31:0] muxN_0__out;
  muxn_U10 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_data_4(muxN_0__in_data_4),
    .in_data_5(muxN_0__in_data_5),
    .in_data_6(muxN_0__in_data_6),
    .in_data_7(muxN_0__in_data_7),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:8, width:32)
  wire [31:0] muxN_1__in_data_0;
  wire [31:0] muxN_1__in_data_1;
  wire [31:0] muxN_1__in_data_2;
  wire [31:0] muxN_1__in_data_3;
  wire [31:0] muxN_1__in_data_4;
  wire [31:0] muxN_1__in_data_5;
  wire [31:0] muxN_1__in_data_6;
  wire [31:0] muxN_1__in_data_7;
  wire [2:0] muxN_1__in_sel;
  wire [31:0] muxN_1__out;
  muxn_U10 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_2(muxN_1__in_data_2),
    .in_data_3(muxN_1__in_data_3),
    .in_data_4(muxN_1__in_data_4),
    .in_data_5(muxN_1__in_data_5),
    .in_data_6(muxN_1__in_data_6),
    .in_data_7(muxN_1__in_data_7),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:3, lo:0, width:4)
  wire [3:0] sel_slice0__in;
  wire [2:0] sel_slice0__out;
  coreir_slice #(.hi(3),.lo(0),.width(4)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:3, lo:0, width:4)
  wire [3:0] sel_slice1__in;
  wire [2:0] sel_slice1__out;
  coreir_slice #(.hi(3),.lo(0),.width(4)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[31:0] = muxN_0__out[31:0];

  assign _join__in1[31:0] = muxN_1__out[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[3];

  assign muxN_0__in_data_0[31:0] = in_data_0[31:0];

  assign muxN_0__in_data_1[31:0] = in_data_1[31:0];

  assign muxN_0__in_data_2[31:0] = in_data_2[31:0];

  assign muxN_0__in_data_3[31:0] = in_data_3[31:0];

  assign muxN_0__in_data_4[31:0] = in_data_4[31:0];

  assign muxN_0__in_data_5[31:0] = in_data_5[31:0];

  assign muxN_0__in_data_6[31:0] = in_data_6[31:0];

  assign muxN_0__in_data_7[31:0] = in_data_7[31:0];

  assign muxN_0__in_sel[2:0] = sel_slice0__out[2:0];

  assign muxN_1__in_data_0[31:0] = in_data_8[31:0];

  assign muxN_1__in_data_1[31:0] = in_data_9[31:0];

  assign muxN_1__in_data_2[31:0] = in_data_10[31:0];

  assign muxN_1__in_data_3[31:0] = in_data_11[31:0];

  assign muxN_1__in_data_4[31:0] = in_data_12[31:0];

  assign muxN_1__in_data_5[31:0] = in_data_13[31:0];

  assign muxN_1__in_data_6[31:0] = in_data_14[31:0];

  assign muxN_1__in_data_7[31:0] = in_data_15[31:0];

  assign muxN_1__in_sel[2:0] = sel_slice1__out[2:0];

  assign sel_slice0__in[3:0] = in_sel[3:0];

  assign sel_slice1__in[3:0] = in_sel[3:0];


endmodule  // muxn_U33

// Generated from commonlib.muxn(N:32, width:32)
module muxn_U29 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [31:0] in_data_10,
  input [31:0] in_data_11,
  input [31:0] in_data_12,
  input [31:0] in_data_13,
  input [31:0] in_data_14,
  input [31:0] in_data_15,
  input [31:0] in_data_16,
  input [31:0] in_data_17,
  input [31:0] in_data_18,
  input [31:0] in_data_19,
  input [31:0] in_data_2,
  input [31:0] in_data_20,
  input [31:0] in_data_21,
  input [31:0] in_data_22,
  input [31:0] in_data_23,
  input [31:0] in_data_24,
  input [31:0] in_data_25,
  input [31:0] in_data_26,
  input [31:0] in_data_27,
  input [31:0] in_data_28,
  input [31:0] in_data_29,
  input [31:0] in_data_3,
  input [31:0] in_data_30,
  input [31:0] in_data_31,
  input [31:0] in_data_4,
  input [31:0] in_data_5,
  input [31:0] in_data_6,
  input [31:0] in_data_7,
  input [31:0] in_data_8,
  input [31:0] in_data_9,
  input [4:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:16, width:32)
  wire [31:0] muxN_0__in_data_0;
  wire [31:0] muxN_0__in_data_1;
  wire [31:0] muxN_0__in_data_10;
  wire [31:0] muxN_0__in_data_11;
  wire [31:0] muxN_0__in_data_12;
  wire [31:0] muxN_0__in_data_13;
  wire [31:0] muxN_0__in_data_14;
  wire [31:0] muxN_0__in_data_15;
  wire [31:0] muxN_0__in_data_2;
  wire [31:0] muxN_0__in_data_3;
  wire [31:0] muxN_0__in_data_4;
  wire [31:0] muxN_0__in_data_5;
  wire [31:0] muxN_0__in_data_6;
  wire [31:0] muxN_0__in_data_7;
  wire [31:0] muxN_0__in_data_8;
  wire [31:0] muxN_0__in_data_9;
  wire [3:0] muxN_0__in_sel;
  wire [31:0] muxN_0__out;
  muxn_U33 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_10(muxN_0__in_data_10),
    .in_data_11(muxN_0__in_data_11),
    .in_data_12(muxN_0__in_data_12),
    .in_data_13(muxN_0__in_data_13),
    .in_data_14(muxN_0__in_data_14),
    .in_data_15(muxN_0__in_data_15),
    .in_data_2(muxN_0__in_data_2),
    .in_data_3(muxN_0__in_data_3),
    .in_data_4(muxN_0__in_data_4),
    .in_data_5(muxN_0__in_data_5),
    .in_data_6(muxN_0__in_data_6),
    .in_data_7(muxN_0__in_data_7),
    .in_data_8(muxN_0__in_data_8),
    .in_data_9(muxN_0__in_data_9),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:16, width:32)
  wire [31:0] muxN_1__in_data_0;
  wire [31:0] muxN_1__in_data_1;
  wire [31:0] muxN_1__in_data_10;
  wire [31:0] muxN_1__in_data_11;
  wire [31:0] muxN_1__in_data_12;
  wire [31:0] muxN_1__in_data_13;
  wire [31:0] muxN_1__in_data_14;
  wire [31:0] muxN_1__in_data_15;
  wire [31:0] muxN_1__in_data_2;
  wire [31:0] muxN_1__in_data_3;
  wire [31:0] muxN_1__in_data_4;
  wire [31:0] muxN_1__in_data_5;
  wire [31:0] muxN_1__in_data_6;
  wire [31:0] muxN_1__in_data_7;
  wire [31:0] muxN_1__in_data_8;
  wire [31:0] muxN_1__in_data_9;
  wire [3:0] muxN_1__in_sel;
  wire [31:0] muxN_1__out;
  muxn_U33 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_10(muxN_1__in_data_10),
    .in_data_11(muxN_1__in_data_11),
    .in_data_12(muxN_1__in_data_12),
    .in_data_13(muxN_1__in_data_13),
    .in_data_14(muxN_1__in_data_14),
    .in_data_15(muxN_1__in_data_15),
    .in_data_2(muxN_1__in_data_2),
    .in_data_3(muxN_1__in_data_3),
    .in_data_4(muxN_1__in_data_4),
    .in_data_5(muxN_1__in_data_5),
    .in_data_6(muxN_1__in_data_6),
    .in_data_7(muxN_1__in_data_7),
    .in_data_8(muxN_1__in_data_8),
    .in_data_9(muxN_1__in_data_9),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:4, lo:0, width:5)
  wire [4:0] sel_slice0__in;
  wire [3:0] sel_slice0__out;
  coreir_slice #(.hi(4),.lo(0),.width(5)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:4, lo:0, width:5)
  wire [4:0] sel_slice1__in;
  wire [3:0] sel_slice1__out;
  coreir_slice #(.hi(4),.lo(0),.width(5)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[31:0] = muxN_0__out[31:0];

  assign _join__in1[31:0] = muxN_1__out[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[4];

  assign muxN_0__in_data_0[31:0] = in_data_0[31:0];

  assign muxN_0__in_data_1[31:0] = in_data_1[31:0];

  assign muxN_0__in_data_10[31:0] = in_data_10[31:0];

  assign muxN_0__in_data_11[31:0] = in_data_11[31:0];

  assign muxN_0__in_data_12[31:0] = in_data_12[31:0];

  assign muxN_0__in_data_13[31:0] = in_data_13[31:0];

  assign muxN_0__in_data_14[31:0] = in_data_14[31:0];

  assign muxN_0__in_data_15[31:0] = in_data_15[31:0];

  assign muxN_0__in_data_2[31:0] = in_data_2[31:0];

  assign muxN_0__in_data_3[31:0] = in_data_3[31:0];

  assign muxN_0__in_data_4[31:0] = in_data_4[31:0];

  assign muxN_0__in_data_5[31:0] = in_data_5[31:0];

  assign muxN_0__in_data_6[31:0] = in_data_6[31:0];

  assign muxN_0__in_data_7[31:0] = in_data_7[31:0];

  assign muxN_0__in_data_8[31:0] = in_data_8[31:0];

  assign muxN_0__in_data_9[31:0] = in_data_9[31:0];

  assign muxN_0__in_sel[3:0] = sel_slice0__out[3:0];

  assign muxN_1__in_data_0[31:0] = in_data_16[31:0];

  assign muxN_1__in_data_1[31:0] = in_data_17[31:0];

  assign muxN_1__in_data_10[31:0] = in_data_26[31:0];

  assign muxN_1__in_data_11[31:0] = in_data_27[31:0];

  assign muxN_1__in_data_12[31:0] = in_data_28[31:0];

  assign muxN_1__in_data_13[31:0] = in_data_29[31:0];

  assign muxN_1__in_data_14[31:0] = in_data_30[31:0];

  assign muxN_1__in_data_15[31:0] = in_data_31[31:0];

  assign muxN_1__in_data_2[31:0] = in_data_18[31:0];

  assign muxN_1__in_data_3[31:0] = in_data_19[31:0];

  assign muxN_1__in_data_4[31:0] = in_data_20[31:0];

  assign muxN_1__in_data_5[31:0] = in_data_21[31:0];

  assign muxN_1__in_data_6[31:0] = in_data_22[31:0];

  assign muxN_1__in_data_7[31:0] = in_data_23[31:0];

  assign muxN_1__in_data_8[31:0] = in_data_24[31:0];

  assign muxN_1__in_data_9[31:0] = in_data_25[31:0];

  assign muxN_1__in_sel[3:0] = sel_slice1__out[3:0];

  assign sel_slice0__in[4:0] = in_sel[4:0];

  assign sel_slice1__in[4:0] = in_sel[4:0];


endmodule  // muxn_U29

// Generated from commonlib.muxn(N:40, width:32)
module muxn_U7 (
  input [31:0] in_data_0,
  input [31:0] in_data_1,
  input [31:0] in_data_10,
  input [31:0] in_data_11,
  input [31:0] in_data_12,
  input [31:0] in_data_13,
  input [31:0] in_data_14,
  input [31:0] in_data_15,
  input [31:0] in_data_16,
  input [31:0] in_data_17,
  input [31:0] in_data_18,
  input [31:0] in_data_19,
  input [31:0] in_data_2,
  input [31:0] in_data_20,
  input [31:0] in_data_21,
  input [31:0] in_data_22,
  input [31:0] in_data_23,
  input [31:0] in_data_24,
  input [31:0] in_data_25,
  input [31:0] in_data_26,
  input [31:0] in_data_27,
  input [31:0] in_data_28,
  input [31:0] in_data_29,
  input [31:0] in_data_3,
  input [31:0] in_data_30,
  input [31:0] in_data_31,
  input [31:0] in_data_32,
  input [31:0] in_data_33,
  input [31:0] in_data_34,
  input [31:0] in_data_35,
  input [31:0] in_data_36,
  input [31:0] in_data_37,
  input [31:0] in_data_38,
  input [31:0] in_data_39,
  input [31:0] in_data_4,
  input [31:0] in_data_5,
  input [31:0] in_data_6,
  input [31:0] in_data_7,
  input [31:0] in_data_8,
  input [31:0] in_data_9,
  input [5:0] in_sel,
  output [31:0] out
);


  // Instancing generated Module: coreir.mux(width:32)
  wire [31:0] _join__in0;
  wire [31:0] _join__in1;
  wire [31:0] _join__out;
  wire  _join__sel;
  coreir_mux #(.width(32)) _join(
    .in0(_join__in0),
    .in1(_join__in1),
    .out(_join__out),
    .sel(_join__sel)
  );

  // Instancing generated Module: commonlib.muxn(N:32, width:32)
  wire [31:0] muxN_0__in_data_0;
  wire [31:0] muxN_0__in_data_1;
  wire [31:0] muxN_0__in_data_10;
  wire [31:0] muxN_0__in_data_11;
  wire [31:0] muxN_0__in_data_12;
  wire [31:0] muxN_0__in_data_13;
  wire [31:0] muxN_0__in_data_14;
  wire [31:0] muxN_0__in_data_15;
  wire [31:0] muxN_0__in_data_16;
  wire [31:0] muxN_0__in_data_17;
  wire [31:0] muxN_0__in_data_18;
  wire [31:0] muxN_0__in_data_19;
  wire [31:0] muxN_0__in_data_2;
  wire [31:0] muxN_0__in_data_20;
  wire [31:0] muxN_0__in_data_21;
  wire [31:0] muxN_0__in_data_22;
  wire [31:0] muxN_0__in_data_23;
  wire [31:0] muxN_0__in_data_24;
  wire [31:0] muxN_0__in_data_25;
  wire [31:0] muxN_0__in_data_26;
  wire [31:0] muxN_0__in_data_27;
  wire [31:0] muxN_0__in_data_28;
  wire [31:0] muxN_0__in_data_29;
  wire [31:0] muxN_0__in_data_3;
  wire [31:0] muxN_0__in_data_30;
  wire [31:0] muxN_0__in_data_31;
  wire [31:0] muxN_0__in_data_4;
  wire [31:0] muxN_0__in_data_5;
  wire [31:0] muxN_0__in_data_6;
  wire [31:0] muxN_0__in_data_7;
  wire [31:0] muxN_0__in_data_8;
  wire [31:0] muxN_0__in_data_9;
  wire [4:0] muxN_0__in_sel;
  wire [31:0] muxN_0__out;
  muxn_U29 muxN_0(
    .in_data_0(muxN_0__in_data_0),
    .in_data_1(muxN_0__in_data_1),
    .in_data_10(muxN_0__in_data_10),
    .in_data_11(muxN_0__in_data_11),
    .in_data_12(muxN_0__in_data_12),
    .in_data_13(muxN_0__in_data_13),
    .in_data_14(muxN_0__in_data_14),
    .in_data_15(muxN_0__in_data_15),
    .in_data_16(muxN_0__in_data_16),
    .in_data_17(muxN_0__in_data_17),
    .in_data_18(muxN_0__in_data_18),
    .in_data_19(muxN_0__in_data_19),
    .in_data_2(muxN_0__in_data_2),
    .in_data_20(muxN_0__in_data_20),
    .in_data_21(muxN_0__in_data_21),
    .in_data_22(muxN_0__in_data_22),
    .in_data_23(muxN_0__in_data_23),
    .in_data_24(muxN_0__in_data_24),
    .in_data_25(muxN_0__in_data_25),
    .in_data_26(muxN_0__in_data_26),
    .in_data_27(muxN_0__in_data_27),
    .in_data_28(muxN_0__in_data_28),
    .in_data_29(muxN_0__in_data_29),
    .in_data_3(muxN_0__in_data_3),
    .in_data_30(muxN_0__in_data_30),
    .in_data_31(muxN_0__in_data_31),
    .in_data_4(muxN_0__in_data_4),
    .in_data_5(muxN_0__in_data_5),
    .in_data_6(muxN_0__in_data_6),
    .in_data_7(muxN_0__in_data_7),
    .in_data_8(muxN_0__in_data_8),
    .in_data_9(muxN_0__in_data_9),
    .in_sel(muxN_0__in_sel),
    .out(muxN_0__out)
  );

  // Instancing generated Module: commonlib.muxn(N:8, width:32)
  wire [31:0] muxN_1__in_data_0;
  wire [31:0] muxN_1__in_data_1;
  wire [31:0] muxN_1__in_data_2;
  wire [31:0] muxN_1__in_data_3;
  wire [31:0] muxN_1__in_data_4;
  wire [31:0] muxN_1__in_data_5;
  wire [31:0] muxN_1__in_data_6;
  wire [31:0] muxN_1__in_data_7;
  wire [2:0] muxN_1__in_sel;
  wire [31:0] muxN_1__out;
  muxn_U10 muxN_1(
    .in_data_0(muxN_1__in_data_0),
    .in_data_1(muxN_1__in_data_1),
    .in_data_2(muxN_1__in_data_2),
    .in_data_3(muxN_1__in_data_3),
    .in_data_4(muxN_1__in_data_4),
    .in_data_5(muxN_1__in_data_5),
    .in_data_6(muxN_1__in_data_6),
    .in_data_7(muxN_1__in_data_7),
    .in_sel(muxN_1__in_sel),
    .out(muxN_1__out)
  );

  // Instancing generated Module: coreir.slice(hi:5, lo:0, width:6)
  wire [5:0] sel_slice0__in;
  wire [4:0] sel_slice0__out;
  coreir_slice #(.hi(5),.lo(0),.width(6)) sel_slice0(
    .in(sel_slice0__in),
    .out(sel_slice0__out)
  );

  // Instancing generated Module: coreir.slice(hi:3, lo:0, width:6)
  wire [5:0] sel_slice1__in;
  wire [2:0] sel_slice1__out;
  coreir_slice #(.hi(3),.lo(0),.width(6)) sel_slice1(
    .in(sel_slice1__in),
    .out(sel_slice1__out)
  );

  assign _join__in0[31:0] = muxN_0__out[31:0];

  assign _join__in1[31:0] = muxN_1__out[31:0];

  assign out[31:0] = _join__out[31:0];

  assign _join__sel = in_sel[5];

  assign muxN_0__in_data_0[31:0] = in_data_0[31:0];

  assign muxN_0__in_data_1[31:0] = in_data_1[31:0];

  assign muxN_0__in_data_10[31:0] = in_data_10[31:0];

  assign muxN_0__in_data_11[31:0] = in_data_11[31:0];

  assign muxN_0__in_data_12[31:0] = in_data_12[31:0];

  assign muxN_0__in_data_13[31:0] = in_data_13[31:0];

  assign muxN_0__in_data_14[31:0] = in_data_14[31:0];

  assign muxN_0__in_data_15[31:0] = in_data_15[31:0];

  assign muxN_0__in_data_16[31:0] = in_data_16[31:0];

  assign muxN_0__in_data_17[31:0] = in_data_17[31:0];

  assign muxN_0__in_data_18[31:0] = in_data_18[31:0];

  assign muxN_0__in_data_19[31:0] = in_data_19[31:0];

  assign muxN_0__in_data_2[31:0] = in_data_2[31:0];

  assign muxN_0__in_data_20[31:0] = in_data_20[31:0];

  assign muxN_0__in_data_21[31:0] = in_data_21[31:0];

  assign muxN_0__in_data_22[31:0] = in_data_22[31:0];

  assign muxN_0__in_data_23[31:0] = in_data_23[31:0];

  assign muxN_0__in_data_24[31:0] = in_data_24[31:0];

  assign muxN_0__in_data_25[31:0] = in_data_25[31:0];

  assign muxN_0__in_data_26[31:0] = in_data_26[31:0];

  assign muxN_0__in_data_27[31:0] = in_data_27[31:0];

  assign muxN_0__in_data_28[31:0] = in_data_28[31:0];

  assign muxN_0__in_data_29[31:0] = in_data_29[31:0];

  assign muxN_0__in_data_3[31:0] = in_data_3[31:0];

  assign muxN_0__in_data_30[31:0] = in_data_30[31:0];

  assign muxN_0__in_data_31[31:0] = in_data_31[31:0];

  assign muxN_0__in_data_4[31:0] = in_data_4[31:0];

  assign muxN_0__in_data_5[31:0] = in_data_5[31:0];

  assign muxN_0__in_data_6[31:0] = in_data_6[31:0];

  assign muxN_0__in_data_7[31:0] = in_data_7[31:0];

  assign muxN_0__in_data_8[31:0] = in_data_8[31:0];

  assign muxN_0__in_data_9[31:0] = in_data_9[31:0];

  assign muxN_0__in_sel[4:0] = sel_slice0__out[4:0];

  assign muxN_1__in_data_0[31:0] = in_data_32[31:0];

  assign muxN_1__in_data_1[31:0] = in_data_33[31:0];

  assign muxN_1__in_data_2[31:0] = in_data_34[31:0];

  assign muxN_1__in_data_3[31:0] = in_data_35[31:0];

  assign muxN_1__in_data_4[31:0] = in_data_36[31:0];

  assign muxN_1__in_data_5[31:0] = in_data_37[31:0];

  assign muxN_1__in_data_6[31:0] = in_data_38[31:0];

  assign muxN_1__in_data_7[31:0] = in_data_39[31:0];

  assign muxN_1__in_sel[2:0] = sel_slice1__out[2:0];

  assign sel_slice0__in[5:0] = in_sel[5:0];

  assign sel_slice1__in[5:0] = in_sel[5:0];


endmodule  // muxn_U7

module Mux40x32 (
  input [31:0] I0,
  input [31:0] I1,
  input [31:0] I10,
  input [31:0] I11,
  input [31:0] I12,
  input [31:0] I13,
  input [31:0] I14,
  input [31:0] I15,
  input [31:0] I16,
  input [31:0] I17,
  input [31:0] I18,
  input [31:0] I19,
  input [31:0] I2,
  input [31:0] I20,
  input [31:0] I21,
  input [31:0] I22,
  input [31:0] I23,
  input [31:0] I24,
  input [31:0] I25,
  input [31:0] I26,
  input [31:0] I27,
  input [31:0] I28,
  input [31:0] I29,
  input [31:0] I3,
  input [31:0] I30,
  input [31:0] I31,
  input [31:0] I32,
  input [31:0] I33,
  input [31:0] I34,
  input [31:0] I35,
  input [31:0] I36,
  input [31:0] I37,
  input [31:0] I38,
  input [31:0] I39,
  input [31:0] I4,
  input [31:0] I5,
  input [31:0] I6,
  input [31:0] I7,
  input [31:0] I8,
  input [31:0] I9,
  output [31:0] O,
  input [5:0] S
);


  // Instancing generated Module: commonlib.muxn(N:40, width:32)
  wire [31:0] inst0__in_data_0;
  wire [31:0] inst0__in_data_1;
  wire [31:0] inst0__in_data_10;
  wire [31:0] inst0__in_data_11;
  wire [31:0] inst0__in_data_12;
  wire [31:0] inst0__in_data_13;
  wire [31:0] inst0__in_data_14;
  wire [31:0] inst0__in_data_15;
  wire [31:0] inst0__in_data_16;
  wire [31:0] inst0__in_data_17;
  wire [31:0] inst0__in_data_18;
  wire [31:0] inst0__in_data_19;
  wire [31:0] inst0__in_data_2;
  wire [31:0] inst0__in_data_20;
  wire [31:0] inst0__in_data_21;
  wire [31:0] inst0__in_data_22;
  wire [31:0] inst0__in_data_23;
  wire [31:0] inst0__in_data_24;
  wire [31:0] inst0__in_data_25;
  wire [31:0] inst0__in_data_26;
  wire [31:0] inst0__in_data_27;
  wire [31:0] inst0__in_data_28;
  wire [31:0] inst0__in_data_29;
  wire [31:0] inst0__in_data_3;
  wire [31:0] inst0__in_data_30;
  wire [31:0] inst0__in_data_31;
  wire [31:0] inst0__in_data_32;
  wire [31:0] inst0__in_data_33;
  wire [31:0] inst0__in_data_34;
  wire [31:0] inst0__in_data_35;
  wire [31:0] inst0__in_data_36;
  wire [31:0] inst0__in_data_37;
  wire [31:0] inst0__in_data_38;
  wire [31:0] inst0__in_data_39;
  wire [31:0] inst0__in_data_4;
  wire [31:0] inst0__in_data_5;
  wire [31:0] inst0__in_data_6;
  wire [31:0] inst0__in_data_7;
  wire [31:0] inst0__in_data_8;
  wire [31:0] inst0__in_data_9;
  wire [5:0] inst0__in_sel;
  wire [31:0] inst0__out;
  muxn_U7 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_data_10(inst0__in_data_10),
    .in_data_11(inst0__in_data_11),
    .in_data_12(inst0__in_data_12),
    .in_data_13(inst0__in_data_13),
    .in_data_14(inst0__in_data_14),
    .in_data_15(inst0__in_data_15),
    .in_data_16(inst0__in_data_16),
    .in_data_17(inst0__in_data_17),
    .in_data_18(inst0__in_data_18),
    .in_data_19(inst0__in_data_19),
    .in_data_2(inst0__in_data_2),
    .in_data_20(inst0__in_data_20),
    .in_data_21(inst0__in_data_21),
    .in_data_22(inst0__in_data_22),
    .in_data_23(inst0__in_data_23),
    .in_data_24(inst0__in_data_24),
    .in_data_25(inst0__in_data_25),
    .in_data_26(inst0__in_data_26),
    .in_data_27(inst0__in_data_27),
    .in_data_28(inst0__in_data_28),
    .in_data_29(inst0__in_data_29),
    .in_data_3(inst0__in_data_3),
    .in_data_30(inst0__in_data_30),
    .in_data_31(inst0__in_data_31),
    .in_data_32(inst0__in_data_32),
    .in_data_33(inst0__in_data_33),
    .in_data_34(inst0__in_data_34),
    .in_data_35(inst0__in_data_35),
    .in_data_36(inst0__in_data_36),
    .in_data_37(inst0__in_data_37),
    .in_data_38(inst0__in_data_38),
    .in_data_39(inst0__in_data_39),
    .in_data_4(inst0__in_data_4),
    .in_data_5(inst0__in_data_5),
    .in_data_6(inst0__in_data_6),
    .in_data_7(inst0__in_data_7),
    .in_data_8(inst0__in_data_8),
    .in_data_9(inst0__in_data_9),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[31:0] = I0[31:0];

  assign inst0__in_data_1[31:0] = I1[31:0];

  assign inst0__in_data_10[31:0] = I10[31:0];

  assign inst0__in_data_11[31:0] = I11[31:0];

  assign inst0__in_data_12[31:0] = I12[31:0];

  assign inst0__in_data_13[31:0] = I13[31:0];

  assign inst0__in_data_14[31:0] = I14[31:0];

  assign inst0__in_data_15[31:0] = I15[31:0];

  assign inst0__in_data_16[31:0] = I16[31:0];

  assign inst0__in_data_17[31:0] = I17[31:0];

  assign inst0__in_data_18[31:0] = I18[31:0];

  assign inst0__in_data_19[31:0] = I19[31:0];

  assign inst0__in_data_2[31:0] = I2[31:0];

  assign inst0__in_data_20[31:0] = I20[31:0];

  assign inst0__in_data_21[31:0] = I21[31:0];

  assign inst0__in_data_22[31:0] = I22[31:0];

  assign inst0__in_data_23[31:0] = I23[31:0];

  assign inst0__in_data_24[31:0] = I24[31:0];

  assign inst0__in_data_25[31:0] = I25[31:0];

  assign inst0__in_data_26[31:0] = I26[31:0];

  assign inst0__in_data_27[31:0] = I27[31:0];

  assign inst0__in_data_28[31:0] = I28[31:0];

  assign inst0__in_data_29[31:0] = I29[31:0];

  assign inst0__in_data_3[31:0] = I3[31:0];

  assign inst0__in_data_30[31:0] = I30[31:0];

  assign inst0__in_data_31[31:0] = I31[31:0];

  assign inst0__in_data_32[31:0] = I32[31:0];

  assign inst0__in_data_33[31:0] = I33[31:0];

  assign inst0__in_data_34[31:0] = I34[31:0];

  assign inst0__in_data_35[31:0] = I35[31:0];

  assign inst0__in_data_36[31:0] = I36[31:0];

  assign inst0__in_data_37[31:0] = I37[31:0];

  assign inst0__in_data_38[31:0] = I38[31:0];

  assign inst0__in_data_39[31:0] = I39[31:0];

  assign inst0__in_data_4[31:0] = I4[31:0];

  assign inst0__in_data_5[31:0] = I5[31:0];

  assign inst0__in_data_6[31:0] = I6[31:0];

  assign inst0__in_data_7[31:0] = I7[31:0];

  assign inst0__in_data_8[31:0] = I8[31:0];

  assign inst0__in_data_9[31:0] = I9[31:0];

  assign inst0__in_sel[5:0] = S[5:0];

  assign O[31:0] = inst0__out[31:0];


endmodule  // Mux40x32

module coreir_ult #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 < in1;

endmodule  // coreir_ult

module Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_4 (
  input  ASYNCRESET,
  input  CE,
  input  CLK,
  input [3:0] I,
  output [3:0] O
);


  // Instancing generated Module: coreir.reg_arst(width:4)
  wire  inst0__arst;
  wire  inst0__clk;
  wire [3:0] inst0__in;
  wire [3:0] inst0__out;
  coreir_reg_arst #(.arst_posedge(1),.clk_posedge(1),.init(4'h0),.width(4)) inst0(
    .arst(inst0__arst),
    .clk(inst0__clk),
    .in(inst0__in),
    .out(inst0__out)
  );

  wire [3:0] inst1__I0;
  wire [3:0] inst1__I1;
  wire [3:0] inst1__O;
  wire  inst1__S;
  Mux2x4 inst1(
    .I0(inst1__I0),
    .I1(inst1__I1),
    .O(inst1__O),
    .S(inst1__S)
  );

  assign inst0__arst = ASYNCRESET;

  assign inst0__clk = CLK;

  assign inst0__in[3:0] = inst1__O[3:0];

  assign inst1__I0[3:0] = inst0__out[3:0];

  assign O[3:0] = inst0__out[3:0];

  assign inst1__I1[3:0] = I[3:0];

  assign inst1__S = CE;


endmodule  // Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_4

module Decode08 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_0_8__out;
  coreir_const #(.value(8'h00),.width(8)) const_0_8(
    .out(const_0_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_0_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode08

module Decode68 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_6_8__out;
  coreir_const #(.value(8'h06),.width(8)) const_6_8(
    .out(const_6_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_6_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode68

module Decode78 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_7_8__out;
  coreir_const #(.value(8'h07),.width(8)) const_7_8(
    .out(const_7_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_7_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode78

/* External Modules
module test_pe (
  input  bit0,
  input  bit1,
  input  bit2,
  input [7:0] cfg_a,
  input [31:0] cfg_d,
  input  cfg_en,
  input  clk,
  input  clk_en,
  input [15:0] data0,
  input [15:0] data1,
  input [15:0] data2,
  output  irq,
  output [31:0] read_data,
  output [15:0] res,
  output  res_p,
  input  rst_n
);

endmodule  // test_pe

*/
module Mux2x2 (
  input [1:0] I0,
  input [1:0] I1,
  output [1:0] O,
  input  S
);


  // Instancing generated Module: commonlib.muxn(N:2, width:2)
  wire [1:0] inst0__in_data_0;
  wire [1:0] inst0__in_data_1;
  wire [0:0] inst0__in_sel;
  wire [1:0] inst0__out;
  muxn_U4 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[1:0] = I0[1:0];

  assign inst0__in_data_1[1:0] = I1[1:0];

  assign inst0__in_sel[0] = S;

  assign O[1:0] = inst0__out[1:0];


endmodule  // Mux2x2

module ConfigRegister_4_8_32_0 (
  output [3:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_0_8__out;
  coreir_const #(.value(8'h00),.width(8)) const_0_8(
    .out(const_0_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [3:0] inst0__I;
  wire [3:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_4 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_0_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign inst0__I[2] = config_data[2];

  assign inst0__I[3] = config_data[3];

  assign O[3:0] = inst0__O[3:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_4_8_32_0

module Decode18 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_1_8__out;
  coreir_const #(.value(8'h01),.width(8)) const_1_8(
    .out(const_1_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_1_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode18

module Decode38 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_3_8__out;
  coreir_const #(.value(8'h03),.width(8)) const_3_8(
    .out(const_3_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_3_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode38

module Decode48 (
  input [7:0] I,
  output  O
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_4_8__out;
  coreir_const #(.value(8'h04),.width(8)) const_4_8(
    .out(const_4_8__out)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst0__in0;
  wire [7:0] inst0__in1;
  wire  inst0__out;
  coreir_eq #(.width(8)) inst0(
    .in0(inst0__in0),
    .in1(inst0__in1),
    .out(inst0__out)
  );

  assign inst0__in1[7:0] = const_4_8__out[7:0];

  assign inst0__in0[7:0] = I[7:0];

  assign O = inst0__out;


endmodule  // Decode48

module Mux10x1 (
  input [0:0] I0,
  input [0:0] I1,
  input [0:0] I2,
  input [0:0] I3,
  input [0:0] I4,
  input [0:0] I5,
  input [0:0] I6,
  input [0:0] I7,
  input [0:0] I8,
  input [0:0] I9,
  output [0:0] O,
  input [3:0] S
);


  // Instancing generated Module: commonlib.muxn(N:10, width:1)
  wire [0:0] inst0__in_data_0;
  wire [0:0] inst0__in_data_1;
  wire [0:0] inst0__in_data_2;
  wire [0:0] inst0__in_data_3;
  wire [0:0] inst0__in_data_4;
  wire [0:0] inst0__in_data_5;
  wire [0:0] inst0__in_data_6;
  wire [0:0] inst0__in_data_7;
  wire [0:0] inst0__in_data_8;
  wire [0:0] inst0__in_data_9;
  wire [3:0] inst0__in_sel;
  wire [0:0] inst0__out;
  muxn_U2 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_data_2(inst0__in_data_2),
    .in_data_3(inst0__in_data_3),
    .in_data_4(inst0__in_data_4),
    .in_data_5(inst0__in_data_5),
    .in_data_6(inst0__in_data_6),
    .in_data_7(inst0__in_data_7),
    .in_data_8(inst0__in_data_8),
    .in_data_9(inst0__in_data_9),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[0:0] = I0[0:0];

  assign inst0__in_data_1[0:0] = I1[0:0];

  assign inst0__in_data_2[0:0] = I2[0:0];

  assign inst0__in_data_3[0:0] = I3[0:0];

  assign inst0__in_data_4[0:0] = I4[0:0];

  assign inst0__in_data_5[0:0] = I5[0:0];

  assign inst0__in_data_6[0:0] = I6[0:0];

  assign inst0__in_data_7[0:0] = I7[0:0];

  assign inst0__in_data_8[0:0] = I8[0:0];

  assign inst0__in_data_9[0:0] = I9[0:0];

  assign inst0__in_sel[3:0] = S[3:0];

  assign O[0:0] = inst0__out[0:0];


endmodule  // Mux10x1

module MuxWrapper_10_1 (
  input [0:0] I_0,
  input [0:0] I_1,
  input [0:0] I_2,
  input [0:0] I_3,
  input [0:0] I_4,
  input [0:0] I_5,
  input [0:0] I_6,
  input [0:0] I_7,
  input [0:0] I_8,
  input [0:0] I_9,
  output [0:0] O,
  input [3:0] S
);


  wire [0:0] inst0__I0;
  wire [0:0] inst0__I1;
  wire [0:0] inst0__I2;
  wire [0:0] inst0__I3;
  wire [0:0] inst0__I4;
  wire [0:0] inst0__I5;
  wire [0:0] inst0__I6;
  wire [0:0] inst0__I7;
  wire [0:0] inst0__I8;
  wire [0:0] inst0__I9;
  wire [0:0] inst0__O;
  wire [3:0] inst0__S;
  Mux10x1 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .I2(inst0__I2),
    .I3(inst0__I3),
    .I4(inst0__I4),
    .I5(inst0__I5),
    .I6(inst0__I6),
    .I7(inst0__I7),
    .I8(inst0__I8),
    .I9(inst0__I9),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[0:0] = I_0[0:0];

  assign inst0__I1[0:0] = I_1[0:0];

  assign inst0__I2[0:0] = I_2[0:0];

  assign inst0__I3[0:0] = I_3[0:0];

  assign inst0__I4[0:0] = I_4[0:0];

  assign inst0__I5[0:0] = I_5[0:0];

  assign inst0__I6[0:0] = I_6[0:0];

  assign inst0__I7[0:0] = I_7[0:0];

  assign inst0__I8[0:0] = I_8[0:0];

  assign inst0__I9[0:0] = I_9[0:0];

  assign O[0:0] = inst0__O[0:0];

  assign inst0__S[3:0] = S[3:0];


endmodule  // MuxWrapper_10_1

module Mux2x32 (
  input [31:0] I0,
  input [31:0] I1,
  output [31:0] O,
  input  S
);


  // Instancing generated Module: commonlib.muxn(N:2, width:32)
  wire [31:0] inst0__in_data_0;
  wire [31:0] inst0__in_data_1;
  wire [0:0] inst0__in_sel;
  wire [31:0] inst0__out;
  muxn_U5 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[31:0] = I0[31:0];

  assign inst0__in_data_1[31:0] = I1[31:0];

  assign inst0__in_sel[0] = S;

  assign O[31:0] = inst0__out[31:0];


endmodule  // Mux2x32

module MuxWrapper_2_32 (
  input [31:0] I_0,
  input [31:0] I_1,
  output [31:0] O,
  input [0:0] S
);


  wire [31:0] inst0__I0;
  wire [31:0] inst0__I1;
  wire [31:0] inst0__O;
  wire  inst0__S;
  Mux2x32 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[31:0] = I_0[31:0];

  assign inst0__I1[31:0] = I_1[31:0];

  assign O[31:0] = inst0__O[31:0];

  assign inst0__S = S[0];


endmodule  // MuxWrapper_2_32

module Mux4x1 (
  input [0:0] I0,
  input [0:0] I1,
  input [0:0] I2,
  input [0:0] I3,
  output [0:0] O,
  input [1:0] S
);


  // Instancing generated Module: commonlib.muxn(N:4, width:1)
  wire [0:0] inst0__in_data_0;
  wire [0:0] inst0__in_data_1;
  wire [0:0] inst0__in_data_2;
  wire [0:0] inst0__in_data_3;
  wire [1:0] inst0__in_sel;
  wire [0:0] inst0__out;
  muxn_U8 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_data_2(inst0__in_data_2),
    .in_data_3(inst0__in_data_3),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[0:0] = I0[0:0];

  assign inst0__in_data_1[0:0] = I1[0:0];

  assign inst0__in_data_2[0:0] = I2[0:0];

  assign inst0__in_data_3[0:0] = I3[0:0];

  assign inst0__in_sel[1:0] = S[1:0];

  assign O[0:0] = inst0__out[0:0];


endmodule  // Mux4x1

module MuxWrapper_4_1 (
  input [0:0] I_0,
  input [0:0] I_1,
  input [0:0] I_2,
  input [0:0] I_3,
  output [0:0] O,
  input [1:0] S
);


  wire [0:0] inst0__I0;
  wire [0:0] inst0__I1;
  wire [0:0] inst0__I2;
  wire [0:0] inst0__I3;
  wire [0:0] inst0__O;
  wire [1:0] inst0__S;
  Mux4x1 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .I2(inst0__I2),
    .I3(inst0__I3),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[0:0] = I_0[0:0];

  assign inst0__I1[0:0] = I_1[0:0];

  assign inst0__I2[0:0] = I_2[0:0];

  assign inst0__I3[0:0] = I_3[0:0];

  assign O[0:0] = inst0__O[0:0];

  assign inst0__S[1:0] = S[1:0];


endmodule  // MuxWrapper_4_1

module Mux4x16 (
  input [15:0] I0,
  input [15:0] I1,
  input [15:0] I2,
  input [15:0] I3,
  output [15:0] O,
  input [1:0] S
);


  // Instancing generated Module: commonlib.muxn(N:4, width:16)
  wire [15:0] inst0__in_data_0;
  wire [15:0] inst0__in_data_1;
  wire [15:0] inst0__in_data_2;
  wire [15:0] inst0__in_data_3;
  wire [1:0] inst0__in_sel;
  wire [15:0] inst0__out;
  muxn_U9 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_data_2(inst0__in_data_2),
    .in_data_3(inst0__in_data_3),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[15:0] = I0[15:0];

  assign inst0__in_data_1[15:0] = I1[15:0];

  assign inst0__in_data_2[15:0] = I2[15:0];

  assign inst0__in_data_3[15:0] = I3[15:0];

  assign inst0__in_sel[1:0] = S[1:0];

  assign O[15:0] = inst0__out[15:0];


endmodule  // Mux4x16

module MuxWrapper_4_16 (
  input [15:0] I_0,
  input [15:0] I_1,
  input [15:0] I_2,
  input [15:0] I_3,
  output [15:0] O,
  input [1:0] S
);


  wire [15:0] inst0__I0;
  wire [15:0] inst0__I1;
  wire [15:0] inst0__I2;
  wire [15:0] inst0__I3;
  wire [15:0] inst0__O;
  wire [1:0] inst0__S;
  Mux4x16 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .I2(inst0__I2),
    .I3(inst0__I3),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[15:0] = I_0[15:0];

  assign inst0__I1[15:0] = I_1[15:0];

  assign inst0__I2[15:0] = I_2[15:0];

  assign inst0__I3[15:0] = I_3[15:0];

  assign O[15:0] = inst0__O[15:0];

  assign inst0__S[1:0] = S[1:0];


endmodule  // MuxWrapper_4_16

module Mux8x32 (
  input [31:0] I0,
  input [31:0] I1,
  input [31:0] I2,
  input [31:0] I3,
  input [31:0] I4,
  input [31:0] I5,
  input [31:0] I6,
  input [31:0] I7,
  output [31:0] O,
  input [2:0] S
);


  // Instancing generated Module: commonlib.muxn(N:8, width:32)
  wire [31:0] inst0__in_data_0;
  wire [31:0] inst0__in_data_1;
  wire [31:0] inst0__in_data_2;
  wire [31:0] inst0__in_data_3;
  wire [31:0] inst0__in_data_4;
  wire [31:0] inst0__in_data_5;
  wire [31:0] inst0__in_data_6;
  wire [31:0] inst0__in_data_7;
  wire [2:0] inst0__in_sel;
  wire [31:0] inst0__out;
  muxn_U10 inst0(
    .in_data_0(inst0__in_data_0),
    .in_data_1(inst0__in_data_1),
    .in_data_2(inst0__in_data_2),
    .in_data_3(inst0__in_data_3),
    .in_data_4(inst0__in_data_4),
    .in_data_5(inst0__in_data_5),
    .in_data_6(inst0__in_data_6),
    .in_data_7(inst0__in_data_7),
    .in_sel(inst0__in_sel),
    .out(inst0__out)
  );

  assign inst0__in_data_0[31:0] = I0[31:0];

  assign inst0__in_data_1[31:0] = I1[31:0];

  assign inst0__in_data_2[31:0] = I2[31:0];

  assign inst0__in_data_3[31:0] = I3[31:0];

  assign inst0__in_data_4[31:0] = I4[31:0];

  assign inst0__in_data_5[31:0] = I5[31:0];

  assign inst0__in_data_6[31:0] = I6[31:0];

  assign inst0__in_data_7[31:0] = I7[31:0];

  assign inst0__in_sel[2:0] = S[2:0];

  assign O[31:0] = inst0__out[31:0];


endmodule  // Mux8x32

module MuxWrapper_40_32 (
  input [31:0] I_0,
  input [31:0] I_1,
  input [31:0] I_10,
  input [31:0] I_11,
  input [31:0] I_12,
  input [31:0] I_13,
  input [31:0] I_14,
  input [31:0] I_15,
  input [31:0] I_16,
  input [31:0] I_17,
  input [31:0] I_18,
  input [31:0] I_19,
  input [31:0] I_2,
  input [31:0] I_20,
  input [31:0] I_21,
  input [31:0] I_22,
  input [31:0] I_23,
  input [31:0] I_24,
  input [31:0] I_25,
  input [31:0] I_26,
  input [31:0] I_27,
  input [31:0] I_28,
  input [31:0] I_29,
  input [31:0] I_3,
  input [31:0] I_30,
  input [31:0] I_31,
  input [31:0] I_32,
  input [31:0] I_33,
  input [31:0] I_34,
  input [31:0] I_35,
  input [31:0] I_36,
  input [31:0] I_37,
  input [31:0] I_38,
  input [31:0] I_39,
  input [31:0] I_4,
  input [31:0] I_5,
  input [31:0] I_6,
  input [31:0] I_7,
  input [31:0] I_8,
  input [31:0] I_9,
  output [31:0] O,
  input [5:0] S
);


  wire [31:0] inst0__I0;
  wire [31:0] inst0__I1;
  wire [31:0] inst0__I10;
  wire [31:0] inst0__I11;
  wire [31:0] inst0__I12;
  wire [31:0] inst0__I13;
  wire [31:0] inst0__I14;
  wire [31:0] inst0__I15;
  wire [31:0] inst0__I16;
  wire [31:0] inst0__I17;
  wire [31:0] inst0__I18;
  wire [31:0] inst0__I19;
  wire [31:0] inst0__I2;
  wire [31:0] inst0__I20;
  wire [31:0] inst0__I21;
  wire [31:0] inst0__I22;
  wire [31:0] inst0__I23;
  wire [31:0] inst0__I24;
  wire [31:0] inst0__I25;
  wire [31:0] inst0__I26;
  wire [31:0] inst0__I27;
  wire [31:0] inst0__I28;
  wire [31:0] inst0__I29;
  wire [31:0] inst0__I3;
  wire [31:0] inst0__I30;
  wire [31:0] inst0__I31;
  wire [31:0] inst0__I32;
  wire [31:0] inst0__I33;
  wire [31:0] inst0__I34;
  wire [31:0] inst0__I35;
  wire [31:0] inst0__I36;
  wire [31:0] inst0__I37;
  wire [31:0] inst0__I38;
  wire [31:0] inst0__I39;
  wire [31:0] inst0__I4;
  wire [31:0] inst0__I5;
  wire [31:0] inst0__I6;
  wire [31:0] inst0__I7;
  wire [31:0] inst0__I8;
  wire [31:0] inst0__I9;
  wire [31:0] inst0__O;
  wire [5:0] inst0__S;
  Mux40x32 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .I10(inst0__I10),
    .I11(inst0__I11),
    .I12(inst0__I12),
    .I13(inst0__I13),
    .I14(inst0__I14),
    .I15(inst0__I15),
    .I16(inst0__I16),
    .I17(inst0__I17),
    .I18(inst0__I18),
    .I19(inst0__I19),
    .I2(inst0__I2),
    .I20(inst0__I20),
    .I21(inst0__I21),
    .I22(inst0__I22),
    .I23(inst0__I23),
    .I24(inst0__I24),
    .I25(inst0__I25),
    .I26(inst0__I26),
    .I27(inst0__I27),
    .I28(inst0__I28),
    .I29(inst0__I29),
    .I3(inst0__I3),
    .I30(inst0__I30),
    .I31(inst0__I31),
    .I32(inst0__I32),
    .I33(inst0__I33),
    .I34(inst0__I34),
    .I35(inst0__I35),
    .I36(inst0__I36),
    .I37(inst0__I37),
    .I38(inst0__I38),
    .I39(inst0__I39),
    .I4(inst0__I4),
    .I5(inst0__I5),
    .I6(inst0__I6),
    .I7(inst0__I7),
    .I8(inst0__I8),
    .I9(inst0__I9),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[31:0] = I_0[31:0];

  assign inst0__I1[31:0] = I_1[31:0];

  assign inst0__I10[31:0] = I_10[31:0];

  assign inst0__I11[31:0] = I_11[31:0];

  assign inst0__I12[31:0] = I_12[31:0];

  assign inst0__I13[31:0] = I_13[31:0];

  assign inst0__I14[31:0] = I_14[31:0];

  assign inst0__I15[31:0] = I_15[31:0];

  assign inst0__I16[31:0] = I_16[31:0];

  assign inst0__I17[31:0] = I_17[31:0];

  assign inst0__I18[31:0] = I_18[31:0];

  assign inst0__I19[31:0] = I_19[31:0];

  assign inst0__I2[31:0] = I_2[31:0];

  assign inst0__I20[31:0] = I_20[31:0];

  assign inst0__I21[31:0] = I_21[31:0];

  assign inst0__I22[31:0] = I_22[31:0];

  assign inst0__I23[31:0] = I_23[31:0];

  assign inst0__I24[31:0] = I_24[31:0];

  assign inst0__I25[31:0] = I_25[31:0];

  assign inst0__I26[31:0] = I_26[31:0];

  assign inst0__I27[31:0] = I_27[31:0];

  assign inst0__I28[31:0] = I_28[31:0];

  assign inst0__I29[31:0] = I_29[31:0];

  assign inst0__I3[31:0] = I_3[31:0];

  assign inst0__I30[31:0] = I_30[31:0];

  assign inst0__I31[31:0] = I_31[31:0];

  assign inst0__I32[31:0] = I_32[31:0];

  assign inst0__I33[31:0] = I_33[31:0];

  assign inst0__I34[31:0] = I_34[31:0];

  assign inst0__I35[31:0] = I_35[31:0];

  assign inst0__I36[31:0] = I_36[31:0];

  assign inst0__I37[31:0] = I_37[31:0];

  assign inst0__I38[31:0] = I_38[31:0];

  assign inst0__I39[31:0] = I_39[31:0];

  assign inst0__I4[31:0] = I_4[31:0];

  assign inst0__I5[31:0] = I_5[31:0];

  assign inst0__I6[31:0] = I_6[31:0];

  assign inst0__I7[31:0] = I_7[31:0];

  assign inst0__I8[31:0] = I_8[31:0];

  assign inst0__I9[31:0] = I_9[31:0];

  assign O[31:0] = inst0__O[31:0];

  assign inst0__S[5:0] = S[5:0];


endmodule  // MuxWrapper_40_32

module MuxWrapper_8_32 (
  input [31:0] I_0,
  input [31:0] I_1,
  input [31:0] I_2,
  input [31:0] I_3,
  input [31:0] I_4,
  input [31:0] I_5,
  input [31:0] I_6,
  input [31:0] I_7,
  output [31:0] O,
  input [2:0] S
);


  wire [31:0] inst0__I0;
  wire [31:0] inst0__I1;
  wire [31:0] inst0__I2;
  wire [31:0] inst0__I3;
  wire [31:0] inst0__I4;
  wire [31:0] inst0__I5;
  wire [31:0] inst0__I6;
  wire [31:0] inst0__I7;
  wire [31:0] inst0__O;
  wire [2:0] inst0__S;
  Mux8x32 inst0(
    .I0(inst0__I0),
    .I1(inst0__I1),
    .I2(inst0__I2),
    .I3(inst0__I3),
    .I4(inst0__I4),
    .I5(inst0__I5),
    .I6(inst0__I6),
    .I7(inst0__I7),
    .O(inst0__O),
    .S(inst0__S)
  );

  assign inst0__I0[31:0] = I_0[31:0];

  assign inst0__I1[31:0] = I_1[31:0];

  assign inst0__I2[31:0] = I_2[31:0];

  assign inst0__I3[31:0] = I_3[31:0];

  assign inst0__I4[31:0] = I_4[31:0];

  assign inst0__I5[31:0] = I_5[31:0];

  assign inst0__I6[31:0] = I_6[31:0];

  assign inst0__I7[31:0] = I_7[31:0];

  assign O[31:0] = inst0__O[31:0];

  assign inst0__S[2:0] = S[2:0];


endmodule  // MuxWrapper_8_32

module MuxWithDefaultWrapper_8_32_8_0 (
  input [0:0] EN,
  input [31:0] I_0,
  input [31:0] I_1,
  input [31:0] I_2,
  input [31:0] I_3,
  input [31:0] I_4,
  input [31:0] I_5,
  input [31:0] I_6,
  input [31:0] I_7,
  output [31:0] O,
  input [7:0] S
);


  // Instancing generated Module: coreir.const(width:32)
  wire [31:0] const_0_32__out;
  coreir_const #(.value(32'h00000000),.width(32)) const_0_32(
    .out(const_0_32__out)
  );

  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_8_8__out;
  coreir_const #(.value(8'h08),.width(8)) const_8_8(
    .out(const_8_8__out)
  );

  wire [31:0] inst0__I_0;
  wire [31:0] inst0__I_1;
  wire [31:0] inst0__I_2;
  wire [31:0] inst0__I_3;
  wire [31:0] inst0__I_4;
  wire [31:0] inst0__I_5;
  wire [31:0] inst0__I_6;
  wire [31:0] inst0__I_7;
  wire [31:0] inst0__O;
  wire [2:0] inst0__S;
  MuxWrapper_8_32 inst0(
    .I_0(inst0__I_0),
    .I_1(inst0__I_1),
    .I_2(inst0__I_2),
    .I_3(inst0__I_3),
    .I_4(inst0__I_4),
    .I_5(inst0__I_5),
    .I_6(inst0__I_6),
    .I_7(inst0__I_7),
    .O(inst0__O),
    .S(inst0__S)
  );

  wire [31:0] inst1__I_0;
  wire [31:0] inst1__I_1;
  wire [31:0] inst1__O;
  wire [0:0] inst1__S;
  MuxWrapper_2_32 inst1(
    .I_0(inst1__I_0),
    .I_1(inst1__I_1),
    .O(inst1__O),
    .S(inst1__S)
  );

  // Instancing generated Module: coreir.ult(width:8)
  wire [7:0] inst2__in0;
  wire [7:0] inst2__in1;
  wire  inst2__out;
  coreir_ult #(.width(8)) inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  wire  inst3__in0;
  wire  inst3__in1;
  wire  inst3__out;
  corebit_and inst3(
    .in0(inst3__in0),
    .in1(inst3__in1),
    .out(inst3__out)
  );

  assign inst1__I_0[31:0] = const_0_32__out[31:0];

  assign inst2__in1[7:0] = const_8_8__out[7:0];

  assign inst0__I_0[31:0] = I_0[31:0];

  assign inst0__I_1[31:0] = I_1[31:0];

  assign inst0__I_2[31:0] = I_2[31:0];

  assign inst0__I_3[31:0] = I_3[31:0];

  assign inst0__I_4[31:0] = I_4[31:0];

  assign inst0__I_5[31:0] = I_5[31:0];

  assign inst0__I_6[31:0] = I_6[31:0];

  assign inst0__I_7[31:0] = I_7[31:0];

  assign inst1__I_1[31:0] = inst0__O[31:0];

  assign inst0__S[0] = S[0];

  assign inst0__S[1] = S[1];

  assign inst0__S[2] = S[2];

  assign O[31:0] = inst1__O[31:0];

  assign inst1__S[0] = inst3__out;

  assign inst2__in0[7:0] = S[7:0];

  assign inst3__in0 = inst2__out;

  assign inst3__in1 = EN[0];


endmodule  // MuxWithDefaultWrapper_8_32_8_0

module PECore (
  input [0:0] bit0,
  input [0:0] bit1,
  input [0:0] bit2,
  input  clk,
  input [7:0] config_config_addr,
  input [31:0] config_config_data,
  input [0:0] config_read,
  input [0:0] config_write,
  input [15:0] data0,
  input [15:0] data1,
  input [15:0] data2,
  output [31:0] read_config_data,
  output [15:0] res,
  output [0:0] res_p,
  input  reset
);


  wire  bit_const_0_None__out;
  corebit_const #(.value(0)) bit_const_0_None(
    .out(bit_const_0_None__out)
  );

  wire  inst0__bit0;
  wire  inst0__bit1;
  wire  inst0__bit2;
  wire [7:0] inst0__cfg_a;
  wire [31:0] inst0__cfg_d;
  wire  inst0__cfg_en;
  wire  inst0__clk;
  wire  inst0__clk_en;
  wire [15:0] inst0__data0;
  wire [15:0] inst0__data1;
  wire [15:0] inst0__data2;
  wire  inst0__irq;
  wire [31:0] inst0__read_data;
  wire [15:0] inst0__res;
  wire  inst0__res_p;
  wire  inst0__rst_n;
  test_pe inst0(
    .bit0(inst0__bit0),
    .bit1(inst0__bit1),
    .bit2(inst0__bit2),
    .cfg_a(inst0__cfg_a),
    .cfg_d(inst0__cfg_d),
    .cfg_en(inst0__cfg_en),
    .clk(inst0__clk),
    .clk_en(inst0__clk_en),
    .data0(inst0__data0),
    .data1(inst0__data1),
    .data2(inst0__data2),
    .irq(inst0__irq),
    .read_data(inst0__read_data),
    .res(inst0__res),
    .res_p(inst0__res_p),
    .rst_n(inst0__rst_n)
  );

  assign inst0__clk_en = bit_const_0_None__out;

  assign inst0__bit0 = bit0[0];

  assign inst0__bit1 = bit1[0];

  assign inst0__bit2 = bit2[0];

  assign inst0__cfg_a[7:0] = config_config_addr[7:0];

  assign inst0__cfg_d[31:0] = config_config_data[31:0];

  assign inst0__cfg_en = config_write[0];

  assign inst0__clk = clk;

  assign inst0__data0[15:0] = data0[15:0];

  assign inst0__data1[15:0] = data1[15:0];

  assign inst0__data2[15:0] = data2[15:0];

  assign read_config_data[31:0] = inst0__read_data[31:0];

  assign res[15:0] = inst0__res[15:0];

  assign res_p[0] = inst0__res_p;

  assign inst0__rst_n = reset;


endmodule  // PECore

module Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 (
  input  ASYNCRESET,
  input  CE,
  input  CLK,
  input [1:0] I,
  output [1:0] O
);


  // Instancing generated Module: coreir.reg_arst(width:2)
  wire  inst0__arst;
  wire  inst0__clk;
  wire [1:0] inst0__in;
  wire [1:0] inst0__out;
  coreir_reg_arst #(.arst_posedge(1),.clk_posedge(1),.init(2'h0),.width(2)) inst0(
    .arst(inst0__arst),
    .clk(inst0__clk),
    .in(inst0__in),
    .out(inst0__out)
  );

  wire [1:0] inst1__I0;
  wire [1:0] inst1__I1;
  wire [1:0] inst1__O;
  wire  inst1__S;
  Mux2x2 inst1(
    .I0(inst1__I0),
    .I1(inst1__I1),
    .O(inst1__O),
    .S(inst1__S)
  );

  assign inst0__arst = ASYNCRESET;

  assign inst0__clk = CLK;

  assign inst0__in[1:0] = inst1__O[1:0];

  assign inst1__I0[1:0] = inst0__out[1:0];

  assign O[1:0] = inst0__out[1:0];

  assign inst1__I1[1:0] = I[1:0];

  assign inst1__S = CE;


endmodule  // Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2

module ConfigRegister_2_8_32_11 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_11_8__out;
  coreir_const #(.value(8'h0b),.width(8)) const_11_8(
    .out(const_11_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_11_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_11

module ConfigRegister_2_8_32_31 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_31_8__out;
  coreir_const #(.value(8'h1f),.width(8)) const_31_8(
    .out(const_31_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_31_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_31

module ConfigRegister_2_8_32_36 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_36_8__out;
  coreir_const #(.value(8'h24),.width(8)) const_36_8(
    .out(const_36_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_36_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_36

module ConfigRegister_2_8_32_8 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_8_8__out;
  coreir_const #(.value(8'h08),.width(8)) const_8_8(
    .out(const_8_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_8_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_8

module ConfigRegister_2_8_32_15 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_15_8__out;
  coreir_const #(.value(8'h0f),.width(8)) const_15_8(
    .out(const_15_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_15_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_15

module ConfigRegister_2_8_32_32 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_32_8__out;
  coreir_const #(.value(8'h20),.width(8)) const_32_8(
    .out(const_32_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_32_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_32

module ConfigRegister_2_8_32_0 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_0_8__out;
  coreir_const #(.value(8'h00),.width(8)) const_0_8(
    .out(const_0_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_0_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_0

module ConfigRegister_2_8_32_1 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_1_8__out;
  coreir_const #(.value(8'h01),.width(8)) const_1_8(
    .out(const_1_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_1_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_1

module ConfigRegister_2_8_32_10 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_10_8__out;
  coreir_const #(.value(8'h0a),.width(8)) const_10_8(
    .out(const_10_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_10_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_10

module ConfigRegister_2_8_32_17 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_17_8__out;
  coreir_const #(.value(8'h11),.width(8)) const_17_8(
    .out(const_17_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_17_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_17

module ConfigRegister_2_8_32_13 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_13_8__out;
  coreir_const #(.value(8'h0d),.width(8)) const_13_8(
    .out(const_13_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_13_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_13

module ConfigRegister_2_8_32_18 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_18_8__out;
  coreir_const #(.value(8'h12),.width(8)) const_18_8(
    .out(const_18_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_18_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_18

module ConfigRegister_2_8_32_19 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_19_8__out;
  coreir_const #(.value(8'h13),.width(8)) const_19_8(
    .out(const_19_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_19_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_19

module ConfigRegister_2_8_32_20 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_20_8__out;
  coreir_const #(.value(8'h14),.width(8)) const_20_8(
    .out(const_20_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_20_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_20

module ConfigRegister_2_8_32_22 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_22_8__out;
  coreir_const #(.value(8'h16),.width(8)) const_22_8(
    .out(const_22_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_22_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_22

module ConfigRegister_2_8_32_14 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_14_8__out;
  coreir_const #(.value(8'h0e),.width(8)) const_14_8(
    .out(const_14_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_14_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_14

module ConfigRegister_2_8_32_33 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_33_8__out;
  coreir_const #(.value(8'h21),.width(8)) const_33_8(
    .out(const_33_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_33_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_33

module ConfigRegister_2_8_32_16 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_16_8__out;
  coreir_const #(.value(8'h10),.width(8)) const_16_8(
    .out(const_16_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_16_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_16

module ConfigRegister_2_8_32_25 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_25_8__out;
  coreir_const #(.value(8'h19),.width(8)) const_25_8(
    .out(const_25_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_25_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_25

module ConfigRegister_2_8_32_12 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_12_8__out;
  coreir_const #(.value(8'h0c),.width(8)) const_12_8(
    .out(const_12_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_12_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_12

module ConfigRegister_2_8_32_6 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_6_8__out;
  coreir_const #(.value(8'h06),.width(8)) const_6_8(
    .out(const_6_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_6_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_6

module ConfigRegister_2_8_32_34 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_34_8__out;
  coreir_const #(.value(8'h22),.width(8)) const_34_8(
    .out(const_34_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_34_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_34

module ConfigRegister_2_8_32_29 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_29_8__out;
  coreir_const #(.value(8'h1d),.width(8)) const_29_8(
    .out(const_29_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_29_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_29

module ConfigRegister_2_8_32_5 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_5_8__out;
  coreir_const #(.value(8'h05),.width(8)) const_5_8(
    .out(const_5_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_5_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_5

module ConfigRegister_2_8_32_26 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_26_8__out;
  coreir_const #(.value(8'h1a),.width(8)) const_26_8(
    .out(const_26_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_26_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_26

module ConfigRegister_2_8_32_37 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_37_8__out;
  coreir_const #(.value(8'h25),.width(8)) const_37_8(
    .out(const_37_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_37_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_37

module ConfigRegister_2_8_32_2 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_2_8__out;
  coreir_const #(.value(8'h02),.width(8)) const_2_8(
    .out(const_2_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_2_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_2

module ConfigRegister_2_8_32_7 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_7_8__out;
  coreir_const #(.value(8'h07),.width(8)) const_7_8(
    .out(const_7_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_7_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_7

module ConfigRegister_2_8_32_39 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_39_8__out;
  coreir_const #(.value(8'h27),.width(8)) const_39_8(
    .out(const_39_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_39_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_39

module ConfigRegister_2_8_32_28 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_28_8__out;
  coreir_const #(.value(8'h1c),.width(8)) const_28_8(
    .out(const_28_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_28_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_28

module ConfigRegister_2_8_32_3 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_3_8__out;
  coreir_const #(.value(8'h03),.width(8)) const_3_8(
    .out(const_3_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_3_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_3

module ConfigRegister_2_8_32_27 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_27_8__out;
  coreir_const #(.value(8'h1b),.width(8)) const_27_8(
    .out(const_27_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_27_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_27

module ConfigRegister_2_8_32_24 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_24_8__out;
  coreir_const #(.value(8'h18),.width(8)) const_24_8(
    .out(const_24_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_24_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_24

module ConfigRegister_2_8_32_21 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_21_8__out;
  coreir_const #(.value(8'h15),.width(8)) const_21_8(
    .out(const_21_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_21_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_21

module ConfigRegister_2_8_32_9 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_9_8__out;
  coreir_const #(.value(8'h09),.width(8)) const_9_8(
    .out(const_9_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_9_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_9

module ConfigRegister_2_8_32_38 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_38_8__out;
  coreir_const #(.value(8'h26),.width(8)) const_38_8(
    .out(const_38_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_38_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_38

module ConfigRegister_2_8_32_30 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_30_8__out;
  coreir_const #(.value(8'h1e),.width(8)) const_30_8(
    .out(const_30_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_30_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_30

module ConfigRegister_2_8_32_35 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_35_8__out;
  coreir_const #(.value(8'h23),.width(8)) const_35_8(
    .out(const_35_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_35_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_35

module ConfigRegister_2_8_32_4 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_4_8__out;
  coreir_const #(.value(8'h04),.width(8)) const_4_8(
    .out(const_4_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_4_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_4

module ConfigRegister_2_8_32_23 (
  output [1:0] O,
  input  clk,
  input [7:0] config_addr,
  input [31:0] config_data,
  input  config_en,
  input  reset
);


  // Instancing generated Module: coreir.const(width:8)
  wire [7:0] const_23_8__out;
  coreir_const #(.value(8'h17),.width(8)) const_23_8(
    .out(const_23_8__out)
  );

  wire  inst0__ASYNCRESET;
  wire  inst0__CE;
  wire  inst0__CLK;
  wire [1:0] inst0__I;
  wire [1:0] inst0__O;
  Register__has_ce_True__has_reset_False__has_async_reset__True__type_Bits__n_2 inst0(
    .ASYNCRESET(inst0__ASYNCRESET),
    .CE(inst0__CE),
    .CLK(inst0__CLK),
    .I(inst0__I),
    .O(inst0__O)
  );

  // Instancing generated Module: coreir.eq(width:8)
  wire [7:0] inst1__in0;
  wire [7:0] inst1__in1;
  wire  inst1__out;
  coreir_eq #(.width(8)) inst1(
    .in0(inst1__in0),
    .in1(inst1__in1),
    .out(inst1__out)
  );

  wire  inst2__in0;
  wire  inst2__in1;
  wire  inst2__out;
  corebit_and inst2(
    .in0(inst2__in0),
    .in1(inst2__in1),
    .out(inst2__out)
  );

  assign inst1__in1[7:0] = const_23_8__out[7:0];

  assign inst0__ASYNCRESET = reset;

  assign inst0__CE = inst2__out;

  assign inst0__CLK = clk;

  assign inst0__I[0] = config_data[0];

  assign inst0__I[1] = config_data[1];

  assign O[1:0] = inst0__O[1:0];

  assign inst1__in0[7:0] = config_addr[7:0];

  assign inst2__in0 = inst1__out;

  assign inst2__in1 = config_en;


endmodule  // ConfigRegister_2_8_32_23

module ZextWrapper_2_32 (
  input [1:0] I,
  output [31:0] O
);


  wire  bit_const_0_None__out;
  corebit_const #(.value(0)) bit_const_0_None(
    .out(bit_const_0_None__out)
  );

  assign O[10] = bit_const_0_None__out;

  assign O[11] = bit_const_0_None__out;

  assign O[12] = bit_const_0_None__out;

  assign O[13] = bit_const_0_None__out;

  assign O[14] = bit_const_0_None__out;

  assign O[15] = bit_const_0_None__out;

  assign O[16] = bit_const_0_None__out;

  assign O[17] = bit_const_0_None__out;

  assign O[18] = bit_const_0_None__out;

  assign O[19] = bit_const_0_None__out;

  assign O[20] = bit_const_0_None__out;

  assign O[21] = bit_const_0_None__out;

  assign O[22] = bit_const_0_None__out;

  assign O[23] = bit_const_0_None__out;

  assign O[24] = bit_const_0_None__out;

  assign O[25] = bit_const_0_None__out;

  assign O[26] = bit_const_0_None__out;

  assign O[27] = bit_const_0_None__out;

  assign O[28] = bit_const_0_None__out;

  assign O[29] = bit_const_0_None__out;

  assign O[2] = bit_const_0_None__out;

  assign O[30] = bit_const_0_None__out;

  assign O[31] = bit_const_0_None__out;

  assign O[3] = bit_const_0_None__out;

  assign O[4] = bit_const_0_None__out;

  assign O[5] = bit_const_0_None__out;

  assign O[6] = bit_const_0_None__out;

  assign O[7] = bit_const_0_None__out;

  assign O[8] = bit_const_0_None__out;

  assign O[9] = bit_const_0_None__out;

  assign O[0] = I[0];

  assign O[1] = I[1];


endmodule  // ZextWrapper_2_32

module SB_Out_Bits_16___Out_Bits_1__ (
  input  clk,
  input [7:0] config_config_addr,
  input [31:0] config_config_data,
  input [0:0] config_read,
  input [0:0] config_write,
  input [15:0] east_I_layer16_0,
  input [15:0] east_I_layer16_1,
  input [15:0] east_I_layer16_2,
  input [15:0] east_I_layer16_3,
  input [15:0] east_I_layer16_4,
  input [0:0] east_I_layer1_0,
  input [0:0] east_I_layer1_1,
  input [0:0] east_I_layer1_2,
  input [0:0] east_I_layer1_3,
  input [0:0] east_I_layer1_4,
  output [15:0] east_O_layer16_0,
  output [15:0] east_O_layer16_1,
  output [15:0] east_O_layer16_2,
  output [15:0] east_O_layer16_3,
  output [15:0] east_O_layer16_4,
  output [0:0] east_O_layer1_0,
  output [0:0] east_O_layer1_1,
  output [0:0] east_O_layer1_2,
  output [0:0] east_O_layer1_3,
  output [0:0] east_O_layer1_4,
  input [15:0] north_I_layer16_0,
  input [15:0] north_I_layer16_1,
  input [15:0] north_I_layer16_2,
  input [15:0] north_I_layer16_3,
  input [15:0] north_I_layer16_4,
  input [0:0] north_I_layer1_0,
  input [0:0] north_I_layer1_1,
  input [0:0] north_I_layer1_2,
  input [0:0] north_I_layer1_3,
  input [0:0] north_I_layer1_4,
  output [15:0] north_O_layer16_0,
  output [15:0] north_O_layer16_1,
  output [15:0] north_O_layer16_2,
  output [15:0] north_O_layer16_3,
  output [15:0] north_O_layer16_4,
  output [0:0] north_O_layer1_0,
  output [0:0] north_O_layer1_1,
  output [0:0] north_O_layer1_2,
  output [0:0] north_O_layer1_3,
  output [0:0] north_O_layer1_4,
  output [31:0] read_config_data,
  input [15:0] res,
  input [0:0] res_p,
  input  reset,
  input [15:0] south_I_layer16_0,
  input [15:0] south_I_layer16_1,
  input [15:0] south_I_layer16_2,
  input [15:0] south_I_layer16_3,
  input [15:0] south_I_layer16_4,
  input [0:0] south_I_layer1_0,
  input [0:0] south_I_layer1_1,
  input [0:0] south_I_layer1_2,
  input [0:0] south_I_layer1_3,
  input [0:0] south_I_layer1_4,
  output [15:0] south_O_layer16_0,
  output [15:0] south_O_layer16_1,
  output [15:0] south_O_layer16_2,
  output [15:0] south_O_layer16_3,
  output [15:0] south_O_layer16_4,
  output [0:0] south_O_layer1_0,
  output [0:0] south_O_layer1_1,
  output [0:0] south_O_layer1_2,
  output [0:0] south_O_layer1_3,
  output [0:0] south_O_layer1_4,
  input [15:0] west_I_layer16_0,
  input [15:0] west_I_layer16_1,
  input [15:0] west_I_layer16_2,
  input [15:0] west_I_layer16_3,
  input [15:0] west_I_layer16_4,
  input [0:0] west_I_layer1_0,
  input [0:0] west_I_layer1_1,
  input [0:0] west_I_layer1_2,
  input [0:0] west_I_layer1_3,
  input [0:0] west_I_layer1_4,
  output [15:0] west_O_layer16_0,
  output [15:0] west_O_layer16_1,
  output [15:0] west_O_layer16_2,
  output [15:0] west_O_layer16_3,
  output [15:0] west_O_layer16_4,
  output [0:0] west_O_layer1_0,
  output [0:0] west_O_layer1_1,
  output [0:0] west_O_layer1_2,
  output [0:0] west_O_layer1_3,
  output [0:0] west_O_layer1_4
);


  wire [0:0] inst0__I_0;
  wire [0:0] inst0__I_1;
  wire [0:0] inst0__I_2;
  wire [0:0] inst0__I_3;
  wire [0:0] inst0__O;
  wire [1:0] inst0__S;
  MuxWrapper_4_1 inst0(
    .I_0(inst0__I_0),
    .I_1(inst0__I_1),
    .I_2(inst0__I_2),
    .I_3(inst0__I_3),
    .O(inst0__O),
    .S(inst0__S)
  );

  wire [1:0] inst1__O;
  wire  inst1__clk;
  wire [7:0] inst1__config_addr;
  wire [31:0] inst1__config_data;
  wire  inst1__config_en;
  wire  inst1__reset;
  ConfigRegister_2_8_32_0 inst1(
    .O(inst1__O),
    .clk(inst1__clk),
    .config_addr(inst1__config_addr),
    .config_data(inst1__config_data),
    .config_en(inst1__config_en),
    .reset(inst1__reset)
  );

  wire [15:0] inst10__I_0;
  wire [15:0] inst10__I_1;
  wire [15:0] inst10__I_2;
  wire [15:0] inst10__I_3;
  wire [15:0] inst10__O;
  wire [1:0] inst10__S;
  MuxWrapper_4_16 inst10(
    .I_0(inst10__I_0),
    .I_1(inst10__I_1),
    .I_2(inst10__I_2),
    .I_3(inst10__I_3),
    .O(inst10__O),
    .S(inst10__S)
  );

  wire [1:0] inst100__I;
  wire [31:0] inst100__O;
  ZextWrapper_2_32 inst100(
    .I(inst100__I),
    .O(inst100__O)
  );

  wire [1:0] inst101__I;
  wire [31:0] inst101__O;
  ZextWrapper_2_32 inst101(
    .I(inst101__I),
    .O(inst101__O)
  );

  wire [1:0] inst102__I;
  wire [31:0] inst102__O;
  ZextWrapper_2_32 inst102(
    .I(inst102__I),
    .O(inst102__O)
  );

  wire [1:0] inst103__I;
  wire [31:0] inst103__O;
  ZextWrapper_2_32 inst103(
    .I(inst103__I),
    .O(inst103__O)
  );

  wire [1:0] inst104__I;
  wire [31:0] inst104__O;
  ZextWrapper_2_32 inst104(
    .I(inst104__I),
    .O(inst104__O)
  );

  wire [1:0] inst105__I;
  wire [31:0] inst105__O;
  ZextWrapper_2_32 inst105(
    .I(inst105__I),
    .O(inst105__O)
  );

  wire [1:0] inst106__I;
  wire [31:0] inst106__O;
  ZextWrapper_2_32 inst106(
    .I(inst106__I),
    .O(inst106__O)
  );

  wire [1:0] inst107__I;
  wire [31:0] inst107__O;
  ZextWrapper_2_32 inst107(
    .I(inst107__I),
    .O(inst107__O)
  );

  wire [1:0] inst108__I;
  wire [31:0] inst108__O;
  ZextWrapper_2_32 inst108(
    .I(inst108__I),
    .O(inst108__O)
  );

  wire [1:0] inst109__I;
  wire [31:0] inst109__O;
  ZextWrapper_2_32 inst109(
    .I(inst109__I),
    .O(inst109__O)
  );

  wire [1:0] inst11__O;
  wire  inst11__clk;
  wire [7:0] inst11__config_addr;
  wire [31:0] inst11__config_data;
  wire  inst11__config_en;
  wire  inst11__reset;
  ConfigRegister_2_8_32_5 inst11(
    .O(inst11__O),
    .clk(inst11__clk),
    .config_addr(inst11__config_addr),
    .config_data(inst11__config_data),
    .config_en(inst11__config_en),
    .reset(inst11__reset)
  );

  wire [1:0] inst110__I;
  wire [31:0] inst110__O;
  ZextWrapper_2_32 inst110(
    .I(inst110__I),
    .O(inst110__O)
  );

  wire [1:0] inst111__I;
  wire [31:0] inst111__O;
  ZextWrapper_2_32 inst111(
    .I(inst111__I),
    .O(inst111__O)
  );

  wire [1:0] inst112__I;
  wire [31:0] inst112__O;
  ZextWrapper_2_32 inst112(
    .I(inst112__I),
    .O(inst112__O)
  );

  wire [1:0] inst113__I;
  wire [31:0] inst113__O;
  ZextWrapper_2_32 inst113(
    .I(inst113__I),
    .O(inst113__O)
  );

  wire [1:0] inst114__I;
  wire [31:0] inst114__O;
  ZextWrapper_2_32 inst114(
    .I(inst114__I),
    .O(inst114__O)
  );

  wire [1:0] inst115__I;
  wire [31:0] inst115__O;
  ZextWrapper_2_32 inst115(
    .I(inst115__I),
    .O(inst115__O)
  );

  wire [1:0] inst116__I;
  wire [31:0] inst116__O;
  ZextWrapper_2_32 inst116(
    .I(inst116__I),
    .O(inst116__O)
  );

  wire [1:0] inst117__I;
  wire [31:0] inst117__O;
  ZextWrapper_2_32 inst117(
    .I(inst117__I),
    .O(inst117__O)
  );

  wire [1:0] inst118__I;
  wire [31:0] inst118__O;
  ZextWrapper_2_32 inst118(
    .I(inst118__I),
    .O(inst118__O)
  );

  wire [1:0] inst119__I;
  wire [31:0] inst119__O;
  ZextWrapper_2_32 inst119(
    .I(inst119__I),
    .O(inst119__O)
  );

  wire [15:0] inst12__I_0;
  wire [15:0] inst12__I_1;
  wire [15:0] inst12__I_2;
  wire [15:0] inst12__I_3;
  wire [15:0] inst12__O;
  wire [1:0] inst12__S;
  MuxWrapper_4_16 inst12(
    .I_0(inst12__I_0),
    .I_1(inst12__I_1),
    .I_2(inst12__I_2),
    .I_3(inst12__I_3),
    .O(inst12__O),
    .S(inst12__S)
  );

  wire [1:0] inst120__I;
  wire [31:0] inst120__O;
  ZextWrapper_2_32 inst120(
    .I(inst120__I),
    .O(inst120__O)
  );

  wire [1:0] inst13__O;
  wire  inst13__clk;
  wire [7:0] inst13__config_addr;
  wire [31:0] inst13__config_data;
  wire  inst13__config_en;
  wire  inst13__reset;
  ConfigRegister_2_8_32_6 inst13(
    .O(inst13__O),
    .clk(inst13__clk),
    .config_addr(inst13__config_addr),
    .config_data(inst13__config_data),
    .config_en(inst13__config_en),
    .reset(inst13__reset)
  );

  wire [15:0] inst14__I_0;
  wire [15:0] inst14__I_1;
  wire [15:0] inst14__I_2;
  wire [15:0] inst14__I_3;
  wire [15:0] inst14__O;
  wire [1:0] inst14__S;
  MuxWrapper_4_16 inst14(
    .I_0(inst14__I_0),
    .I_1(inst14__I_1),
    .I_2(inst14__I_2),
    .I_3(inst14__I_3),
    .O(inst14__O),
    .S(inst14__S)
  );

  wire [1:0] inst15__O;
  wire  inst15__clk;
  wire [7:0] inst15__config_addr;
  wire [31:0] inst15__config_data;
  wire  inst15__config_en;
  wire  inst15__reset;
  ConfigRegister_2_8_32_7 inst15(
    .O(inst15__O),
    .clk(inst15__clk),
    .config_addr(inst15__config_addr),
    .config_data(inst15__config_data),
    .config_en(inst15__config_en),
    .reset(inst15__reset)
  );

  wire [15:0] inst16__I_0;
  wire [15:0] inst16__I_1;
  wire [15:0] inst16__I_2;
  wire [15:0] inst16__I_3;
  wire [15:0] inst16__O;
  wire [1:0] inst16__S;
  MuxWrapper_4_16 inst16(
    .I_0(inst16__I_0),
    .I_1(inst16__I_1),
    .I_2(inst16__I_2),
    .I_3(inst16__I_3),
    .O(inst16__O),
    .S(inst16__S)
  );

  wire [1:0] inst17__O;
  wire  inst17__clk;
  wire [7:0] inst17__config_addr;
  wire [31:0] inst17__config_data;
  wire  inst17__config_en;
  wire  inst17__reset;
  ConfigRegister_2_8_32_8 inst17(
    .O(inst17__O),
    .clk(inst17__clk),
    .config_addr(inst17__config_addr),
    .config_data(inst17__config_data),
    .config_en(inst17__config_en),
    .reset(inst17__reset)
  );

  wire [15:0] inst18__I_0;
  wire [15:0] inst18__I_1;
  wire [15:0] inst18__I_2;
  wire [15:0] inst18__I_3;
  wire [15:0] inst18__O;
  wire [1:0] inst18__S;
  MuxWrapper_4_16 inst18(
    .I_0(inst18__I_0),
    .I_1(inst18__I_1),
    .I_2(inst18__I_2),
    .I_3(inst18__I_3),
    .O(inst18__O),
    .S(inst18__S)
  );

  wire [1:0] inst19__O;
  wire  inst19__clk;
  wire [7:0] inst19__config_addr;
  wire [31:0] inst19__config_data;
  wire  inst19__config_en;
  wire  inst19__reset;
  ConfigRegister_2_8_32_9 inst19(
    .O(inst19__O),
    .clk(inst19__clk),
    .config_addr(inst19__config_addr),
    .config_data(inst19__config_data),
    .config_en(inst19__config_en),
    .reset(inst19__reset)
  );

  wire [0:0] inst2__I_0;
  wire [0:0] inst2__I_1;
  wire [0:0] inst2__I_2;
  wire [0:0] inst2__I_3;
  wire [0:0] inst2__O;
  wire [1:0] inst2__S;
  MuxWrapper_4_1 inst2(
    .I_0(inst2__I_0),
    .I_1(inst2__I_1),
    .I_2(inst2__I_2),
    .I_3(inst2__I_3),
    .O(inst2__O),
    .S(inst2__S)
  );

  wire [0:0] inst20__I_0;
  wire [0:0] inst20__I_1;
  wire [0:0] inst20__I_2;
  wire [0:0] inst20__I_3;
  wire [0:0] inst20__O;
  wire [1:0] inst20__S;
  MuxWrapper_4_1 inst20(
    .I_0(inst20__I_0),
    .I_1(inst20__I_1),
    .I_2(inst20__I_2),
    .I_3(inst20__I_3),
    .O(inst20__O),
    .S(inst20__S)
  );

  wire [1:0] inst21__O;
  wire  inst21__clk;
  wire [7:0] inst21__config_addr;
  wire [31:0] inst21__config_data;
  wire  inst21__config_en;
  wire  inst21__reset;
  ConfigRegister_2_8_32_10 inst21(
    .O(inst21__O),
    .clk(inst21__clk),
    .config_addr(inst21__config_addr),
    .config_data(inst21__config_data),
    .config_en(inst21__config_en),
    .reset(inst21__reset)
  );

  wire [0:0] inst22__I_0;
  wire [0:0] inst22__I_1;
  wire [0:0] inst22__I_2;
  wire [0:0] inst22__I_3;
  wire [0:0] inst22__O;
  wire [1:0] inst22__S;
  MuxWrapper_4_1 inst22(
    .I_0(inst22__I_0),
    .I_1(inst22__I_1),
    .I_2(inst22__I_2),
    .I_3(inst22__I_3),
    .O(inst22__O),
    .S(inst22__S)
  );

  wire [1:0] inst23__O;
  wire  inst23__clk;
  wire [7:0] inst23__config_addr;
  wire [31:0] inst23__config_data;
  wire  inst23__config_en;
  wire  inst23__reset;
  ConfigRegister_2_8_32_11 inst23(
    .O(inst23__O),
    .clk(inst23__clk),
    .config_addr(inst23__config_addr),
    .config_data(inst23__config_data),
    .config_en(inst23__config_en),
    .reset(inst23__reset)
  );

  wire [0:0] inst24__I_0;
  wire [0:0] inst24__I_1;
  wire [0:0] inst24__I_2;
  wire [0:0] inst24__I_3;
  wire [0:0] inst24__O;
  wire [1:0] inst24__S;
  MuxWrapper_4_1 inst24(
    .I_0(inst24__I_0),
    .I_1(inst24__I_1),
    .I_2(inst24__I_2),
    .I_3(inst24__I_3),
    .O(inst24__O),
    .S(inst24__S)
  );

  wire [1:0] inst25__O;
  wire  inst25__clk;
  wire [7:0] inst25__config_addr;
  wire [31:0] inst25__config_data;
  wire  inst25__config_en;
  wire  inst25__reset;
  ConfigRegister_2_8_32_12 inst25(
    .O(inst25__O),
    .clk(inst25__clk),
    .config_addr(inst25__config_addr),
    .config_data(inst25__config_data),
    .config_en(inst25__config_en),
    .reset(inst25__reset)
  );

  wire [0:0] inst26__I_0;
  wire [0:0] inst26__I_1;
  wire [0:0] inst26__I_2;
  wire [0:0] inst26__I_3;
  wire [0:0] inst26__O;
  wire [1:0] inst26__S;
  MuxWrapper_4_1 inst26(
    .I_0(inst26__I_0),
    .I_1(inst26__I_1),
    .I_2(inst26__I_2),
    .I_3(inst26__I_3),
    .O(inst26__O),
    .S(inst26__S)
  );

  wire [1:0] inst27__O;
  wire  inst27__clk;
  wire [7:0] inst27__config_addr;
  wire [31:0] inst27__config_data;
  wire  inst27__config_en;
  wire  inst27__reset;
  ConfigRegister_2_8_32_13 inst27(
    .O(inst27__O),
    .clk(inst27__clk),
    .config_addr(inst27__config_addr),
    .config_data(inst27__config_data),
    .config_en(inst27__config_en),
    .reset(inst27__reset)
  );

  wire [0:0] inst28__I_0;
  wire [0:0] inst28__I_1;
  wire [0:0] inst28__I_2;
  wire [0:0] inst28__I_3;
  wire [0:0] inst28__O;
  wire [1:0] inst28__S;
  MuxWrapper_4_1 inst28(
    .I_0(inst28__I_0),
    .I_1(inst28__I_1),
    .I_2(inst28__I_2),
    .I_3(inst28__I_3),
    .O(inst28__O),
    .S(inst28__S)
  );

  wire [1:0] inst29__O;
  wire  inst29__clk;
  wire [7:0] inst29__config_addr;
  wire [31:0] inst29__config_data;
  wire  inst29__config_en;
  wire  inst29__reset;
  ConfigRegister_2_8_32_14 inst29(
    .O(inst29__O),
    .clk(inst29__clk),
    .config_addr(inst29__config_addr),
    .config_data(inst29__config_data),
    .config_en(inst29__config_en),
    .reset(inst29__reset)
  );

  wire [1:0] inst3__O;
  wire  inst3__clk;
  wire [7:0] inst3__config_addr;
  wire [31:0] inst3__config_data;
  wire  inst3__config_en;
  wire  inst3__reset;
  ConfigRegister_2_8_32_1 inst3(
    .O(inst3__O),
    .clk(inst3__clk),
    .config_addr(inst3__config_addr),
    .config_data(inst3__config_data),
    .config_en(inst3__config_en),
    .reset(inst3__reset)
  );

  wire [15:0] inst30__I_0;
  wire [15:0] inst30__I_1;
  wire [15:0] inst30__I_2;
  wire [15:0] inst30__I_3;
  wire [15:0] inst30__O;
  wire [1:0] inst30__S;
  MuxWrapper_4_16 inst30(
    .I_0(inst30__I_0),
    .I_1(inst30__I_1),
    .I_2(inst30__I_2),
    .I_3(inst30__I_3),
    .O(inst30__O),
    .S(inst30__S)
  );

  wire [1:0] inst31__O;
  wire  inst31__clk;
  wire [7:0] inst31__config_addr;
  wire [31:0] inst31__config_data;
  wire  inst31__config_en;
  wire  inst31__reset;
  ConfigRegister_2_8_32_15 inst31(
    .O(inst31__O),
    .clk(inst31__clk),
    .config_addr(inst31__config_addr),
    .config_data(inst31__config_data),
    .config_en(inst31__config_en),
    .reset(inst31__reset)
  );

  wire [15:0] inst32__I_0;
  wire [15:0] inst32__I_1;
  wire [15:0] inst32__I_2;
  wire [15:0] inst32__I_3;
  wire [15:0] inst32__O;
  wire [1:0] inst32__S;
  MuxWrapper_4_16 inst32(
    .I_0(inst32__I_0),
    .I_1(inst32__I_1),
    .I_2(inst32__I_2),
    .I_3(inst32__I_3),
    .O(inst32__O),
    .S(inst32__S)
  );

  wire [1:0] inst33__O;
  wire  inst33__clk;
  wire [7:0] inst33__config_addr;
  wire [31:0] inst33__config_data;
  wire  inst33__config_en;
  wire  inst33__reset;
  ConfigRegister_2_8_32_16 inst33(
    .O(inst33__O),
    .clk(inst33__clk),
    .config_addr(inst33__config_addr),
    .config_data(inst33__config_data),
    .config_en(inst33__config_en),
    .reset(inst33__reset)
  );

  wire [15:0] inst34__I_0;
  wire [15:0] inst34__I_1;
  wire [15:0] inst34__I_2;
  wire [15:0] inst34__I_3;
  wire [15:0] inst34__O;
  wire [1:0] inst34__S;
  MuxWrapper_4_16 inst34(
    .I_0(inst34__I_0),
    .I_1(inst34__I_1),
    .I_2(inst34__I_2),
    .I_3(inst34__I_3),
    .O(inst34__O),
    .S(inst34__S)
  );

  wire [1:0] inst35__O;
  wire  inst35__clk;
  wire [7:0] inst35__config_addr;
  wire [31:0] inst35__config_data;
  wire  inst35__config_en;
  wire  inst35__reset;
  ConfigRegister_2_8_32_17 inst35(
    .O(inst35__O),
    .clk(inst35__clk),
    .config_addr(inst35__config_addr),
    .config_data(inst35__config_data),
    .config_en(inst35__config_en),
    .reset(inst35__reset)
  );

  wire [15:0] inst36__I_0;
  wire [15:0] inst36__I_1;
  wire [15:0] inst36__I_2;
  wire [15:0] inst36__I_3;
  wire [15:0] inst36__O;
  wire [1:0] inst36__S;
  MuxWrapper_4_16 inst36(
    .I_0(inst36__I_0),
    .I_1(inst36__I_1),
    .I_2(inst36__I_2),
    .I_3(inst36__I_3),
    .O(inst36__O),
    .S(inst36__S)
  );

  wire [1:0] inst37__O;
  wire  inst37__clk;
  wire [7:0] inst37__config_addr;
  wire [31:0] inst37__config_data;
  wire  inst37__config_en;
  wire  inst37__reset;
  ConfigRegister_2_8_32_18 inst37(
    .O(inst37__O),
    .clk(inst37__clk),
    .config_addr(inst37__config_addr),
    .config_data(inst37__config_data),
    .config_en(inst37__config_en),
    .reset(inst37__reset)
  );

  wire [15:0] inst38__I_0;
  wire [15:0] inst38__I_1;
  wire [15:0] inst38__I_2;
  wire [15:0] inst38__I_3;
  wire [15:0] inst38__O;
  wire [1:0] inst38__S;
  MuxWrapper_4_16 inst38(
    .I_0(inst38__I_0),
    .I_1(inst38__I_1),
    .I_2(inst38__I_2),
    .I_3(inst38__I_3),
    .O(inst38__O),
    .S(inst38__S)
  );

  wire [1:0] inst39__O;
  wire  inst39__clk;
  wire [7:0] inst39__config_addr;
  wire [31:0] inst39__config_data;
  wire  inst39__config_en;
  wire  inst39__reset;
  ConfigRegister_2_8_32_19 inst39(
    .O(inst39__O),
    .clk(inst39__clk),
    .config_addr(inst39__config_addr),
    .config_data(inst39__config_data),
    .config_en(inst39__config_en),
    .reset(inst39__reset)
  );

  wire [0:0] inst4__I_0;
  wire [0:0] inst4__I_1;
  wire [0:0] inst4__I_2;
  wire [0:0] inst4__I_3;
  wire [0:0] inst4__O;
  wire [1:0] inst4__S;
  MuxWrapper_4_1 inst4(
    .I_0(inst4__I_0),
    .I_1(inst4__I_1),
    .I_2(inst4__I_2),
    .I_3(inst4__I_3),
    .O(inst4__O),
    .S(inst4__S)
  );

  wire [0:0] inst40__I_0;
  wire [0:0] inst40__I_1;
  wire [0:0] inst40__I_2;
  wire [0:0] inst40__I_3;
  wire [0:0] inst40__O;
  wire [1:0] inst40__S;
  MuxWrapper_4_1 inst40(
    .I_0(inst40__I_0),
    .I_1(inst40__I_1),
    .I_2(inst40__I_2),
    .I_3(inst40__I_3),
    .O(inst40__O),
    .S(inst40__S)
  );

  wire [1:0] inst41__O;
  wire  inst41__clk;
  wire [7:0] inst41__config_addr;
  wire [31:0] inst41__config_data;
  wire  inst41__config_en;
  wire  inst41__reset;
  ConfigRegister_2_8_32_20 inst41(
    .O(inst41__O),
    .clk(inst41__clk),
    .config_addr(inst41__config_addr),
    .config_data(inst41__config_data),
    .config_en(inst41__config_en),
    .reset(inst41__reset)
  );

  wire [0:0] inst42__I_0;
  wire [0:0] inst42__I_1;
  wire [0:0] inst42__I_2;
  wire [0:0] inst42__I_3;
  wire [0:0] inst42__O;
  wire [1:0] inst42__S;
  MuxWrapper_4_1 inst42(
    .I_0(inst42__I_0),
    .I_1(inst42__I_1),
    .I_2(inst42__I_2),
    .I_3(inst42__I_3),
    .O(inst42__O),
    .S(inst42__S)
  );

  wire [1:0] inst43__O;
  wire  inst43__clk;
  wire [7:0] inst43__config_addr;
  wire [31:0] inst43__config_data;
  wire  inst43__config_en;
  wire  inst43__reset;
  ConfigRegister_2_8_32_21 inst43(
    .O(inst43__O),
    .clk(inst43__clk),
    .config_addr(inst43__config_addr),
    .config_data(inst43__config_data),
    .config_en(inst43__config_en),
    .reset(inst43__reset)
  );

  wire [0:0] inst44__I_0;
  wire [0:0] inst44__I_1;
  wire [0:0] inst44__I_2;
  wire [0:0] inst44__I_3;
  wire [0:0] inst44__O;
  wire [1:0] inst44__S;
  MuxWrapper_4_1 inst44(
    .I_0(inst44__I_0),
    .I_1(inst44__I_1),
    .I_2(inst44__I_2),
    .I_3(inst44__I_3),
    .O(inst44__O),
    .S(inst44__S)
  );

  wire [1:0] inst45__O;
  wire  inst45__clk;
  wire [7:0] inst45__config_addr;
  wire [31:0] inst45__config_data;
  wire  inst45__config_en;
  wire  inst45__reset;
  ConfigRegister_2_8_32_22 inst45(
    .O(inst45__O),
    .clk(inst45__clk),
    .config_addr(inst45__config_addr),
    .config_data(inst45__config_data),
    .config_en(inst45__config_en),
    .reset(inst45__reset)
  );

  wire [0:0] inst46__I_0;
  wire [0:0] inst46__I_1;
  wire [0:0] inst46__I_2;
  wire [0:0] inst46__I_3;
  wire [0:0] inst46__O;
  wire [1:0] inst46__S;
  MuxWrapper_4_1 inst46(
    .I_0(inst46__I_0),
    .I_1(inst46__I_1),
    .I_2(inst46__I_2),
    .I_3(inst46__I_3),
    .O(inst46__O),
    .S(inst46__S)
  );

  wire [1:0] inst47__O;
  wire  inst47__clk;
  wire [7:0] inst47__config_addr;
  wire [31:0] inst47__config_data;
  wire  inst47__config_en;
  wire  inst47__reset;
  ConfigRegister_2_8_32_23 inst47(
    .O(inst47__O),
    .clk(inst47__clk),
    .config_addr(inst47__config_addr),
    .config_data(inst47__config_data),
    .config_en(inst47__config_en),
    .reset(inst47__reset)
  );

  wire [0:0] inst48__I_0;
  wire [0:0] inst48__I_1;
  wire [0:0] inst48__I_2;
  wire [0:0] inst48__I_3;
  wire [0:0] inst48__O;
  wire [1:0] inst48__S;
  MuxWrapper_4_1 inst48(
    .I_0(inst48__I_0),
    .I_1(inst48__I_1),
    .I_2(inst48__I_2),
    .I_3(inst48__I_3),
    .O(inst48__O),
    .S(inst48__S)
  );

  wire [1:0] inst49__O;
  wire  inst49__clk;
  wire [7:0] inst49__config_addr;
  wire [31:0] inst49__config_data;
  wire  inst49__config_en;
  wire  inst49__reset;
  ConfigRegister_2_8_32_24 inst49(
    .O(inst49__O),
    .clk(inst49__clk),
    .config_addr(inst49__config_addr),
    .config_data(inst49__config_data),
    .config_en(inst49__config_en),
    .reset(inst49__reset)
  );

  wire [1:0] inst5__O;
  wire  inst5__clk;
  wire [7:0] inst5__config_addr;
  wire [31:0] inst5__config_data;
  wire  inst5__config_en;
  wire  inst5__reset;
  ConfigRegister_2_8_32_2 inst5(
    .O(inst5__O),
    .clk(inst5__clk),
    .config_addr(inst5__config_addr),
    .config_data(inst5__config_data),
    .config_en(inst5__config_en),
    .reset(inst5__reset)
  );

  wire [15:0] inst50__I_0;
  wire [15:0] inst50__I_1;
  wire [15:0] inst50__I_2;
  wire [15:0] inst50__I_3;
  wire [15:0] inst50__O;
  wire [1:0] inst50__S;
  MuxWrapper_4_16 inst50(
    .I_0(inst50__I_0),
    .I_1(inst50__I_1),
    .I_2(inst50__I_2),
    .I_3(inst50__I_3),
    .O(inst50__O),
    .S(inst50__S)
  );

  wire [1:0] inst51__O;
  wire  inst51__clk;
  wire [7:0] inst51__config_addr;
  wire [31:0] inst51__config_data;
  wire  inst51__config_en;
  wire  inst51__reset;
  ConfigRegister_2_8_32_25 inst51(
    .O(inst51__O),
    .clk(inst51__clk),
    .config_addr(inst51__config_addr),
    .config_data(inst51__config_data),
    .config_en(inst51__config_en),
    .reset(inst51__reset)
  );

  wire [15:0] inst52__I_0;
  wire [15:0] inst52__I_1;
  wire [15:0] inst52__I_2;
  wire [15:0] inst52__I_3;
  wire [15:0] inst52__O;
  wire [1:0] inst52__S;
  MuxWrapper_4_16 inst52(
    .I_0(inst52__I_0),
    .I_1(inst52__I_1),
    .I_2(inst52__I_2),
    .I_3(inst52__I_3),
    .O(inst52__O),
    .S(inst52__S)
  );

  wire [1:0] inst53__O;
  wire  inst53__clk;
  wire [7:0] inst53__config_addr;
  wire [31:0] inst53__config_data;
  wire  inst53__config_en;
  wire  inst53__reset;
  ConfigRegister_2_8_32_26 inst53(
    .O(inst53__O),
    .clk(inst53__clk),
    .config_addr(inst53__config_addr),
    .config_data(inst53__config_data),
    .config_en(inst53__config_en),
    .reset(inst53__reset)
  );

  wire [15:0] inst54__I_0;
  wire [15:0] inst54__I_1;
  wire [15:0] inst54__I_2;
  wire [15:0] inst54__I_3;
  wire [15:0] inst54__O;
  wire [1:0] inst54__S;
  MuxWrapper_4_16 inst54(
    .I_0(inst54__I_0),
    .I_1(inst54__I_1),
    .I_2(inst54__I_2),
    .I_3(inst54__I_3),
    .O(inst54__O),
    .S(inst54__S)
  );

  wire [1:0] inst55__O;
  wire  inst55__clk;
  wire [7:0] inst55__config_addr;
  wire [31:0] inst55__config_data;
  wire  inst55__config_en;
  wire  inst55__reset;
  ConfigRegister_2_8_32_27 inst55(
    .O(inst55__O),
    .clk(inst55__clk),
    .config_addr(inst55__config_addr),
    .config_data(inst55__config_data),
    .config_en(inst55__config_en),
    .reset(inst55__reset)
  );

  wire [15:0] inst56__I_0;
  wire [15:0] inst56__I_1;
  wire [15:0] inst56__I_2;
  wire [15:0] inst56__I_3;
  wire [15:0] inst56__O;
  wire [1:0] inst56__S;
  MuxWrapper_4_16 inst56(
    .I_0(inst56__I_0),
    .I_1(inst56__I_1),
    .I_2(inst56__I_2),
    .I_3(inst56__I_3),
    .O(inst56__O),
    .S(inst56__S)
  );

  wire [1:0] inst57__O;
  wire  inst57__clk;
  wire [7:0] inst57__config_addr;
  wire [31:0] inst57__config_data;
  wire  inst57__config_en;
  wire  inst57__reset;
  ConfigRegister_2_8_32_28 inst57(
    .O(inst57__O),
    .clk(inst57__clk),
    .config_addr(inst57__config_addr),
    .config_data(inst57__config_data),
    .config_en(inst57__config_en),
    .reset(inst57__reset)
  );

  wire [15:0] inst58__I_0;
  wire [15:0] inst58__I_1;
  wire [15:0] inst58__I_2;
  wire [15:0] inst58__I_3;
  wire [15:0] inst58__O;
  wire [1:0] inst58__S;
  MuxWrapper_4_16 inst58(
    .I_0(inst58__I_0),
    .I_1(inst58__I_1),
    .I_2(inst58__I_2),
    .I_3(inst58__I_3),
    .O(inst58__O),
    .S(inst58__S)
  );

  wire [1:0] inst59__O;
  wire  inst59__clk;
  wire [7:0] inst59__config_addr;
  wire [31:0] inst59__config_data;
  wire  inst59__config_en;
  wire  inst59__reset;
  ConfigRegister_2_8_32_29 inst59(
    .O(inst59__O),
    .clk(inst59__clk),
    .config_addr(inst59__config_addr),
    .config_data(inst59__config_data),
    .config_en(inst59__config_en),
    .reset(inst59__reset)
  );

  wire [0:0] inst6__I_0;
  wire [0:0] inst6__I_1;
  wire [0:0] inst6__I_2;
  wire [0:0] inst6__I_3;
  wire [0:0] inst6__O;
  wire [1:0] inst6__S;
  MuxWrapper_4_1 inst6(
    .I_0(inst6__I_0),
    .I_1(inst6__I_1),
    .I_2(inst6__I_2),
    .I_3(inst6__I_3),
    .O(inst6__O),
    .S(inst6__S)
  );

  wire [0:0] inst60__I_0;
  wire [0:0] inst60__I_1;
  wire [0:0] inst60__I_2;
  wire [0:0] inst60__I_3;
  wire [0:0] inst60__O;
  wire [1:0] inst60__S;
  MuxWrapper_4_1 inst60(
    .I_0(inst60__I_0),
    .I_1(inst60__I_1),
    .I_2(inst60__I_2),
    .I_3(inst60__I_3),
    .O(inst60__O),
    .S(inst60__S)
  );

  wire [1:0] inst61__O;
  wire  inst61__clk;
  wire [7:0] inst61__config_addr;
  wire [31:0] inst61__config_data;
  wire  inst61__config_en;
  wire  inst61__reset;
  ConfigRegister_2_8_32_30 inst61(
    .O(inst61__O),
    .clk(inst61__clk),
    .config_addr(inst61__config_addr),
    .config_data(inst61__config_data),
    .config_en(inst61__config_en),
    .reset(inst61__reset)
  );

  wire [0:0] inst62__I_0;
  wire [0:0] inst62__I_1;
  wire [0:0] inst62__I_2;
  wire [0:0] inst62__I_3;
  wire [0:0] inst62__O;
  wire [1:0] inst62__S;
  MuxWrapper_4_1 inst62(
    .I_0(inst62__I_0),
    .I_1(inst62__I_1),
    .I_2(inst62__I_2),
    .I_3(inst62__I_3),
    .O(inst62__O),
    .S(inst62__S)
  );

  wire [1:0] inst63__O;
  wire  inst63__clk;
  wire [7:0] inst63__config_addr;
  wire [31:0] inst63__config_data;
  wire  inst63__config_en;
  wire  inst63__reset;
  ConfigRegister_2_8_32_31 inst63(
    .O(inst63__O),
    .clk(inst63__clk),
    .config_addr(inst63__config_addr),
    .config_data(inst63__config_data),
    .config_en(inst63__config_en),
    .reset(inst63__reset)
  );

  wire [0:0] inst64__I_0;
  wire [0:0] inst64__I_1;
  wire [0:0] inst64__I_2;
  wire [0:0] inst64__I_3;
  wire [0:0] inst64__O;
  wire [1:0] inst64__S;
  MuxWrapper_4_1 inst64(
    .I_0(inst64__I_0),
    .I_1(inst64__I_1),
    .I_2(inst64__I_2),
    .I_3(inst64__I_3),
    .O(inst64__O),
    .S(inst64__S)
  );

  wire [1:0] inst65__O;
  wire  inst65__clk;
  wire [7:0] inst65__config_addr;
  wire [31:0] inst65__config_data;
  wire  inst65__config_en;
  wire  inst65__reset;
  ConfigRegister_2_8_32_32 inst65(
    .O(inst65__O),
    .clk(inst65__clk),
    .config_addr(inst65__config_addr),
    .config_data(inst65__config_data),
    .config_en(inst65__config_en),
    .reset(inst65__reset)
  );

  wire [0:0] inst66__I_0;
  wire [0:0] inst66__I_1;
  wire [0:0] inst66__I_2;
  wire [0:0] inst66__I_3;
  wire [0:0] inst66__O;
  wire [1:0] inst66__S;
  MuxWrapper_4_1 inst66(
    .I_0(inst66__I_0),
    .I_1(inst66__I_1),
    .I_2(inst66__I_2),
    .I_3(inst66__I_3),
    .O(inst66__O),
    .S(inst66__S)
  );

  wire [1:0] inst67__O;
  wire  inst67__clk;
  wire [7:0] inst67__config_addr;
  wire [31:0] inst67__config_data;
  wire  inst67__config_en;
  wire  inst67__reset;
  ConfigRegister_2_8_32_33 inst67(
    .O(inst67__O),
    .clk(inst67__clk),
    .config_addr(inst67__config_addr),
    .config_data(inst67__config_data),
    .config_en(inst67__config_en),
    .reset(inst67__reset)
  );

  wire [0:0] inst68__I_0;
  wire [0:0] inst68__I_1;
  wire [0:0] inst68__I_2;
  wire [0:0] inst68__I_3;
  wire [0:0] inst68__O;
  wire [1:0] inst68__S;
  MuxWrapper_4_1 inst68(
    .I_0(inst68__I_0),
    .I_1(inst68__I_1),
    .I_2(inst68__I_2),
    .I_3(inst68__I_3),
    .O(inst68__O),
    .S(inst68__S)
  );

  wire [1:0] inst69__O;
  wire  inst69__clk;
  wire [7:0] inst69__config_addr;
  wire [31:0] inst69__config_data;
  wire  inst69__config_en;
  wire  inst69__reset;
  ConfigRegister_2_8_32_34 inst69(
    .O(inst69__O),
    .clk(inst69__clk),
    .config_addr(inst69__config_addr),
    .config_data(inst69__config_data),
    .config_en(inst69__config_en),
    .reset(inst69__reset)
  );

  wire [1:0] inst7__O;
  wire  inst7__clk;
  wire [7:0] inst7__config_addr;
  wire [31:0] inst7__config_data;
  wire  inst7__config_en;
  wire  inst7__reset;
  ConfigRegister_2_8_32_3 inst7(
    .O(inst7__O),
    .clk(inst7__clk),
    .config_addr(inst7__config_addr),
    .config_data(inst7__config_data),
    .config_en(inst7__config_en),
    .reset(inst7__reset)
  );

  wire [15:0] inst70__I_0;
  wire [15:0] inst70__I_1;
  wire [15:0] inst70__I_2;
  wire [15:0] inst70__I_3;
  wire [15:0] inst70__O;
  wire [1:0] inst70__S;
  MuxWrapper_4_16 inst70(
    .I_0(inst70__I_0),
    .I_1(inst70__I_1),
    .I_2(inst70__I_2),
    .I_3(inst70__I_3),
    .O(inst70__O),
    .S(inst70__S)
  );

  wire [1:0] inst71__O;
  wire  inst71__clk;
  wire [7:0] inst71__config_addr;
  wire [31:0] inst71__config_data;
  wire  inst71__config_en;
  wire  inst71__reset;
  ConfigRegister_2_8_32_35 inst71(
    .O(inst71__O),
    .clk(inst71__clk),
    .config_addr(inst71__config_addr),
    .config_data(inst71__config_data),
    .config_en(inst71__config_en),
    .reset(inst71__reset)
  );

  wire [15:0] inst72__I_0;
  wire [15:0] inst72__I_1;
  wire [15:0] inst72__I_2;
  wire [15:0] inst72__I_3;
  wire [15:0] inst72__O;
  wire [1:0] inst72__S;
  MuxWrapper_4_16 inst72(
    .I_0(inst72__I_0),
    .I_1(inst72__I_1),
    .I_2(inst72__I_2),
    .I_3(inst72__I_3),
    .O(inst72__O),
    .S(inst72__S)
  );

  wire [1:0] inst73__O;
  wire  inst73__clk;
  wire [7:0] inst73__config_addr;
  wire [31:0] inst73__config_data;
  wire  inst73__config_en;
  wire  inst73__reset;
  ConfigRegister_2_8_32_36 inst73(
    .O(inst73__O),
    .clk(inst73__clk),
    .config_addr(inst73__config_addr),
    .config_data(inst73__config_data),
    .config_en(inst73__config_en),
    .reset(inst73__reset)
  );

  wire [15:0] inst74__I_0;
  wire [15:0] inst74__I_1;
  wire [15:0] inst74__I_2;
  wire [15:0] inst74__I_3;
  wire [15:0] inst74__O;
  wire [1:0] inst74__S;
  MuxWrapper_4_16 inst74(
    .I_0(inst74__I_0),
    .I_1(inst74__I_1),
    .I_2(inst74__I_2),
    .I_3(inst74__I_3),
    .O(inst74__O),
    .S(inst74__S)
  );

  wire [1:0] inst75__O;
  wire  inst75__clk;
  wire [7:0] inst75__config_addr;
  wire [31:0] inst75__config_data;
  wire  inst75__config_en;
  wire  inst75__reset;
  ConfigRegister_2_8_32_37 inst75(
    .O(inst75__O),
    .clk(inst75__clk),
    .config_addr(inst75__config_addr),
    .config_data(inst75__config_data),
    .config_en(inst75__config_en),
    .reset(inst75__reset)
  );

  wire [15:0] inst76__I_0;
  wire [15:0] inst76__I_1;
  wire [15:0] inst76__I_2;
  wire [15:0] inst76__I_3;
  wire [15:0] inst76__O;
  wire [1:0] inst76__S;
  MuxWrapper_4_16 inst76(
    .I_0(inst76__I_0),
    .I_1(inst76__I_1),
    .I_2(inst76__I_2),
    .I_3(inst76__I_3),
    .O(inst76__O),
    .S(inst76__S)
  );

  wire [1:0] inst77__O;
  wire  inst77__clk;
  wire [7:0] inst77__config_addr;
  wire [31:0] inst77__config_data;
  wire  inst77__config_en;
  wire  inst77__reset;
  ConfigRegister_2_8_32_38 inst77(
    .O(inst77__O),
    .clk(inst77__clk),
    .config_addr(inst77__config_addr),
    .config_data(inst77__config_data),
    .config_en(inst77__config_en),
    .reset(inst77__reset)
  );

  wire [15:0] inst78__I_0;
  wire [15:0] inst78__I_1;
  wire [15:0] inst78__I_2;
  wire [15:0] inst78__I_3;
  wire [15:0] inst78__O;
  wire [1:0] inst78__S;
  MuxWrapper_4_16 inst78(
    .I_0(inst78__I_0),
    .I_1(inst78__I_1),
    .I_2(inst78__I_2),
    .I_3(inst78__I_3),
    .O(inst78__O),
    .S(inst78__S)
  );

  wire [1:0] inst79__O;
  wire  inst79__clk;
  wire [7:0] inst79__config_addr;
  wire [31:0] inst79__config_data;
  wire  inst79__config_en;
  wire  inst79__reset;
  ConfigRegister_2_8_32_39 inst79(
    .O(inst79__O),
    .clk(inst79__clk),
    .config_addr(inst79__config_addr),
    .config_data(inst79__config_data),
    .config_en(inst79__config_en),
    .reset(inst79__reset)
  );

  wire [0:0] inst8__I_0;
  wire [0:0] inst8__I_1;
  wire [0:0] inst8__I_2;
  wire [0:0] inst8__I_3;
  wire [0:0] inst8__O;
  wire [1:0] inst8__S;
  MuxWrapper_4_1 inst8(
    .I_0(inst8__I_0),
    .I_1(inst8__I_1),
    .I_2(inst8__I_2),
    .I_3(inst8__I_3),
    .O(inst8__O),
    .S(inst8__S)
  );

  wire [31:0] inst80__I_0;
  wire [31:0] inst80__I_1;
  wire [31:0] inst80__I_10;
  wire [31:0] inst80__I_11;
  wire [31:0] inst80__I_12;
  wire [31:0] inst80__I_13;
  wire [31:0] inst80__I_14;
  wire [31:0] inst80__I_15;
  wire [31:0] inst80__I_16;
  wire [31:0] inst80__I_17;
  wire [31:0] inst80__I_18;
  wire [31:0] inst80__I_19;
  wire [31:0] inst80__I_2;
  wire [31:0] inst80__I_20;
  wire [31:0] inst80__I_21;
  wire [31:0] inst80__I_22;
  wire [31:0] inst80__I_23;
  wire [31:0] inst80__I_24;
  wire [31:0] inst80__I_25;
  wire [31:0] inst80__I_26;
  wire [31:0] inst80__I_27;
  wire [31:0] inst80__I_28;
  wire [31:0] inst80__I_29;
  wire [31:0] inst80__I_3;
  wire [31:0] inst80__I_30;
  wire [31:0] inst80__I_31;
  wire [31:0] inst80__I_32;
  wire [31:0] inst80__I_33;
  wire [31:0] inst80__I_34;
  wire [31:0] inst80__I_35;
  wire [31:0] inst80__I_36;
  wire [31:0] inst80__I_37;
  wire [31:0] inst80__I_38;
  wire [31:0] inst80__I_39;
  wire [31:0] inst80__I_4;
  wire [31:0] inst80__I_5;
  wire [31:0] inst80__I_6;
  wire [31:0] inst80__I_7;
  wire [31:0] inst80__I_8;
  wire [31:0] inst80__I_9;
  wire [31:0] inst80__O;
  wire [5:0] inst80__S;
  MuxWrapper_40_32 inst80(
    .I_0(inst80__I_0),
    .I_1(inst80__I_1),
    .I_10(inst80__I_10),
    .I_11(inst80__I_11),
    .I_12(inst80__I_12),
    .I_13(inst80__I_13),
    .I_14(inst80__I_14),
    .I_15(inst80__I_15),
    .I_16(inst80__I_16),
    .I_17(inst80__I_17),
    .I_18(inst80__I_18),
    .I_19(inst80__I_19),
    .I_2(inst80__I_2),
    .I_20(inst80__I_20),
    .I_21(inst80__I_21),
    .I_22(inst80__I_22),
    .I_23(inst80__I_23),
    .I_24(inst80__I_24),
    .I_25(inst80__I_25),
    .I_26(inst80__I_26),
    .I_27(inst80__I_27),
    .I_28(inst80__I_28),
    .I_29(inst80__I_29),
    .I_3(inst80__I_3),
    .I_30(inst80__I_30),
    .I_31(inst80__I_31),
    .I_32(inst80__I_32),
    .I_33(inst80__I_33),
    .I_34(inst80__I_34),
    .I_35(inst80__I_35),
    .I_36(inst80__I_36),
    .I_37(inst80__I_37),
    .I_38(inst80__I_38),
    .I_39(inst80__I_39),
    .I_4(inst80__I_4),
    .I_5(inst80__I_5),
    .I_6(inst80__I_6),
    .I_7(inst80__I_7),
    .I_8(inst80__I_8),
    .I_9(inst80__I_9),
    .O(inst80__O),
    .S(inst80__S)
  );

  wire [1:0] inst81__I;
  wire [31:0] inst81__O;
  ZextWrapper_2_32 inst81(
    .I(inst81__I),
    .O(inst81__O)
  );

  wire [1:0] inst82__I;
  wire [31:0] inst82__O;
  ZextWrapper_2_32 inst82(
    .I(inst82__I),
    .O(inst82__O)
  );

  wire [1:0] inst83__I;
  wire [31:0] inst83__O;
  ZextWrapper_2_32 inst83(
    .I(inst83__I),
    .O(inst83__O)
  );

  wire [1:0] inst84__I;
  wire [31:0] inst84__O;
  ZextWrapper_2_32 inst84(
    .I(inst84__I),
    .O(inst84__O)
  );

  wire [1:0] inst85__I;
  wire [31:0] inst85__O;
  ZextWrapper_2_32 inst85(
    .I(inst85__I),
    .O(inst85__O)
  );

  wire [1:0] inst86__I;
  wire [31:0] inst86__O;
  ZextWrapper_2_32 inst86(
    .I(inst86__I),
    .O(inst86__O)
  );

  wire [1:0] inst87__I;
  wire [31:0] inst87__O;
  ZextWrapper_2_32 inst87(
    .I(inst87__I),
    .O(inst87__O)
  );

  wire [1:0] inst88__I;
  wire [31:0] inst88__O;
  ZextWrapper_2_32 inst88(
    .I(inst88__I),
    .O(inst88__O)
  );

  wire [1:0] inst89__I;
  wire [31:0] inst89__O;
  ZextWrapper_2_32 inst89(
    .I(inst89__I),
    .O(inst89__O)
  );

  wire [1:0] inst9__O;
  wire  inst9__clk;
  wire [7:0] inst9__config_addr;
  wire [31:0] inst9__config_data;
  wire  inst9__config_en;
  wire  inst9__reset;
  ConfigRegister_2_8_32_4 inst9(
    .O(inst9__O),
    .clk(inst9__clk),
    .config_addr(inst9__config_addr),
    .config_data(inst9__config_data),
    .config_en(inst9__config_en),
    .reset(inst9__reset)
  );

  wire [1:0] inst90__I;
  wire [31:0] inst90__O;
  ZextWrapper_2_32 inst90(
    .I(inst90__I),
    .O(inst90__O)
  );

  wire [1:0] inst91__I;
  wire [31:0] inst91__O;
  ZextWrapper_2_32 inst91(
    .I(inst91__I),
    .O(inst91__O)
  );

  wire [1:0] inst92__I;
  wire [31:0] inst92__O;
  ZextWrapper_2_32 inst92(
    .I(inst92__I),
    .O(inst92__O)
  );

  wire [1:0] inst93__I;
  wire [31:0] inst93__O;
  ZextWrapper_2_32 inst93(
    .I(inst93__I),
    .O(inst93__O)
  );

  wire [1:0] inst94__I;
  wire [31:0] inst94__O;
  ZextWrapper_2_32 inst94(
    .I(inst94__I),
    .O(inst94__O)
  );

  wire [1:0] inst95__I;
  wire [31:0] inst95__O;
  ZextWrapper_2_32 inst95(
    .I(inst95__I),
    .O(inst95__O)
  );

  wire [1:0] inst96__I;
  wire [31:0] inst96__O;
  ZextWrapper_2_32 inst96(
    .I(inst96__I),
    .O(inst96__O)
  );

  wire [1:0] inst97__I;
  wire [31:0] inst97__O;
  ZextWrapper_2_32 inst97(
    .I(inst97__I),
    .O(inst97__O)
  );

  wire [1:0] inst98__I;
  wire [31:0] inst98__O;
  ZextWrapper_2_32 inst98(
    .I(inst98__I),
    .O(inst98__O)
  );

  wire [1:0] inst99__I;
  wire [31:0] inst99__O;
  ZextWrapper_2_32 inst99(
    .I(inst99__I),
    .O(inst99__O)
  );

  assign inst0__I_0[0:0] = west_I_layer1_0[0:0];

  assign inst0__I_1[0:0] = south_I_layer1_0[0:0];

  assign inst0__I_2[0:0] = east_I_layer1_0[0:0];

  assign inst0__I_3[0:0] = res_p[0:0];

  assign north_O_layer1_0[0:0] = inst0__O[0:0];

  assign inst0__S[1:0] = inst1__O[1:0];

  assign inst81__I[1:0] = inst1__O[1:0];

  assign inst1__clk = clk;

  assign inst1__config_addr[7:0] = config_config_addr[7:0];

  assign inst1__config_data[31:0] = config_config_data[31:0];

  assign inst1__config_en = config_write[0];

  assign inst1__reset = reset;

  assign inst10__I_0[15:0] = west_I_layer16_0[15:0];

  assign inst10__I_1[15:0] = south_I_layer16_0[15:0];

  assign inst10__I_2[15:0] = east_I_layer16_0[15:0];

  assign inst10__I_3[15:0] = res[15:0];

  assign north_O_layer16_0[15:0] = inst10__O[15:0];

  assign inst10__S[1:0] = inst11__O[1:0];

  assign inst100__I[1:0] = inst39__O[1:0];

  assign inst80__I_19[31:0] = inst100__O[31:0];

  assign inst101__I[1:0] = inst41__O[1:0];

  assign inst80__I_20[31:0] = inst101__O[31:0];

  assign inst102__I[1:0] = inst43__O[1:0];

  assign inst80__I_21[31:0] = inst102__O[31:0];

  assign inst103__I[1:0] = inst45__O[1:0];

  assign inst80__I_22[31:0] = inst103__O[31:0];

  assign inst104__I[1:0] = inst47__O[1:0];

  assign inst80__I_23[31:0] = inst104__O[31:0];

  assign inst105__I[1:0] = inst49__O[1:0];

  assign inst80__I_24[31:0] = inst105__O[31:0];

  assign inst106__I[1:0] = inst51__O[1:0];

  assign inst80__I_25[31:0] = inst106__O[31:0];

  assign inst107__I[1:0] = inst53__O[1:0];

  assign inst80__I_26[31:0] = inst107__O[31:0];

  assign inst108__I[1:0] = inst55__O[1:0];

  assign inst80__I_27[31:0] = inst108__O[31:0];

  assign inst109__I[1:0] = inst57__O[1:0];

  assign inst80__I_28[31:0] = inst109__O[31:0];

  assign inst86__I[1:0] = inst11__O[1:0];

  assign inst11__clk = clk;

  assign inst11__config_addr[7:0] = config_config_addr[7:0];

  assign inst11__config_data[31:0] = config_config_data[31:0];

  assign inst11__config_en = config_write[0];

  assign inst11__reset = reset;

  assign inst110__I[1:0] = inst59__O[1:0];

  assign inst80__I_29[31:0] = inst110__O[31:0];

  assign inst111__I[1:0] = inst61__O[1:0];

  assign inst80__I_30[31:0] = inst111__O[31:0];

  assign inst112__I[1:0] = inst63__O[1:0];

  assign inst80__I_31[31:0] = inst112__O[31:0];

  assign inst113__I[1:0] = inst65__O[1:0];

  assign inst80__I_32[31:0] = inst113__O[31:0];

  assign inst114__I[1:0] = inst67__O[1:0];

  assign inst80__I_33[31:0] = inst114__O[31:0];

  assign inst115__I[1:0] = inst69__O[1:0];

  assign inst80__I_34[31:0] = inst115__O[31:0];

  assign inst116__I[1:0] = inst71__O[1:0];

  assign inst80__I_35[31:0] = inst116__O[31:0];

  assign inst117__I[1:0] = inst73__O[1:0];

  assign inst80__I_36[31:0] = inst117__O[31:0];

  assign inst118__I[1:0] = inst75__O[1:0];

  assign inst80__I_37[31:0] = inst118__O[31:0];

  assign inst119__I[1:0] = inst77__O[1:0];

  assign inst80__I_38[31:0] = inst119__O[31:0];

  assign inst12__I_0[15:0] = west_I_layer16_1[15:0];

  assign inst12__I_1[15:0] = south_I_layer16_1[15:0];

  assign inst12__I_2[15:0] = east_I_layer16_1[15:0];

  assign inst12__I_3[15:0] = res[15:0];

  assign north_O_layer16_1[15:0] = inst12__O[15:0];

  assign inst12__S[1:0] = inst13__O[1:0];

  assign inst120__I[1:0] = inst79__O[1:0];

  assign inst80__I_39[31:0] = inst120__O[31:0];

  assign inst87__I[1:0] = inst13__O[1:0];

  assign inst13__clk = clk;

  assign inst13__config_addr[7:0] = config_config_addr[7:0];

  assign inst13__config_data[31:0] = config_config_data[31:0];

  assign inst13__config_en = config_write[0];

  assign inst13__reset = reset;

  assign inst14__I_0[15:0] = west_I_layer16_2[15:0];

  assign inst14__I_1[15:0] = south_I_layer16_2[15:0];

  assign inst14__I_2[15:0] = east_I_layer16_2[15:0];

  assign inst14__I_3[15:0] = res[15:0];

  assign north_O_layer16_2[15:0] = inst14__O[15:0];

  assign inst14__S[1:0] = inst15__O[1:0];

  assign inst88__I[1:0] = inst15__O[1:0];

  assign inst15__clk = clk;

  assign inst15__config_addr[7:0] = config_config_addr[7:0];

  assign inst15__config_data[31:0] = config_config_data[31:0];

  assign inst15__config_en = config_write[0];

  assign inst15__reset = reset;

  assign inst16__I_0[15:0] = west_I_layer16_3[15:0];

  assign inst16__I_1[15:0] = south_I_layer16_3[15:0];

  assign inst16__I_2[15:0] = east_I_layer16_3[15:0];

  assign inst16__I_3[15:0] = res[15:0];

  assign north_O_layer16_3[15:0] = inst16__O[15:0];

  assign inst16__S[1:0] = inst17__O[1:0];

  assign inst89__I[1:0] = inst17__O[1:0];

  assign inst17__clk = clk;

  assign inst17__config_addr[7:0] = config_config_addr[7:0];

  assign inst17__config_data[31:0] = config_config_data[31:0];

  assign inst17__config_en = config_write[0];

  assign inst17__reset = reset;

  assign inst18__I_0[15:0] = west_I_layer16_4[15:0];

  assign inst18__I_1[15:0] = south_I_layer16_4[15:0];

  assign inst18__I_2[15:0] = east_I_layer16_4[15:0];

  assign inst18__I_3[15:0] = res[15:0];

  assign north_O_layer16_4[15:0] = inst18__O[15:0];

  assign inst18__S[1:0] = inst19__O[1:0];

  assign inst90__I[1:0] = inst19__O[1:0];

  assign inst19__clk = clk;

  assign inst19__config_addr[7:0] = config_config_addr[7:0];

  assign inst19__config_data[31:0] = config_config_data[31:0];

  assign inst19__config_en = config_write[0];

  assign inst19__reset = reset;

  assign inst2__I_0[0:0] = west_I_layer1_1[0:0];

  assign inst2__I_1[0:0] = south_I_layer1_1[0:0];

  assign inst2__I_2[0:0] = east_I_layer1_1[0:0];

  assign inst2__I_3[0:0] = res_p[0:0];

  assign north_O_layer1_1[0:0] = inst2__O[0:0];

  assign inst2__S[1:0] = inst3__O[1:0];

  assign inst20__I_0[0:0] = north_I_layer1_0[0:0];

  assign inst20__I_1[0:0] = south_I_layer1_0[0:0];

  assign inst20__I_2[0:0] = east_I_layer1_0[0:0];

  assign inst20__I_3[0:0] = res_p[0:0];

  assign west_O_layer1_0[0:0] = inst20__O[0:0];

  assign inst20__S[1:0] = inst21__O[1:0];

  assign inst91__I[1:0] = inst21__O[1:0];

  assign inst21__clk = clk;

  assign inst21__config_addr[7:0] = config_config_addr[7:0];

  assign inst21__config_data[31:0] = config_config_data[31:0];

  assign inst21__config_en = config_write[0];

  assign inst21__reset = reset;

  assign inst22__I_0[0:0] = north_I_layer1_1[0:0];

  assign inst22__I_1[0:0] = south_I_layer1_1[0:0];

  assign inst22__I_2[0:0] = east_I_layer1_1[0:0];

  assign inst22__I_3[0:0] = res_p[0:0];

  assign west_O_layer1_1[0:0] = inst22__O[0:0];

  assign inst22__S[1:0] = inst23__O[1:0];

  assign inst92__I[1:0] = inst23__O[1:0];

  assign inst23__clk = clk;

  assign inst23__config_addr[7:0] = config_config_addr[7:0];

  assign inst23__config_data[31:0] = config_config_data[31:0];

  assign inst23__config_en = config_write[0];

  assign inst23__reset = reset;

  assign inst24__I_0[0:0] = north_I_layer1_2[0:0];

  assign inst24__I_1[0:0] = south_I_layer1_2[0:0];

  assign inst24__I_2[0:0] = east_I_layer1_2[0:0];

  assign inst24__I_3[0:0] = res_p[0:0];

  assign west_O_layer1_2[0:0] = inst24__O[0:0];

  assign inst24__S[1:0] = inst25__O[1:0];

  assign inst93__I[1:0] = inst25__O[1:0];

  assign inst25__clk = clk;

  assign inst25__config_addr[7:0] = config_config_addr[7:0];

  assign inst25__config_data[31:0] = config_config_data[31:0];

  assign inst25__config_en = config_write[0];

  assign inst25__reset = reset;

  assign inst26__I_0[0:0] = north_I_layer1_3[0:0];

  assign inst26__I_1[0:0] = south_I_layer1_3[0:0];

  assign inst26__I_2[0:0] = east_I_layer1_3[0:0];

  assign inst26__I_3[0:0] = res_p[0:0];

  assign west_O_layer1_3[0:0] = inst26__O[0:0];

  assign inst26__S[1:0] = inst27__O[1:0];

  assign inst94__I[1:0] = inst27__O[1:0];

  assign inst27__clk = clk;

  assign inst27__config_addr[7:0] = config_config_addr[7:0];

  assign inst27__config_data[31:0] = config_config_data[31:0];

  assign inst27__config_en = config_write[0];

  assign inst27__reset = reset;

  assign inst28__I_0[0:0] = north_I_layer1_4[0:0];

  assign inst28__I_1[0:0] = south_I_layer1_4[0:0];

  assign inst28__I_2[0:0] = east_I_layer1_4[0:0];

  assign inst28__I_3[0:0] = res_p[0:0];

  assign west_O_layer1_4[0:0] = inst28__O[0:0];

  assign inst28__S[1:0] = inst29__O[1:0];

  assign inst95__I[1:0] = inst29__O[1:0];

  assign inst29__clk = clk;

  assign inst29__config_addr[7:0] = config_config_addr[7:0];

  assign inst29__config_data[31:0] = config_config_data[31:0];

  assign inst29__config_en = config_write[0];

  assign inst29__reset = reset;

  assign inst82__I[1:0] = inst3__O[1:0];

  assign inst3__clk = clk;

  assign inst3__config_addr[7:0] = config_config_addr[7:0];

  assign inst3__config_data[31:0] = config_config_data[31:0];

  assign inst3__config_en = config_write[0];

  assign inst3__reset = reset;

  assign inst30__I_0[15:0] = north_I_layer16_0[15:0];

  assign inst30__I_1[15:0] = south_I_layer16_0[15:0];

  assign inst30__I_2[15:0] = east_I_layer16_0[15:0];

  assign inst30__I_3[15:0] = res[15:0];

  assign west_O_layer16_0[15:0] = inst30__O[15:0];

  assign inst30__S[1:0] = inst31__O[1:0];

  assign inst96__I[1:0] = inst31__O[1:0];

  assign inst31__clk = clk;

  assign inst31__config_addr[7:0] = config_config_addr[7:0];

  assign inst31__config_data[31:0] = config_config_data[31:0];

  assign inst31__config_en = config_write[0];

  assign inst31__reset = reset;

  assign inst32__I_0[15:0] = north_I_layer16_1[15:0];

  assign inst32__I_1[15:0] = south_I_layer16_1[15:0];

  assign inst32__I_2[15:0] = east_I_layer16_1[15:0];

  assign inst32__I_3[15:0] = res[15:0];

  assign west_O_layer16_1[15:0] = inst32__O[15:0];

  assign inst32__S[1:0] = inst33__O[1:0];

  assign inst97__I[1:0] = inst33__O[1:0];

  assign inst33__clk = clk;

  assign inst33__config_addr[7:0] = config_config_addr[7:0];

  assign inst33__config_data[31:0] = config_config_data[31:0];

  assign inst33__config_en = config_write[0];

  assign inst33__reset = reset;

  assign inst34__I_0[15:0] = north_I_layer16_2[15:0];

  assign inst34__I_1[15:0] = south_I_layer16_2[15:0];

  assign inst34__I_2[15:0] = east_I_layer16_2[15:0];

  assign inst34__I_3[15:0] = res[15:0];

  assign west_O_layer16_2[15:0] = inst34__O[15:0];

  assign inst34__S[1:0] = inst35__O[1:0];

  assign inst98__I[1:0] = inst35__O[1:0];

  assign inst35__clk = clk;

  assign inst35__config_addr[7:0] = config_config_addr[7:0];

  assign inst35__config_data[31:0] = config_config_data[31:0];

  assign inst35__config_en = config_write[0];

  assign inst35__reset = reset;

  assign inst36__I_0[15:0] = north_I_layer16_3[15:0];

  assign inst36__I_1[15:0] = south_I_layer16_3[15:0];

  assign inst36__I_2[15:0] = east_I_layer16_3[15:0];

  assign inst36__I_3[15:0] = res[15:0];

  assign west_O_layer16_3[15:0] = inst36__O[15:0];

  assign inst36__S[1:0] = inst37__O[1:0];

  assign inst99__I[1:0] = inst37__O[1:0];

  assign inst37__clk = clk;

  assign inst37__config_addr[7:0] = config_config_addr[7:0];

  assign inst37__config_data[31:0] = config_config_data[31:0];

  assign inst37__config_en = config_write[0];

  assign inst37__reset = reset;

  assign inst38__I_0[15:0] = north_I_layer16_4[15:0];

  assign inst38__I_1[15:0] = south_I_layer16_4[15:0];

  assign inst38__I_2[15:0] = east_I_layer16_4[15:0];

  assign inst38__I_3[15:0] = res[15:0];

  assign west_O_layer16_4[15:0] = inst38__O[15:0];

  assign inst38__S[1:0] = inst39__O[1:0];

  assign inst39__clk = clk;

  assign inst39__config_addr[7:0] = config_config_addr[7:0];

  assign inst39__config_data[31:0] = config_config_data[31:0];

  assign inst39__config_en = config_write[0];

  assign inst39__reset = reset;

  assign inst4__I_0[0:0] = west_I_layer1_2[0:0];

  assign inst4__I_1[0:0] = south_I_layer1_2[0:0];

  assign inst4__I_2[0:0] = east_I_layer1_2[0:0];

  assign inst4__I_3[0:0] = res_p[0:0];

  assign north_O_layer1_2[0:0] = inst4__O[0:0];

  assign inst4__S[1:0] = inst5__O[1:0];

  assign inst40__I_0[0:0] = north_I_layer1_0[0:0];

  assign inst40__I_1[0:0] = west_I_layer1_0[0:0];

  assign inst40__I_2[0:0] = east_I_layer1_0[0:0];

  assign inst40__I_3[0:0] = res_p[0:0];

  assign south_O_layer1_0[0:0] = inst40__O[0:0];

  assign inst40__S[1:0] = inst41__O[1:0];

  assign inst41__clk = clk;

  assign inst41__config_addr[7:0] = config_config_addr[7:0];

  assign inst41__config_data[31:0] = config_config_data[31:0];

  assign inst41__config_en = config_write[0];

  assign inst41__reset = reset;

  assign inst42__I_0[0:0] = north_I_layer1_1[0:0];

  assign inst42__I_1[0:0] = west_I_layer1_1[0:0];

  assign inst42__I_2[0:0] = east_I_layer1_1[0:0];

  assign inst42__I_3[0:0] = res_p[0:0];

  assign south_O_layer1_1[0:0] = inst42__O[0:0];

  assign inst42__S[1:0] = inst43__O[1:0];

  assign inst43__clk = clk;

  assign inst43__config_addr[7:0] = config_config_addr[7:0];

  assign inst43__config_data[31:0] = config_config_data[31:0];

  assign inst43__config_en = config_write[0];

  assign inst43__reset = reset;

  assign inst44__I_0[0:0] = north_I_layer1_2[0:0];

  assign inst44__I_1[0:0] = west_I_layer1_2[0:0];

  assign inst44__I_2[0:0] = east_I_layer1_2[0:0];

  assign inst44__I_3[0:0] = res_p[0:0];

  assign south_O_layer1_2[0:0] = inst44__O[0:0];

  assign inst44__S[1:0] = inst45__O[1:0];

  assign inst45__clk = clk;

  assign inst45__config_addr[7:0] = config_config_addr[7:0];

  assign inst45__config_data[31:0] = config_config_data[31:0];

  assign inst45__config_en = config_write[0];

  assign inst45__reset = reset;

  assign inst46__I_0[0:0] = north_I_layer1_3[0:0];

  assign inst46__I_1[0:0] = west_I_layer1_3[0:0];

  assign inst46__I_2[0:0] = east_I_layer1_3[0:0];

  assign inst46__I_3[0:0] = res_p[0:0];

  assign south_O_layer1_3[0:0] = inst46__O[0:0];

  assign inst46__S[1:0] = inst47__O[1:0];

  assign inst47__clk = clk;

  assign inst47__config_addr[7:0] = config_config_addr[7:0];

  assign inst47__config_data[31:0] = config_config_data[31:0];

  assign inst47__config_en = config_write[0];

  assign inst47__reset = reset;

  assign inst48__I_0[0:0] = north_I_layer1_4[0:0];

  assign inst48__I_1[0:0] = west_I_layer1_4[0:0];

  assign inst48__I_2[0:0] = east_I_layer1_4[0:0];

  assign inst48__I_3[0:0] = res_p[0:0];

  assign south_O_layer1_4[0:0] = inst48__O[0:0];

  assign inst48__S[1:0] = inst49__O[1:0];

  assign inst49__clk = clk;

  assign inst49__config_addr[7:0] = config_config_addr[7:0];

  assign inst49__config_data[31:0] = config_config_data[31:0];

  assign inst49__config_en = config_write[0];

  assign inst49__reset = reset;

  assign inst83__I[1:0] = inst5__O[1:0];

  assign inst5__clk = clk;

  assign inst5__config_addr[7:0] = config_config_addr[7:0];

  assign inst5__config_data[31:0] = config_config_data[31:0];

  assign inst5__config_en = config_write[0];

  assign inst5__reset = reset;

  assign inst50__I_0[15:0] = north_I_layer16_0[15:0];

  assign inst50__I_1[15:0] = west_I_layer16_0[15:0];

  assign inst50__I_2[15:0] = east_I_layer16_0[15:0];

  assign inst50__I_3[15:0] = res[15:0];

  assign south_O_layer16_0[15:0] = inst50__O[15:0];

  assign inst50__S[1:0] = inst51__O[1:0];

  assign inst51__clk = clk;

  assign inst51__config_addr[7:0] = config_config_addr[7:0];

  assign inst51__config_data[31:0] = config_config_data[31:0];

  assign inst51__config_en = config_write[0];

  assign inst51__reset = reset;

  assign inst52__I_0[15:0] = north_I_layer16_1[15:0];

  assign inst52__I_1[15:0] = west_I_layer16_1[15:0];

  assign inst52__I_2[15:0] = east_I_layer16_1[15:0];

  assign inst52__I_3[15:0] = res[15:0];

  assign south_O_layer16_1[15:0] = inst52__O[15:0];

  assign inst52__S[1:0] = inst53__O[1:0];

  assign inst53__clk = clk;

  assign inst53__config_addr[7:0] = config_config_addr[7:0];

  assign inst53__config_data[31:0] = config_config_data[31:0];

  assign inst53__config_en = config_write[0];

  assign inst53__reset = reset;

  assign inst54__I_0[15:0] = north_I_layer16_2[15:0];

  assign inst54__I_1[15:0] = west_I_layer16_2[15:0];

  assign inst54__I_2[15:0] = east_I_layer16_2[15:0];

  assign inst54__I_3[15:0] = res[15:0];

  assign south_O_layer16_2[15:0] = inst54__O[15:0];

  assign inst54__S[1:0] = inst55__O[1:0];

  assign inst55__clk = clk;

  assign inst55__config_addr[7:0] = config_config_addr[7:0];

  assign inst55__config_data[31:0] = config_config_data[31:0];

  assign inst55__config_en = config_write[0];

  assign inst55__reset = reset;

  assign inst56__I_0[15:0] = north_I_layer16_3[15:0];

  assign inst56__I_1[15:0] = west_I_layer16_3[15:0];

  assign inst56__I_2[15:0] = east_I_layer16_3[15:0];

  assign inst56__I_3[15:0] = res[15:0];

  assign south_O_layer16_3[15:0] = inst56__O[15:0];

  assign inst56__S[1:0] = inst57__O[1:0];

  assign inst57__clk = clk;

  assign inst57__config_addr[7:0] = config_config_addr[7:0];

  assign inst57__config_data[31:0] = config_config_data[31:0];

  assign inst57__config_en = config_write[0];

  assign inst57__reset = reset;

  assign inst58__I_0[15:0] = north_I_layer16_4[15:0];

  assign inst58__I_1[15:0] = west_I_layer16_4[15:0];

  assign inst58__I_2[15:0] = east_I_layer16_4[15:0];

  assign inst58__I_3[15:0] = res[15:0];

  assign south_O_layer16_4[15:0] = inst58__O[15:0];

  assign inst58__S[1:0] = inst59__O[1:0];

  assign inst59__clk = clk;

  assign inst59__config_addr[7:0] = config_config_addr[7:0];

  assign inst59__config_data[31:0] = config_config_data[31:0];

  assign inst59__config_en = config_write[0];

  assign inst59__reset = reset;

  assign inst6__I_0[0:0] = west_I_layer1_3[0:0];

  assign inst6__I_1[0:0] = south_I_layer1_3[0:0];

  assign inst6__I_2[0:0] = east_I_layer1_3[0:0];

  assign inst6__I_3[0:0] = res_p[0:0];

  assign north_O_layer1_3[0:0] = inst6__O[0:0];

  assign inst6__S[1:0] = inst7__O[1:0];

  assign inst60__I_0[0:0] = north_I_layer1_0[0:0];

  assign inst60__I_1[0:0] = west_I_layer1_0[0:0];

  assign inst60__I_2[0:0] = south_I_layer1_0[0:0];

  assign inst60__I_3[0:0] = res_p[0:0];

  assign east_O_layer1_0[0:0] = inst60__O[0:0];

  assign inst60__S[1:0] = inst61__O[1:0];

  assign inst61__clk = clk;

  assign inst61__config_addr[7:0] = config_config_addr[7:0];

  assign inst61__config_data[31:0] = config_config_data[31:0];

  assign inst61__config_en = config_write[0];

  assign inst61__reset = reset;

  assign inst62__I_0[0:0] = north_I_layer1_1[0:0];

  assign inst62__I_1[0:0] = west_I_layer1_1[0:0];

  assign inst62__I_2[0:0] = south_I_layer1_1[0:0];

  assign inst62__I_3[0:0] = res_p[0:0];

  assign east_O_layer1_1[0:0] = inst62__O[0:0];

  assign inst62__S[1:0] = inst63__O[1:0];

  assign inst63__clk = clk;

  assign inst63__config_addr[7:0] = config_config_addr[7:0];

  assign inst63__config_data[31:0] = config_config_data[31:0];

  assign inst63__config_en = config_write[0];

  assign inst63__reset = reset;

  assign inst64__I_0[0:0] = north_I_layer1_2[0:0];

  assign inst64__I_1[0:0] = west_I_layer1_2[0:0];

  assign inst64__I_2[0:0] = south_I_layer1_2[0:0];

  assign inst64__I_3[0:0] = res_p[0:0];

  assign east_O_layer1_2[0:0] = inst64__O[0:0];

  assign inst64__S[1:0] = inst65__O[1:0];

  assign inst65__clk = clk;

  assign inst65__config_addr[7:0] = config_config_addr[7:0];

  assign inst65__config_data[31:0] = config_config_data[31:0];

  assign inst65__config_en = config_write[0];

  assign inst65__reset = reset;

  assign inst66__I_0[0:0] = north_I_layer1_3[0:0];

  assign inst66__I_1[0:0] = west_I_layer1_3[0:0];

  assign inst66__I_2[0:0] = south_I_layer1_3[0:0];

  assign inst66__I_3[0:0] = res_p[0:0];

  assign east_O_layer1_3[0:0] = inst66__O[0:0];

  assign inst66__S[1:0] = inst67__O[1:0];

  assign inst67__clk = clk;

  assign inst67__config_addr[7:0] = config_config_addr[7:0];

  assign inst67__config_data[31:0] = config_config_data[31:0];

  assign inst67__config_en = config_write[0];

  assign inst67__reset = reset;

  assign inst68__I_0[0:0] = north_I_layer1_4[0:0];

  assign inst68__I_1[0:0] = west_I_layer1_4[0:0];

  assign inst68__I_2[0:0] = south_I_layer1_4[0:0];

  assign inst68__I_3[0:0] = res_p[0:0];

  assign east_O_layer1_4[0:0] = inst68__O[0:0];

  assign inst68__S[1:0] = inst69__O[1:0];

  assign inst69__clk = clk;

  assign inst69__config_addr[7:0] = config_config_addr[7:0];

  assign inst69__config_data[31:0] = config_config_data[31:0];

  assign inst69__config_en = config_write[0];

  assign inst69__reset = reset;

  assign inst84__I[1:0] = inst7__O[1:0];

  assign inst7__clk = clk;

  assign inst7__config_addr[7:0] = config_config_addr[7:0];

  assign inst7__config_data[31:0] = config_config_data[31:0];

  assign inst7__config_en = config_write[0];

  assign inst7__reset = reset;

  assign inst70__I_0[15:0] = north_I_layer16_0[15:0];

  assign inst70__I_1[15:0] = west_I_layer16_0[15:0];

  assign inst70__I_2[15:0] = south_I_layer16_0[15:0];

  assign inst70__I_3[15:0] = res[15:0];

  assign east_O_layer16_0[15:0] = inst70__O[15:0];

  assign inst70__S[1:0] = inst71__O[1:0];

  assign inst71__clk = clk;

  assign inst71__config_addr[7:0] = config_config_addr[7:0];

  assign inst71__config_data[31:0] = config_config_data[31:0];

  assign inst71__config_en = config_write[0];

  assign inst71__reset = reset;

  assign inst72__I_0[15:0] = north_I_layer16_1[15:0];

  assign inst72__I_1[15:0] = west_I_layer16_1[15:0];

  assign inst72__I_2[15:0] = south_I_layer16_1[15:0];

  assign inst72__I_3[15:0] = res[15:0];

  assign east_O_layer16_1[15:0] = inst72__O[15:0];

  assign inst72__S[1:0] = inst73__O[1:0];

  assign inst73__clk = clk;

  assign inst73__config_addr[7:0] = config_config_addr[7:0];

  assign inst73__config_data[31:0] = config_config_data[31:0];

  assign inst73__config_en = config_write[0];

  assign inst73__reset = reset;

  assign inst74__I_0[15:0] = north_I_layer16_2[15:0];

  assign inst74__I_1[15:0] = west_I_layer16_2[15:0];

  assign inst74__I_2[15:0] = south_I_layer16_2[15:0];

  assign inst74__I_3[15:0] = res[15:0];

  assign east_O_layer16_2[15:0] = inst74__O[15:0];

  assign inst74__S[1:0] = inst75__O[1:0];

  assign inst75__clk = clk;

  assign inst75__config_addr[7:0] = config_config_addr[7:0];

  assign inst75__config_data[31:0] = config_config_data[31:0];

  assign inst75__config_en = config_write[0];

  assign inst75__reset = reset;

  assign inst76__I_0[15:0] = north_I_layer16_3[15:0];

  assign inst76__I_1[15:0] = west_I_layer16_3[15:0];

  assign inst76__I_2[15:0] = south_I_layer16_3[15:0];

  assign inst76__I_3[15:0] = res[15:0];

  assign east_O_layer16_3[15:0] = inst76__O[15:0];

  assign inst76__S[1:0] = inst77__O[1:0];

  assign inst77__clk = clk;

  assign inst77__config_addr[7:0] = config_config_addr[7:0];

  assign inst77__config_data[31:0] = config_config_data[31:0];

  assign inst77__config_en = config_write[0];

  assign inst77__reset = reset;

  assign inst78__I_0[15:0] = north_I_layer16_4[15:0];

  assign inst78__I_1[15:0] = west_I_layer16_4[15:0];

  assign inst78__I_2[15:0] = south_I_layer16_4[15:0];

  assign inst78__I_3[15:0] = res[15:0];

  assign east_O_layer16_4[15:0] = inst78__O[15:0];

  assign inst78__S[1:0] = inst79__O[1:0];

  assign inst79__clk = clk;

  assign inst79__config_addr[7:0] = config_config_addr[7:0];

  assign inst79__config_data[31:0] = config_config_data[31:0];

  assign inst79__config_en = config_write[0];

  assign inst79__reset = reset;

  assign inst8__I_0[0:0] = west_I_layer1_4[0:0];

  assign inst8__I_1[0:0] = south_I_layer1_4[0:0];

  assign inst8__I_2[0:0] = east_I_layer1_4[0:0];

  assign inst8__I_3[0:0] = res_p[0:0];

  assign north_O_layer1_4[0:0] = inst8__O[0:0];

  assign inst8__S[1:0] = inst9__O[1:0];

  assign inst80__I_0[31:0] = inst81__O[31:0];

  assign inst80__I_1[31:0] = inst82__O[31:0];

  assign inst80__I_10[31:0] = inst91__O[31:0];

  assign inst80__I_11[31:0] = inst92__O[31:0];

  assign inst80__I_12[31:0] = inst93__O[31:0];

  assign inst80__I_13[31:0] = inst94__O[31:0];

  assign inst80__I_14[31:0] = inst95__O[31:0];

  assign inst80__I_15[31:0] = inst96__O[31:0];

  assign inst80__I_16[31:0] = inst97__O[31:0];

  assign inst80__I_17[31:0] = inst98__O[31:0];

  assign inst80__I_18[31:0] = inst99__O[31:0];

  assign inst80__I_2[31:0] = inst83__O[31:0];

  assign inst80__I_3[31:0] = inst84__O[31:0];

  assign inst80__I_4[31:0] = inst85__O[31:0];

  assign inst80__I_5[31:0] = inst86__O[31:0];

  assign inst80__I_6[31:0] = inst87__O[31:0];

  assign inst80__I_7[31:0] = inst88__O[31:0];

  assign inst80__I_8[31:0] = inst89__O[31:0];

  assign inst80__I_9[31:0] = inst90__O[31:0];

  assign read_config_data[31:0] = inst80__O[31:0];

  assign inst80__S[0] = config_config_addr[0];

  assign inst80__S[1] = config_config_addr[1];

  assign inst80__S[2] = config_config_addr[2];

  assign inst80__S[3] = config_config_addr[3];

  assign inst80__S[4] = config_config_addr[4];

  assign inst80__S[5] = config_config_addr[5];

  assign inst85__I[1:0] = inst9__O[1:0];

  assign inst9__clk = clk;

  assign inst9__config_addr[7:0] = config_config_addr[7:0];

  assign inst9__config_data[31:0] = config_config_data[31:0];

  assign inst9__config_en = config_write[0];

  assign inst9__reset = reset;


endmodule  // SB_Out_Bits_16___Out_Bits_1__

module ZextWrapper_4_32 (
  input [3:0] I,
  output [31:0] O
);


  wire  bit_const_0_None__out;
  corebit_const #(.value(0)) bit_const_0_None(
    .out(bit_const_0_None__out)
  );

  assign O[10] = bit_const_0_None__out;

  assign O[11] = bit_const_0_None__out;

  assign O[12] = bit_const_0_None__out;

  assign O[13] = bit_const_0_None__out;

  assign O[14] = bit_const_0_None__out;

  assign O[15] = bit_const_0_None__out;

  assign O[16] = bit_const_0_None__out;

  assign O[17] = bit_const_0_None__out;

  assign O[18] = bit_const_0_None__out;

  assign O[19] = bit_const_0_None__out;

  assign O[20] = bit_const_0_None__out;

  assign O[21] = bit_const_0_None__out;

  assign O[22] = bit_const_0_None__out;

  assign O[23] = bit_const_0_None__out;

  assign O[24] = bit_const_0_None__out;

  assign O[25] = bit_const_0_None__out;

  assign O[26] = bit_const_0_None__out;

  assign O[27] = bit_const_0_None__out;

  assign O[28] = bit_const_0_None__out;

  assign O[29] = bit_const_0_None__out;

  assign O[30] = bit_const_0_None__out;

  assign O[31] = bit_const_0_None__out;

  assign O[4] = bit_const_0_None__out;

  assign O[5] = bit_const_0_None__out;

  assign O[6] = bit_const_0_None__out;

  assign O[7] = bit_const_0_None__out;

  assign O[8] = bit_const_0_None__out;

  assign O[9] = bit_const_0_None__out;

  assign O[0] = I[0];

  assign O[1] = I[1];

  assign O[2] = I[2];

  assign O[3] = I[3];


endmodule  // ZextWrapper_4_32

module CB_10_1 (
  input [0:0] I_0,
  input [0:0] I_1,
  input [0:0] I_2,
  input [0:0] I_3,
  input [0:0] I_4,
  input [0:0] I_5,
  input [0:0] I_6,
  input [0:0] I_7,
  input [0:0] I_8,
  input [0:0] I_9,
  output [0:0] O,
  input  clk,
  input [7:0] config_config_addr,
  input [31:0] config_config_data,
  input [0:0] config_read,
  input [0:0] config_write,
  output [31:0] read_config_data,
  input  reset
);


  wire [3:0] inst0__O;
  wire  inst0__clk;
  wire [7:0] inst0__config_addr;
  wire [31:0] inst0__config_data;
  wire  inst0__config_en;
  wire  inst0__reset;
  ConfigRegister_4_8_32_0 inst0(
    .O(inst0__O),
    .clk(inst0__clk),
    .config_addr(inst0__config_addr),
    .config_data(inst0__config_data),
    .config_en(inst0__config_en),
    .reset(inst0__reset)
  );

  wire [3:0] inst1__I;
  wire [31:0] inst1__O;
  ZextWrapper_4_32 inst1(
    .I(inst1__I),
    .O(inst1__O)
  );

  wire [0:0] inst2__I_0;
  wire [0:0] inst2__I_1;
  wire [0:0] inst2__I_2;
  wire [0:0] inst2__I_3;
  wire [0:0] inst2__I_4;
  wire [0:0] inst2__I_5;
  wire [0:0] inst2__I_6;
  wire [0:0] inst2__I_7;
  wire [0:0] inst2__I_8;
  wire [0:0] inst2__I_9;
  wire [0:0] inst2__O;
  wire [3:0] inst2__S;
  MuxWrapper_10_1 inst2(
    .I_0(inst2__I_0),
    .I_1(inst2__I_1),
    .I_2(inst2__I_2),
    .I_3(inst2__I_3),
    .I_4(inst2__I_4),
    .I_5(inst2__I_5),
    .I_6(inst2__I_6),
    .I_7(inst2__I_7),
    .I_8(inst2__I_8),
    .I_9(inst2__I_9),
    .O(inst2__O),
    .S(inst2__S)
  );

  assign inst1__I[3:0] = inst0__O[3:0];

  assign inst2__S[3:0] = inst0__O[3:0];

  assign inst0__clk = clk;

  assign inst0__config_addr[7:0] = config_config_addr[7:0];

  assign inst0__config_data[31:0] = config_config_data[31:0];

  assign inst0__config_en = config_write[0];

  assign inst0__reset = reset;

  assign read_config_data[31:0] = inst1__O[31:0];

  assign inst2__I_0[0:0] = I_0[0:0];

  assign inst2__I_1[0:0] = I_1[0:0];

  assign inst2__I_2[0:0] = I_2[0:0];

  assign inst2__I_3[0:0] = I_3[0:0];

  assign inst2__I_4[0:0] = I_4[0:0];

  assign inst2__I_5[0:0] = I_5[0:0];

  assign inst2__I_6[0:0] = I_6[0:0];

  assign inst2__I_7[0:0] = I_7[0:0];

  assign inst2__I_8[0:0] = I_8[0:0];

  assign inst2__I_9[0:0] = I_9[0:0];

  assign O[0:0] = inst2__O[0:0];


endmodule  // CB_10_1

module CB_10_16 (
  input [15:0] I_0,
  input [15:0] I_1,
  input [15:0] I_2,
  input [15:0] I_3,
  input [15:0] I_4,
  input [15:0] I_5,
  input [15:0] I_6,
  input [15:0] I_7,
  input [15:0] I_8,
  input [15:0] I_9,
  output [15:0] O,
  input  clk,
  input [7:0] config_config_addr,
  input [31:0] config_config_data,
  input [0:0] config_read,
  input [0:0] config_write,
  output [31:0] read_config_data,
  input  reset
);


  wire [3:0] inst0__O;
  wire  inst0__clk;
  wire [7:0] inst0__config_addr;
  wire [31:0] inst0__config_data;
  wire  inst0__config_en;
  wire  inst0__reset;
  ConfigRegister_4_8_32_0 inst0(
    .O(inst0__O),
    .clk(inst0__clk),
    .config_addr(inst0__config_addr),
    .config_data(inst0__config_data),
    .config_en(inst0__config_en),
    .reset(inst0__reset)
  );

  wire [3:0] inst1__I;
  wire [31:0] inst1__O;
  ZextWrapper_4_32 inst1(
    .I(inst1__I),
    .O(inst1__O)
  );

  wire [15:0] inst2__I_0;
  wire [15:0] inst2__I_1;
  wire [15:0] inst2__I_2;
  wire [15:0] inst2__I_3;
  wire [15:0] inst2__I_4;
  wire [15:0] inst2__I_5;
  wire [15:0] inst2__I_6;
  wire [15:0] inst2__I_7;
  wire [15:0] inst2__I_8;
  wire [15:0] inst2__I_9;
  wire [15:0] inst2__O;
  wire [3:0] inst2__S;
  MuxWrapper_10_16 inst2(
    .I_0(inst2__I_0),
    .I_1(inst2__I_1),
    .I_2(inst2__I_2),
    .I_3(inst2__I_3),
    .I_4(inst2__I_4),
    .I_5(inst2__I_5),
    .I_6(inst2__I_6),
    .I_7(inst2__I_7),
    .I_8(inst2__I_8),
    .I_9(inst2__I_9),
    .O(inst2__O),
    .S(inst2__S)
  );

  assign inst1__I[3:0] = inst0__O[3:0];

  assign inst2__S[3:0] = inst0__O[3:0];

  assign inst0__clk = clk;

  assign inst0__config_addr[7:0] = config_config_addr[7:0];

  assign inst0__config_data[31:0] = config_config_data[31:0];

  assign inst0__config_en = config_write[0];

  assign inst0__reset = reset;

  assign read_config_data[31:0] = inst1__O[31:0];

  assign inst2__I_0[15:0] = I_0[15:0];

  assign inst2__I_1[15:0] = I_1[15:0];

  assign inst2__I_2[15:0] = I_2[15:0];

  assign inst2__I_3[15:0] = I_3[15:0];

  assign inst2__I_4[15:0] = I_4[15:0];

  assign inst2__I_5[15:0] = I_5[15:0];

  assign inst2__I_6[15:0] = I_6[15:0];

  assign inst2__I_7[15:0] = I_7[15:0];

  assign inst2__I_8[15:0] = I_8[15:0];

  assign inst2__I_9[15:0] = I_9[15:0];

  assign O[15:0] = inst2__O[15:0];


endmodule  // CB_10_16

module Tile_PECore (
  input  clk,
  input [31:0] config_config_addr,
  input [31:0] config_config_data,
  input [0:0] config_read,
  input [0:0] config_write,
  input [15:0] east_I_layer16_0,
  input [15:0] east_I_layer16_1,
  input [15:0] east_I_layer16_2,
  input [15:0] east_I_layer16_3,
  input [15:0] east_I_layer16_4,
  input [0:0] east_I_layer1_0,
  input [0:0] east_I_layer1_1,
  input [0:0] east_I_layer1_2,
  input [0:0] east_I_layer1_3,
  input [0:0] east_I_layer1_4,
  output [15:0] east_O_layer16_0,
  output [15:0] east_O_layer16_1,
  output [15:0] east_O_layer16_2,
  output [15:0] east_O_layer16_3,
  output [15:0] east_O_layer16_4,
  output [0:0] east_O_layer1_0,
  output [0:0] east_O_layer1_1,
  output [0:0] east_O_layer1_2,
  output [0:0] east_O_layer1_3,
  output [0:0] east_O_layer1_4,
  input [15:0] north_I_layer16_0,
  input [15:0] north_I_layer16_1,
  input [15:0] north_I_layer16_2,
  input [15:0] north_I_layer16_3,
  input [15:0] north_I_layer16_4,
  input [0:0] north_I_layer1_0,
  input [0:0] north_I_layer1_1,
  input [0:0] north_I_layer1_2,
  input [0:0] north_I_layer1_3,
  input [0:0] north_I_layer1_4,
  output [15:0] north_O_layer16_0,
  output [15:0] north_O_layer16_1,
  output [15:0] north_O_layer16_2,
  output [15:0] north_O_layer16_3,
  output [15:0] north_O_layer16_4,
  output [0:0] north_O_layer1_0,
  output [0:0] north_O_layer1_1,
  output [0:0] north_O_layer1_2,
  output [0:0] north_O_layer1_3,
  output [0:0] north_O_layer1_4,
  output [31:0] read_config_data,
  input  reset,
  input [15:0] south_I_layer16_0,
  input [15:0] south_I_layer16_1,
  input [15:0] south_I_layer16_2,
  input [15:0] south_I_layer16_3,
  input [15:0] south_I_layer16_4,
  input [0:0] south_I_layer1_0,
  input [0:0] south_I_layer1_1,
  input [0:0] south_I_layer1_2,
  input [0:0] south_I_layer1_3,
  input [0:0] south_I_layer1_4,
  output [15:0] south_O_layer16_0,
  output [15:0] south_O_layer16_1,
  output [15:0] south_O_layer16_2,
  output [15:0] south_O_layer16_3,
  output [15:0] south_O_layer16_4,
  output [0:0] south_O_layer1_0,
  output [0:0] south_O_layer1_1,
  output [0:0] south_O_layer1_2,
  output [0:0] south_O_layer1_3,
  output [0:0] south_O_layer1_4,
  input [15:0] tile_id,
  input [15:0] west_I_layer16_0,
  input [15:0] west_I_layer16_1,
  input [15:0] west_I_layer16_2,
  input [15:0] west_I_layer16_3,
  input [15:0] west_I_layer16_4,
  input [0:0] west_I_layer1_0,
  input [0:0] west_I_layer1_1,
  input [0:0] west_I_layer1_2,
  input [0:0] west_I_layer1_3,
  input [0:0] west_I_layer1_4,
  output [15:0] west_O_layer16_0,
  output [15:0] west_O_layer16_1,
  output [15:0] west_O_layer16_2,
  output [15:0] west_O_layer16_3,
  output [15:0] west_O_layer16_4,
  output [0:0] west_O_layer1_0,
  output [0:0] west_O_layer1_1,
  output [0:0] west_O_layer1_2,
  output [0:0] west_O_layer1_3,
  output [0:0] west_O_layer1_4
);


  wire  inst0__clk;
  wire [7:0] inst0__config_config_addr;
  wire [31:0] inst0__config_config_data;
  wire [0:0] inst0__config_read;
  wire [0:0] inst0__config_write;
  wire [15:0] inst0__east_I_layer16_0;
  wire [15:0] inst0__east_I_layer16_1;
  wire [15:0] inst0__east_I_layer16_2;
  wire [15:0] inst0__east_I_layer16_3;
  wire [15:0] inst0__east_I_layer16_4;
  wire [0:0] inst0__east_I_layer1_0;
  wire [0:0] inst0__east_I_layer1_1;
  wire [0:0] inst0__east_I_layer1_2;
  wire [0:0] inst0__east_I_layer1_3;
  wire [0:0] inst0__east_I_layer1_4;
  wire [15:0] inst0__east_O_layer16_0;
  wire [15:0] inst0__east_O_layer16_1;
  wire [15:0] inst0__east_O_layer16_2;
  wire [15:0] inst0__east_O_layer16_3;
  wire [15:0] inst0__east_O_layer16_4;
  wire [0:0] inst0__east_O_layer1_0;
  wire [0:0] inst0__east_O_layer1_1;
  wire [0:0] inst0__east_O_layer1_2;
  wire [0:0] inst0__east_O_layer1_3;
  wire [0:0] inst0__east_O_layer1_4;
  wire [15:0] inst0__north_I_layer16_0;
  wire [15:0] inst0__north_I_layer16_1;
  wire [15:0] inst0__north_I_layer16_2;
  wire [15:0] inst0__north_I_layer16_3;
  wire [15:0] inst0__north_I_layer16_4;
  wire [0:0] inst0__north_I_layer1_0;
  wire [0:0] inst0__north_I_layer1_1;
  wire [0:0] inst0__north_I_layer1_2;
  wire [0:0] inst0__north_I_layer1_3;
  wire [0:0] inst0__north_I_layer1_4;
  wire [15:0] inst0__north_O_layer16_0;
  wire [15:0] inst0__north_O_layer16_1;
  wire [15:0] inst0__north_O_layer16_2;
  wire [15:0] inst0__north_O_layer16_3;
  wire [15:0] inst0__north_O_layer16_4;
  wire [0:0] inst0__north_O_layer1_0;
  wire [0:0] inst0__north_O_layer1_1;
  wire [0:0] inst0__north_O_layer1_2;
  wire [0:0] inst0__north_O_layer1_3;
  wire [0:0] inst0__north_O_layer1_4;
  wire [31:0] inst0__read_config_data;
  wire [15:0] inst0__res;
  wire [0:0] inst0__res_p;
  wire  inst0__reset;
  wire [15:0] inst0__south_I_layer16_0;
  wire [15:0] inst0__south_I_layer16_1;
  wire [15:0] inst0__south_I_layer16_2;
  wire [15:0] inst0__south_I_layer16_3;
  wire [15:0] inst0__south_I_layer16_4;
  wire [0:0] inst0__south_I_layer1_0;
  wire [0:0] inst0__south_I_layer1_1;
  wire [0:0] inst0__south_I_layer1_2;
  wire [0:0] inst0__south_I_layer1_3;
  wire [0:0] inst0__south_I_layer1_4;
  wire [15:0] inst0__south_O_layer16_0;
  wire [15:0] inst0__south_O_layer16_1;
  wire [15:0] inst0__south_O_layer16_2;
  wire [15:0] inst0__south_O_layer16_3;
  wire [15:0] inst0__south_O_layer16_4;
  wire [0:0] inst0__south_O_layer1_0;
  wire [0:0] inst0__south_O_layer1_1;
  wire [0:0] inst0__south_O_layer1_2;
  wire [0:0] inst0__south_O_layer1_3;
  wire [0:0] inst0__south_O_layer1_4;
  wire [15:0] inst0__west_I_layer16_0;
  wire [15:0] inst0__west_I_layer16_1;
  wire [15:0] inst0__west_I_layer16_2;
  wire [15:0] inst0__west_I_layer16_3;
  wire [15:0] inst0__west_I_layer16_4;
  wire [0:0] inst0__west_I_layer1_0;
  wire [0:0] inst0__west_I_layer1_1;
  wire [0:0] inst0__west_I_layer1_2;
  wire [0:0] inst0__west_I_layer1_3;
  wire [0:0] inst0__west_I_layer1_4;
  wire [15:0] inst0__west_O_layer16_0;
  wire [15:0] inst0__west_O_layer16_1;
  wire [15:0] inst0__west_O_layer16_2;
  wire [15:0] inst0__west_O_layer16_3;
  wire [15:0] inst0__west_O_layer16_4;
  wire [0:0] inst0__west_O_layer1_0;
  wire [0:0] inst0__west_O_layer1_1;
  wire [0:0] inst0__west_O_layer1_2;
  wire [0:0] inst0__west_O_layer1_3;
  wire [0:0] inst0__west_O_layer1_4;
  SB_Out_Bits_16___Out_Bits_1__ inst0(
    .clk(inst0__clk),
    .config_config_addr(inst0__config_config_addr),
    .config_config_data(inst0__config_config_data),
    .config_read(inst0__config_read),
    .config_write(inst0__config_write),
    .east_I_layer16_0(inst0__east_I_layer16_0),
    .east_I_layer16_1(inst0__east_I_layer16_1),
    .east_I_layer16_2(inst0__east_I_layer16_2),
    .east_I_layer16_3(inst0__east_I_layer16_3),
    .east_I_layer16_4(inst0__east_I_layer16_4),
    .east_I_layer1_0(inst0__east_I_layer1_0),
    .east_I_layer1_1(inst0__east_I_layer1_1),
    .east_I_layer1_2(inst0__east_I_layer1_2),
    .east_I_layer1_3(inst0__east_I_layer1_3),
    .east_I_layer1_4(inst0__east_I_layer1_4),
    .east_O_layer16_0(inst0__east_O_layer16_0),
    .east_O_layer16_1(inst0__east_O_layer16_1),
    .east_O_layer16_2(inst0__east_O_layer16_2),
    .east_O_layer16_3(inst0__east_O_layer16_3),
    .east_O_layer16_4(inst0__east_O_layer16_4),
    .east_O_layer1_0(inst0__east_O_layer1_0),
    .east_O_layer1_1(inst0__east_O_layer1_1),
    .east_O_layer1_2(inst0__east_O_layer1_2),
    .east_O_layer1_3(inst0__east_O_layer1_3),
    .east_O_layer1_4(inst0__east_O_layer1_4),
    .north_I_layer16_0(inst0__north_I_layer16_0),
    .north_I_layer16_1(inst0__north_I_layer16_1),
    .north_I_layer16_2(inst0__north_I_layer16_2),
    .north_I_layer16_3(inst0__north_I_layer16_3),
    .north_I_layer16_4(inst0__north_I_layer16_4),
    .north_I_layer1_0(inst0__north_I_layer1_0),
    .north_I_layer1_1(inst0__north_I_layer1_1),
    .north_I_layer1_2(inst0__north_I_layer1_2),
    .north_I_layer1_3(inst0__north_I_layer1_3),
    .north_I_layer1_4(inst0__north_I_layer1_4),
    .north_O_layer16_0(inst0__north_O_layer16_0),
    .north_O_layer16_1(inst0__north_O_layer16_1),
    .north_O_layer16_2(inst0__north_O_layer16_2),
    .north_O_layer16_3(inst0__north_O_layer16_3),
    .north_O_layer16_4(inst0__north_O_layer16_4),
    .north_O_layer1_0(inst0__north_O_layer1_0),
    .north_O_layer1_1(inst0__north_O_layer1_1),
    .north_O_layer1_2(inst0__north_O_layer1_2),
    .north_O_layer1_3(inst0__north_O_layer1_3),
    .north_O_layer1_4(inst0__north_O_layer1_4),
    .read_config_data(inst0__read_config_data),
    .res(inst0__res),
    .res_p(inst0__res_p),
    .reset(inst0__reset),
    .south_I_layer16_0(inst0__south_I_layer16_0),
    .south_I_layer16_1(inst0__south_I_layer16_1),
    .south_I_layer16_2(inst0__south_I_layer16_2),
    .south_I_layer16_3(inst0__south_I_layer16_3),
    .south_I_layer16_4(inst0__south_I_layer16_4),
    .south_I_layer1_0(inst0__south_I_layer1_0),
    .south_I_layer1_1(inst0__south_I_layer1_1),
    .south_I_layer1_2(inst0__south_I_layer1_2),
    .south_I_layer1_3(inst0__south_I_layer1_3),
    .south_I_layer1_4(inst0__south_I_layer1_4),
    .south_O_layer16_0(inst0__south_O_layer16_0),
    .south_O_layer16_1(inst0__south_O_layer16_1),
    .south_O_layer16_2(inst0__south_O_layer16_2),
    .south_O_layer16_3(inst0__south_O_layer16_3),
    .south_O_layer16_4(inst0__south_O_layer16_4),
    .south_O_layer1_0(inst0__south_O_layer1_0),
    .south_O_layer1_1(inst0__south_O_layer1_1),
    .south_O_layer1_2(inst0__south_O_layer1_2),
    .south_O_layer1_3(inst0__south_O_layer1_3),
    .south_O_layer1_4(inst0__south_O_layer1_4),
    .west_I_layer16_0(inst0__west_I_layer16_0),
    .west_I_layer16_1(inst0__west_I_layer16_1),
    .west_I_layer16_2(inst0__west_I_layer16_2),
    .west_I_layer16_3(inst0__west_I_layer16_3),
    .west_I_layer16_4(inst0__west_I_layer16_4),
    .west_I_layer1_0(inst0__west_I_layer1_0),
    .west_I_layer1_1(inst0__west_I_layer1_1),
    .west_I_layer1_2(inst0__west_I_layer1_2),
    .west_I_layer1_3(inst0__west_I_layer1_3),
    .west_I_layer1_4(inst0__west_I_layer1_4),
    .west_O_layer16_0(inst0__west_O_layer16_0),
    .west_O_layer16_1(inst0__west_O_layer16_1),
    .west_O_layer16_2(inst0__west_O_layer16_2),
    .west_O_layer16_3(inst0__west_O_layer16_3),
    .west_O_layer16_4(inst0__west_O_layer16_4),
    .west_O_layer1_0(inst0__west_O_layer1_0),
    .west_O_layer1_1(inst0__west_O_layer1_1),
    .west_O_layer1_2(inst0__west_O_layer1_2),
    .west_O_layer1_3(inst0__west_O_layer1_3),
    .west_O_layer1_4(inst0__west_O_layer1_4)
  );

  wire [15:0] inst1__I_0;
  wire [15:0] inst1__I_1;
  wire [15:0] inst1__I_2;
  wire [15:0] inst1__I_3;
  wire [15:0] inst1__I_4;
  wire [15:0] inst1__I_5;
  wire [15:0] inst1__I_6;
  wire [15:0] inst1__I_7;
  wire [15:0] inst1__I_8;
  wire [15:0] inst1__I_9;
  wire [15:0] inst1__O;
  wire  inst1__clk;
  wire [7:0] inst1__config_config_addr;
  wire [31:0] inst1__config_config_data;
  wire [0:0] inst1__config_read;
  wire [0:0] inst1__config_write;
  wire [31:0] inst1__read_config_data;
  wire  inst1__reset;
  CB_10_16 inst1(
    .I_0(inst1__I_0),
    .I_1(inst1__I_1),
    .I_2(inst1__I_2),
    .I_3(inst1__I_3),
    .I_4(inst1__I_4),
    .I_5(inst1__I_5),
    .I_6(inst1__I_6),
    .I_7(inst1__I_7),
    .I_8(inst1__I_8),
    .I_9(inst1__I_9),
    .O(inst1__O),
    .clk(inst1__clk),
    .config_config_addr(inst1__config_config_addr),
    .config_config_data(inst1__config_config_data),
    .config_read(inst1__config_read),
    .config_write(inst1__config_write),
    .read_config_data(inst1__read_config_data),
    .reset(inst1__reset)
  );

  wire  inst10__in0;
  wire  inst10__in1;
  wire  inst10__out;
  corebit_and inst10(
    .in0(inst10__in0),
    .in1(inst10__in1),
    .out(inst10__out)
  );

  wire  inst11__in0;
  wire  inst11__in1;
  wire  inst11__out;
  corebit_and inst11(
    .in0(inst11__in0),
    .in1(inst11__in1),
    .out(inst11__out)
  );

  wire [7:0] inst12__I;
  wire  inst12__O;
  Decode08 inst12(
    .I(inst12__I),
    .O(inst12__O)
  );

  wire  inst13__in0;
  wire  inst13__in1;
  wire  inst13__out;
  corebit_and inst13(
    .in0(inst13__in0),
    .in1(inst13__in1),
    .out(inst13__out)
  );

  wire [7:0] inst14__I;
  wire  inst14__O;
  Decode18 inst14(
    .I(inst14__I),
    .O(inst14__O)
  );

  wire  inst15__in0;
  wire  inst15__in1;
  wire  inst15__out;
  corebit_and inst15(
    .in0(inst15__in0),
    .in1(inst15__in1),
    .out(inst15__out)
  );

  wire [7:0] inst16__I;
  wire  inst16__O;
  Decode28 inst16(
    .I(inst16__I),
    .O(inst16__O)
  );

  wire  inst17__in0;
  wire  inst17__in1;
  wire  inst17__out;
  corebit_and inst17(
    .in0(inst17__in0),
    .in1(inst17__in1),
    .out(inst17__out)
  );

  wire [7:0] inst18__I;
  wire  inst18__O;
  Decode38 inst18(
    .I(inst18__I),
    .O(inst18__O)
  );

  wire  inst19__in0;
  wire  inst19__in1;
  wire  inst19__out;
  corebit_and inst19(
    .in0(inst19__in0),
    .in1(inst19__in1),
    .out(inst19__out)
  );

  wire [15:0] inst2__I_0;
  wire [15:0] inst2__I_1;
  wire [15:0] inst2__I_2;
  wire [15:0] inst2__I_3;
  wire [15:0] inst2__I_4;
  wire [15:0] inst2__I_5;
  wire [15:0] inst2__I_6;
  wire [15:0] inst2__I_7;
  wire [15:0] inst2__I_8;
  wire [15:0] inst2__I_9;
  wire [15:0] inst2__O;
  wire  inst2__clk;
  wire [7:0] inst2__config_config_addr;
  wire [31:0] inst2__config_config_data;
  wire [0:0] inst2__config_read;
  wire [0:0] inst2__config_write;
  wire [31:0] inst2__read_config_data;
  wire  inst2__reset;
  CB_10_16 inst2(
    .I_0(inst2__I_0),
    .I_1(inst2__I_1),
    .I_2(inst2__I_2),
    .I_3(inst2__I_3),
    .I_4(inst2__I_4),
    .I_5(inst2__I_5),
    .I_6(inst2__I_6),
    .I_7(inst2__I_7),
    .I_8(inst2__I_8),
    .I_9(inst2__I_9),
    .O(inst2__O),
    .clk(inst2__clk),
    .config_config_addr(inst2__config_config_addr),
    .config_config_data(inst2__config_config_data),
    .config_read(inst2__config_read),
    .config_write(inst2__config_write),
    .read_config_data(inst2__read_config_data),
    .reset(inst2__reset)
  );

  wire [7:0] inst20__I;
  wire  inst20__O;
  Decode48 inst20(
    .I(inst20__I),
    .O(inst20__O)
  );

  wire  inst21__in0;
  wire  inst21__in1;
  wire  inst21__out;
  corebit_and inst21(
    .in0(inst21__in0),
    .in1(inst21__in1),
    .out(inst21__out)
  );

  wire [7:0] inst22__I;
  wire  inst22__O;
  Decode58 inst22(
    .I(inst22__I),
    .O(inst22__O)
  );

  wire  inst23__in0;
  wire  inst23__in1;
  wire  inst23__out;
  corebit_and inst23(
    .in0(inst23__in0),
    .in1(inst23__in1),
    .out(inst23__out)
  );

  wire [7:0] inst24__I;
  wire  inst24__O;
  Decode68 inst24(
    .I(inst24__I),
    .O(inst24__O)
  );

  wire  inst25__in0;
  wire  inst25__in1;
  wire  inst25__out;
  corebit_and inst25(
    .in0(inst25__in0),
    .in1(inst25__in1),
    .out(inst25__out)
  );

  wire [7:0] inst26__I;
  wire  inst26__O;
  Decode78 inst26(
    .I(inst26__I),
    .O(inst26__O)
  );

  wire  inst27__in0;
  wire  inst27__in1;
  wire  inst27__out;
  corebit_and inst27(
    .in0(inst27__in0),
    .in1(inst27__in1),
    .out(inst27__out)
  );

  wire [15:0] inst3__I_0;
  wire [15:0] inst3__I_1;
  wire [15:0] inst3__I_2;
  wire [15:0] inst3__I_3;
  wire [15:0] inst3__I_4;
  wire [15:0] inst3__I_5;
  wire [15:0] inst3__I_6;
  wire [15:0] inst3__I_7;
  wire [15:0] inst3__I_8;
  wire [15:0] inst3__I_9;
  wire [15:0] inst3__O;
  wire  inst3__clk;
  wire [7:0] inst3__config_config_addr;
  wire [31:0] inst3__config_config_data;
  wire [0:0] inst3__config_read;
  wire [0:0] inst3__config_write;
  wire [31:0] inst3__read_config_data;
  wire  inst3__reset;
  CB_10_16 inst3(
    .I_0(inst3__I_0),
    .I_1(inst3__I_1),
    .I_2(inst3__I_2),
    .I_3(inst3__I_3),
    .I_4(inst3__I_4),
    .I_5(inst3__I_5),
    .I_6(inst3__I_6),
    .I_7(inst3__I_7),
    .I_8(inst3__I_8),
    .I_9(inst3__I_9),
    .O(inst3__O),
    .clk(inst3__clk),
    .config_config_addr(inst3__config_config_addr),
    .config_config_data(inst3__config_config_data),
    .config_read(inst3__config_read),
    .config_write(inst3__config_write),
    .read_config_data(inst3__read_config_data),
    .reset(inst3__reset)
  );

  wire [0:0] inst4__I_0;
  wire [0:0] inst4__I_1;
  wire [0:0] inst4__I_2;
  wire [0:0] inst4__I_3;
  wire [0:0] inst4__I_4;
  wire [0:0] inst4__I_5;
  wire [0:0] inst4__I_6;
  wire [0:0] inst4__I_7;
  wire [0:0] inst4__I_8;
  wire [0:0] inst4__I_9;
  wire [0:0] inst4__O;
  wire  inst4__clk;
  wire [7:0] inst4__config_config_addr;
  wire [31:0] inst4__config_config_data;
  wire [0:0] inst4__config_read;
  wire [0:0] inst4__config_write;
  wire [31:0] inst4__read_config_data;
  wire  inst4__reset;
  CB_10_1 inst4(
    .I_0(inst4__I_0),
    .I_1(inst4__I_1),
    .I_2(inst4__I_2),
    .I_3(inst4__I_3),
    .I_4(inst4__I_4),
    .I_5(inst4__I_5),
    .I_6(inst4__I_6),
    .I_7(inst4__I_7),
    .I_8(inst4__I_8),
    .I_9(inst4__I_9),
    .O(inst4__O),
    .clk(inst4__clk),
    .config_config_addr(inst4__config_config_addr),
    .config_config_data(inst4__config_config_data),
    .config_read(inst4__config_read),
    .config_write(inst4__config_write),
    .read_config_data(inst4__read_config_data),
    .reset(inst4__reset)
  );

  wire [0:0] inst5__I_0;
  wire [0:0] inst5__I_1;
  wire [0:0] inst5__I_2;
  wire [0:0] inst5__I_3;
  wire [0:0] inst5__I_4;
  wire [0:0] inst5__I_5;
  wire [0:0] inst5__I_6;
  wire [0:0] inst5__I_7;
  wire [0:0] inst5__I_8;
  wire [0:0] inst5__I_9;
  wire [0:0] inst5__O;
  wire  inst5__clk;
  wire [7:0] inst5__config_config_addr;
  wire [31:0] inst5__config_config_data;
  wire [0:0] inst5__config_read;
  wire [0:0] inst5__config_write;
  wire [31:0] inst5__read_config_data;
  wire  inst5__reset;
  CB_10_1 inst5(
    .I_0(inst5__I_0),
    .I_1(inst5__I_1),
    .I_2(inst5__I_2),
    .I_3(inst5__I_3),
    .I_4(inst5__I_4),
    .I_5(inst5__I_5),
    .I_6(inst5__I_6),
    .I_7(inst5__I_7),
    .I_8(inst5__I_8),
    .I_9(inst5__I_9),
    .O(inst5__O),
    .clk(inst5__clk),
    .config_config_addr(inst5__config_config_addr),
    .config_config_data(inst5__config_config_data),
    .config_read(inst5__config_read),
    .config_write(inst5__config_write),
    .read_config_data(inst5__read_config_data),
    .reset(inst5__reset)
  );

  wire [0:0] inst6__I_0;
  wire [0:0] inst6__I_1;
  wire [0:0] inst6__I_2;
  wire [0:0] inst6__I_3;
  wire [0:0] inst6__I_4;
  wire [0:0] inst6__I_5;
  wire [0:0] inst6__I_6;
  wire [0:0] inst6__I_7;
  wire [0:0] inst6__I_8;
  wire [0:0] inst6__I_9;
  wire [0:0] inst6__O;
  wire  inst6__clk;
  wire [7:0] inst6__config_config_addr;
  wire [31:0] inst6__config_config_data;
  wire [0:0] inst6__config_read;
  wire [0:0] inst6__config_write;
  wire [31:0] inst6__read_config_data;
  wire  inst6__reset;
  CB_10_1 inst6(
    .I_0(inst6__I_0),
    .I_1(inst6__I_1),
    .I_2(inst6__I_2),
    .I_3(inst6__I_3),
    .I_4(inst6__I_4),
    .I_5(inst6__I_5),
    .I_6(inst6__I_6),
    .I_7(inst6__I_7),
    .I_8(inst6__I_8),
    .I_9(inst6__I_9),
    .O(inst6__O),
    .clk(inst6__clk),
    .config_config_addr(inst6__config_config_addr),
    .config_config_data(inst6__config_config_data),
    .config_read(inst6__config_read),
    .config_write(inst6__config_write),
    .read_config_data(inst6__read_config_data),
    .reset(inst6__reset)
  );

  wire [0:0] inst7__bit0;
  wire [0:0] inst7__bit1;
  wire [0:0] inst7__bit2;
  wire  inst7__clk;
  wire [7:0] inst7__config_config_addr;
  wire [31:0] inst7__config_config_data;
  wire [0:0] inst7__config_read;
  wire [0:0] inst7__config_write;
  wire [15:0] inst7__data0;
  wire [15:0] inst7__data1;
  wire [15:0] inst7__data2;
  wire [31:0] inst7__read_config_data;
  wire [15:0] inst7__res;
  wire [0:0] inst7__res_p;
  wire  inst7__reset;
  PECore inst7(
    .bit0(inst7__bit0),
    .bit1(inst7__bit1),
    .bit2(inst7__bit2),
    .clk(inst7__clk),
    .config_config_addr(inst7__config_config_addr),
    .config_config_data(inst7__config_config_data),
    .config_read(inst7__config_read),
    .config_write(inst7__config_write),
    .data0(inst7__data0),
    .data1(inst7__data1),
    .data2(inst7__data2),
    .read_config_data(inst7__read_config_data),
    .res(inst7__res),
    .res_p(inst7__res_p),
    .reset(inst7__reset)
  );

  wire [0:0] inst8__EN;
  wire [31:0] inst8__I_0;
  wire [31:0] inst8__I_1;
  wire [31:0] inst8__I_2;
  wire [31:0] inst8__I_3;
  wire [31:0] inst8__I_4;
  wire [31:0] inst8__I_5;
  wire [31:0] inst8__I_6;
  wire [31:0] inst8__I_7;
  wire [31:0] inst8__O;
  wire [7:0] inst8__S;
  MuxWithDefaultWrapper_8_32_8_0 inst8(
    .EN(inst8__EN),
    .I_0(inst8__I_0),
    .I_1(inst8__I_1),
    .I_2(inst8__I_2),
    .I_3(inst8__I_3),
    .I_4(inst8__I_4),
    .I_5(inst8__I_5),
    .I_6(inst8__I_6),
    .I_7(inst8__I_7),
    .O(inst8__O),
    .S(inst8__S)
  );

  // Instancing generated Module: coreir.eq(width:16)
  wire [15:0] inst9__in0;
  wire [15:0] inst9__in1;
  wire  inst9__out;
  coreir_eq #(.width(16)) inst9(
    .in0(inst9__in0),
    .in1(inst9__in1),
    .out(inst9__out)
  );

  assign inst0__clk = clk;

  assign inst0__config_config_addr[0] = config_config_addr[24];

  assign inst0__config_config_addr[1] = config_config_addr[25];

  assign inst0__config_config_addr[2] = config_config_addr[26];

  assign inst0__config_config_addr[3] = config_config_addr[27];

  assign inst0__config_config_addr[4] = config_config_addr[28];

  assign inst0__config_config_addr[5] = config_config_addr[29];

  assign inst0__config_config_addr[6] = config_config_addr[30];

  assign inst0__config_config_addr[7] = config_config_addr[31];

  assign inst0__config_config_data[31:0] = config_config_data[31:0];

  assign inst0__config_read[0:0] = config_read[0:0];

  assign inst0__config_write[0] = inst15__out;

  assign inst0__east_I_layer16_0[15:0] = east_I_layer16_0[15:0];

  assign inst0__east_I_layer16_1[15:0] = east_I_layer16_1[15:0];

  assign inst0__east_I_layer16_2[15:0] = east_I_layer16_2[15:0];

  assign inst0__east_I_layer16_3[15:0] = east_I_layer16_3[15:0];

  assign inst0__east_I_layer16_4[15:0] = east_I_layer16_4[15:0];

  assign inst0__east_I_layer1_0[0:0] = east_I_layer1_0[0:0];

  assign inst0__east_I_layer1_1[0:0] = east_I_layer1_1[0:0];

  assign inst0__east_I_layer1_2[0:0] = east_I_layer1_2[0:0];

  assign inst0__east_I_layer1_3[0:0] = east_I_layer1_3[0:0];

  assign inst0__east_I_layer1_4[0:0] = east_I_layer1_4[0:0];

  assign east_O_layer16_0[15:0] = inst0__east_O_layer16_0[15:0];

  assign east_O_layer16_1[15:0] = inst0__east_O_layer16_1[15:0];

  assign east_O_layer16_2[15:0] = inst0__east_O_layer16_2[15:0];

  assign east_O_layer16_3[15:0] = inst0__east_O_layer16_3[15:0];

  assign east_O_layer16_4[15:0] = inst0__east_O_layer16_4[15:0];

  assign east_O_layer1_0[0:0] = inst0__east_O_layer1_0[0:0];

  assign east_O_layer1_1[0:0] = inst0__east_O_layer1_1[0:0];

  assign east_O_layer1_2[0:0] = inst0__east_O_layer1_2[0:0];

  assign east_O_layer1_3[0:0] = inst0__east_O_layer1_3[0:0];

  assign east_O_layer1_4[0:0] = inst0__east_O_layer1_4[0:0];

  assign inst0__north_I_layer16_0[15:0] = north_I_layer16_0[15:0];

  assign inst0__north_I_layer16_1[15:0] = north_I_layer16_1[15:0];

  assign inst0__north_I_layer16_2[15:0] = north_I_layer16_2[15:0];

  assign inst0__north_I_layer16_3[15:0] = north_I_layer16_3[15:0];

  assign inst0__north_I_layer16_4[15:0] = north_I_layer16_4[15:0];

  assign inst0__north_I_layer1_0[0:0] = north_I_layer1_0[0:0];

  assign inst0__north_I_layer1_1[0:0] = north_I_layer1_1[0:0];

  assign inst0__north_I_layer1_2[0:0] = north_I_layer1_2[0:0];

  assign inst0__north_I_layer1_3[0:0] = north_I_layer1_3[0:0];

  assign inst0__north_I_layer1_4[0:0] = north_I_layer1_4[0:0];

  assign inst1__I_5[15:0] = inst0__north_O_layer16_0[15:0];

  assign inst3__I_5[15:0] = inst0__north_O_layer16_0[15:0];

  assign north_O_layer16_0[15:0] = inst0__north_O_layer16_0[15:0];

  assign inst1__I_6[15:0] = inst0__north_O_layer16_1[15:0];

  assign inst3__I_6[15:0] = inst0__north_O_layer16_1[15:0];

  assign north_O_layer16_1[15:0] = inst0__north_O_layer16_1[15:0];

  assign inst1__I_7[15:0] = inst0__north_O_layer16_2[15:0];

  assign inst3__I_7[15:0] = inst0__north_O_layer16_2[15:0];

  assign north_O_layer16_2[15:0] = inst0__north_O_layer16_2[15:0];

  assign inst1__I_8[15:0] = inst0__north_O_layer16_3[15:0];

  assign inst3__I_8[15:0] = inst0__north_O_layer16_3[15:0];

  assign north_O_layer16_3[15:0] = inst0__north_O_layer16_3[15:0];

  assign inst1__I_9[15:0] = inst0__north_O_layer16_4[15:0];

  assign inst3__I_9[15:0] = inst0__north_O_layer16_4[15:0];

  assign north_O_layer16_4[15:0] = inst0__north_O_layer16_4[15:0];

  assign inst5__I_5[0:0] = inst0__north_O_layer1_0[0:0];

  assign north_O_layer1_0[0:0] = inst0__north_O_layer1_0[0:0];

  assign inst5__I_6[0:0] = inst0__north_O_layer1_1[0:0];

  assign north_O_layer1_1[0:0] = inst0__north_O_layer1_1[0:0];

  assign inst5__I_7[0:0] = inst0__north_O_layer1_2[0:0];

  assign north_O_layer1_2[0:0] = inst0__north_O_layer1_2[0:0];

  assign inst5__I_8[0:0] = inst0__north_O_layer1_3[0:0];

  assign north_O_layer1_3[0:0] = inst0__north_O_layer1_3[0:0];

  assign inst5__I_9[0:0] = inst0__north_O_layer1_4[0:0];

  assign north_O_layer1_4[0:0] = inst0__north_O_layer1_4[0:0];

  assign inst8__I_1[31:0] = inst0__read_config_data[31:0];

  assign inst0__res[15:0] = inst7__res[15:0];

  assign inst0__res_p[0:0] = inst7__res_p[0:0];

  assign inst0__reset = reset;

  assign inst0__south_I_layer16_0[15:0] = south_I_layer16_0[15:0];

  assign inst0__south_I_layer16_1[15:0] = south_I_layer16_1[15:0];

  assign inst0__south_I_layer16_2[15:0] = south_I_layer16_2[15:0];

  assign inst0__south_I_layer16_3[15:0] = south_I_layer16_3[15:0];

  assign inst0__south_I_layer16_4[15:0] = south_I_layer16_4[15:0];

  assign inst0__south_I_layer1_0[0:0] = south_I_layer1_0[0:0];

  assign inst0__south_I_layer1_1[0:0] = south_I_layer1_1[0:0];

  assign inst0__south_I_layer1_2[0:0] = south_I_layer1_2[0:0];

  assign inst0__south_I_layer1_3[0:0] = south_I_layer1_3[0:0];

  assign inst0__south_I_layer1_4[0:0] = south_I_layer1_4[0:0];

  assign south_O_layer16_0[15:0] = inst0__south_O_layer16_0[15:0];

  assign south_O_layer16_1[15:0] = inst0__south_O_layer16_1[15:0];

  assign south_O_layer16_2[15:0] = inst0__south_O_layer16_2[15:0];

  assign south_O_layer16_3[15:0] = inst0__south_O_layer16_3[15:0];

  assign south_O_layer16_4[15:0] = inst0__south_O_layer16_4[15:0];

  assign south_O_layer1_0[0:0] = inst0__south_O_layer1_0[0:0];

  assign south_O_layer1_1[0:0] = inst0__south_O_layer1_1[0:0];

  assign south_O_layer1_2[0:0] = inst0__south_O_layer1_2[0:0];

  assign south_O_layer1_3[0:0] = inst0__south_O_layer1_3[0:0];

  assign south_O_layer1_4[0:0] = inst0__south_O_layer1_4[0:0];

  assign inst0__west_I_layer16_0[15:0] = west_I_layer16_0[15:0];

  assign inst0__west_I_layer16_1[15:0] = west_I_layer16_1[15:0];

  assign inst0__west_I_layer16_2[15:0] = west_I_layer16_2[15:0];

  assign inst0__west_I_layer16_3[15:0] = west_I_layer16_3[15:0];

  assign inst0__west_I_layer16_4[15:0] = west_I_layer16_4[15:0];

  assign inst0__west_I_layer1_0[0:0] = west_I_layer1_0[0:0];

  assign inst0__west_I_layer1_1[0:0] = west_I_layer1_1[0:0];

  assign inst0__west_I_layer1_2[0:0] = west_I_layer1_2[0:0];

  assign inst0__west_I_layer1_3[0:0] = west_I_layer1_3[0:0];

  assign inst0__west_I_layer1_4[0:0] = west_I_layer1_4[0:0];

  assign inst2__I_5[15:0] = inst0__west_O_layer16_0[15:0];

  assign west_O_layer16_0[15:0] = inst0__west_O_layer16_0[15:0];

  assign inst2__I_6[15:0] = inst0__west_O_layer16_1[15:0];

  assign west_O_layer16_1[15:0] = inst0__west_O_layer16_1[15:0];

  assign inst2__I_7[15:0] = inst0__west_O_layer16_2[15:0];

  assign west_O_layer16_2[15:0] = inst0__west_O_layer16_2[15:0];

  assign inst2__I_8[15:0] = inst0__west_O_layer16_3[15:0];

  assign west_O_layer16_3[15:0] = inst0__west_O_layer16_3[15:0];

  assign inst2__I_9[15:0] = inst0__west_O_layer16_4[15:0];

  assign west_O_layer16_4[15:0] = inst0__west_O_layer16_4[15:0];

  assign inst4__I_5[0:0] = inst0__west_O_layer1_0[0:0];

  assign inst6__I_5[0:0] = inst0__west_O_layer1_0[0:0];

  assign west_O_layer1_0[0:0] = inst0__west_O_layer1_0[0:0];

  assign inst4__I_6[0:0] = inst0__west_O_layer1_1[0:0];

  assign inst6__I_6[0:0] = inst0__west_O_layer1_1[0:0];

  assign west_O_layer1_1[0:0] = inst0__west_O_layer1_1[0:0];

  assign inst4__I_7[0:0] = inst0__west_O_layer1_2[0:0];

  assign inst6__I_7[0:0] = inst0__west_O_layer1_2[0:0];

  assign west_O_layer1_2[0:0] = inst0__west_O_layer1_2[0:0];

  assign inst4__I_8[0:0] = inst0__west_O_layer1_3[0:0];

  assign inst6__I_8[0:0] = inst0__west_O_layer1_3[0:0];

  assign west_O_layer1_3[0:0] = inst0__west_O_layer1_3[0:0];

  assign inst4__I_9[0:0] = inst0__west_O_layer1_4[0:0];

  assign inst6__I_9[0:0] = inst0__west_O_layer1_4[0:0];

  assign west_O_layer1_4[0:0] = inst0__west_O_layer1_4[0:0];

  assign inst1__I_0[15:0] = north_I_layer16_0[15:0];

  assign inst1__I_1[15:0] = north_I_layer16_1[15:0];

  assign inst1__I_2[15:0] = north_I_layer16_2[15:0];

  assign inst1__I_3[15:0] = north_I_layer16_3[15:0];

  assign inst1__I_4[15:0] = north_I_layer16_4[15:0];

  assign inst7__data0[15:0] = inst1__O[15:0];

  assign inst1__clk = clk;

  assign inst1__config_config_addr[0] = config_config_addr[24];

  assign inst1__config_config_addr[1] = config_config_addr[25];

  assign inst1__config_config_addr[2] = config_config_addr[26];

  assign inst1__config_config_addr[3] = config_config_addr[27];

  assign inst1__config_config_addr[4] = config_config_addr[28];

  assign inst1__config_config_addr[5] = config_config_addr[29];

  assign inst1__config_config_addr[6] = config_config_addr[30];

  assign inst1__config_config_addr[7] = config_config_addr[31];

  assign inst1__config_config_data[31:0] = config_config_data[31:0];

  assign inst1__config_read[0:0] = config_read[0:0];

  assign inst1__config_write[0] = inst17__out;

  assign inst8__I_2[31:0] = inst1__read_config_data[31:0];

  assign inst1__reset = reset;

  assign inst10__in0 = inst9__out;

  assign inst10__in1 = config_read[0];

  assign inst8__EN[0] = inst10__out;

  assign inst11__in0 = inst9__out;

  assign inst11__in1 = config_write[0];

  assign inst13__in1 = inst11__out;

  assign inst15__in1 = inst11__out;

  assign inst17__in1 = inst11__out;

  assign inst19__in1 = inst11__out;

  assign inst21__in1 = inst11__out;

  assign inst23__in1 = inst11__out;

  assign inst25__in1 = inst11__out;

  assign inst27__in1 = inst11__out;

  assign inst12__I[0] = config_config_addr[16];

  assign inst12__I[1] = config_config_addr[17];

  assign inst12__I[2] = config_config_addr[18];

  assign inst12__I[3] = config_config_addr[19];

  assign inst12__I[4] = config_config_addr[20];

  assign inst12__I[5] = config_config_addr[21];

  assign inst12__I[6] = config_config_addr[22];

  assign inst12__I[7] = config_config_addr[23];

  assign inst13__in0 = inst12__O;

  assign inst7__config_write[0] = inst13__out;

  assign inst14__I[0] = config_config_addr[16];

  assign inst14__I[1] = config_config_addr[17];

  assign inst14__I[2] = config_config_addr[18];

  assign inst14__I[3] = config_config_addr[19];

  assign inst14__I[4] = config_config_addr[20];

  assign inst14__I[5] = config_config_addr[21];

  assign inst14__I[6] = config_config_addr[22];

  assign inst14__I[7] = config_config_addr[23];

  assign inst15__in0 = inst14__O;

  assign inst16__I[0] = config_config_addr[16];

  assign inst16__I[1] = config_config_addr[17];

  assign inst16__I[2] = config_config_addr[18];

  assign inst16__I[3] = config_config_addr[19];

  assign inst16__I[4] = config_config_addr[20];

  assign inst16__I[5] = config_config_addr[21];

  assign inst16__I[6] = config_config_addr[22];

  assign inst16__I[7] = config_config_addr[23];

  assign inst17__in0 = inst16__O;

  assign inst18__I[0] = config_config_addr[16];

  assign inst18__I[1] = config_config_addr[17];

  assign inst18__I[2] = config_config_addr[18];

  assign inst18__I[3] = config_config_addr[19];

  assign inst18__I[4] = config_config_addr[20];

  assign inst18__I[5] = config_config_addr[21];

  assign inst18__I[6] = config_config_addr[22];

  assign inst18__I[7] = config_config_addr[23];

  assign inst19__in0 = inst18__O;

  assign inst2__config_write[0] = inst19__out;

  assign inst2__I_0[15:0] = west_I_layer16_0[15:0];

  assign inst2__I_1[15:0] = west_I_layer16_1[15:0];

  assign inst2__I_2[15:0] = west_I_layer16_2[15:0];

  assign inst2__I_3[15:0] = west_I_layer16_3[15:0];

  assign inst2__I_4[15:0] = west_I_layer16_4[15:0];

  assign inst7__data1[15:0] = inst2__O[15:0];

  assign inst2__clk = clk;

  assign inst2__config_config_addr[0] = config_config_addr[24];

  assign inst2__config_config_addr[1] = config_config_addr[25];

  assign inst2__config_config_addr[2] = config_config_addr[26];

  assign inst2__config_config_addr[3] = config_config_addr[27];

  assign inst2__config_config_addr[4] = config_config_addr[28];

  assign inst2__config_config_addr[5] = config_config_addr[29];

  assign inst2__config_config_addr[6] = config_config_addr[30];

  assign inst2__config_config_addr[7] = config_config_addr[31];

  assign inst2__config_config_data[31:0] = config_config_data[31:0];

  assign inst2__config_read[0:0] = config_read[0:0];

  assign inst8__I_3[31:0] = inst2__read_config_data[31:0];

  assign inst2__reset = reset;

  assign inst20__I[0] = config_config_addr[16];

  assign inst20__I[1] = config_config_addr[17];

  assign inst20__I[2] = config_config_addr[18];

  assign inst20__I[3] = config_config_addr[19];

  assign inst20__I[4] = config_config_addr[20];

  assign inst20__I[5] = config_config_addr[21];

  assign inst20__I[6] = config_config_addr[22];

  assign inst20__I[7] = config_config_addr[23];

  assign inst21__in0 = inst20__O;

  assign inst3__config_write[0] = inst21__out;

  assign inst22__I[0] = config_config_addr[16];

  assign inst22__I[1] = config_config_addr[17];

  assign inst22__I[2] = config_config_addr[18];

  assign inst22__I[3] = config_config_addr[19];

  assign inst22__I[4] = config_config_addr[20];

  assign inst22__I[5] = config_config_addr[21];

  assign inst22__I[6] = config_config_addr[22];

  assign inst22__I[7] = config_config_addr[23];

  assign inst23__in0 = inst22__O;

  assign inst4__config_write[0] = inst23__out;

  assign inst24__I[0] = config_config_addr[16];

  assign inst24__I[1] = config_config_addr[17];

  assign inst24__I[2] = config_config_addr[18];

  assign inst24__I[3] = config_config_addr[19];

  assign inst24__I[4] = config_config_addr[20];

  assign inst24__I[5] = config_config_addr[21];

  assign inst24__I[6] = config_config_addr[22];

  assign inst24__I[7] = config_config_addr[23];

  assign inst25__in0 = inst24__O;

  assign inst5__config_write[0] = inst25__out;

  assign inst26__I[0] = config_config_addr[16];

  assign inst26__I[1] = config_config_addr[17];

  assign inst26__I[2] = config_config_addr[18];

  assign inst26__I[3] = config_config_addr[19];

  assign inst26__I[4] = config_config_addr[20];

  assign inst26__I[5] = config_config_addr[21];

  assign inst26__I[6] = config_config_addr[22];

  assign inst26__I[7] = config_config_addr[23];

  assign inst27__in0 = inst26__O;

  assign inst6__config_write[0] = inst27__out;

  assign inst3__I_0[15:0] = north_I_layer16_0[15:0];

  assign inst3__I_1[15:0] = north_I_layer16_1[15:0];

  assign inst3__I_2[15:0] = north_I_layer16_2[15:0];

  assign inst3__I_3[15:0] = north_I_layer16_3[15:0];

  assign inst3__I_4[15:0] = north_I_layer16_4[15:0];

  assign inst7__data2[15:0] = inst3__O[15:0];

  assign inst3__clk = clk;

  assign inst3__config_config_addr[0] = config_config_addr[24];

  assign inst3__config_config_addr[1] = config_config_addr[25];

  assign inst3__config_config_addr[2] = config_config_addr[26];

  assign inst3__config_config_addr[3] = config_config_addr[27];

  assign inst3__config_config_addr[4] = config_config_addr[28];

  assign inst3__config_config_addr[5] = config_config_addr[29];

  assign inst3__config_config_addr[6] = config_config_addr[30];

  assign inst3__config_config_addr[7] = config_config_addr[31];

  assign inst3__config_config_data[31:0] = config_config_data[31:0];

  assign inst3__config_read[0:0] = config_read[0:0];

  assign inst8__I_4[31:0] = inst3__read_config_data[31:0];

  assign inst3__reset = reset;

  assign inst4__I_0[0:0] = west_I_layer1_0[0:0];

  assign inst4__I_1[0:0] = west_I_layer1_1[0:0];

  assign inst4__I_2[0:0] = west_I_layer1_2[0:0];

  assign inst4__I_3[0:0] = west_I_layer1_3[0:0];

  assign inst4__I_4[0:0] = west_I_layer1_4[0:0];

  assign inst7__bit0[0:0] = inst4__O[0:0];

  assign inst4__clk = clk;

  assign inst4__config_config_addr[0] = config_config_addr[24];

  assign inst4__config_config_addr[1] = config_config_addr[25];

  assign inst4__config_config_addr[2] = config_config_addr[26];

  assign inst4__config_config_addr[3] = config_config_addr[27];

  assign inst4__config_config_addr[4] = config_config_addr[28];

  assign inst4__config_config_addr[5] = config_config_addr[29];

  assign inst4__config_config_addr[6] = config_config_addr[30];

  assign inst4__config_config_addr[7] = config_config_addr[31];

  assign inst4__config_config_data[31:0] = config_config_data[31:0];

  assign inst4__config_read[0:0] = config_read[0:0];

  assign inst8__I_5[31:0] = inst4__read_config_data[31:0];

  assign inst4__reset = reset;

  assign inst5__I_0[0:0] = north_I_layer1_0[0:0];

  assign inst5__I_1[0:0] = north_I_layer1_1[0:0];

  assign inst5__I_2[0:0] = north_I_layer1_2[0:0];

  assign inst5__I_3[0:0] = north_I_layer1_3[0:0];

  assign inst5__I_4[0:0] = north_I_layer1_4[0:0];

  assign inst7__bit1[0:0] = inst5__O[0:0];

  assign inst5__clk = clk;

  assign inst5__config_config_addr[0] = config_config_addr[24];

  assign inst5__config_config_addr[1] = config_config_addr[25];

  assign inst5__config_config_addr[2] = config_config_addr[26];

  assign inst5__config_config_addr[3] = config_config_addr[27];

  assign inst5__config_config_addr[4] = config_config_addr[28];

  assign inst5__config_config_addr[5] = config_config_addr[29];

  assign inst5__config_config_addr[6] = config_config_addr[30];

  assign inst5__config_config_addr[7] = config_config_addr[31];

  assign inst5__config_config_data[31:0] = config_config_data[31:0];

  assign inst5__config_read[0:0] = config_read[0:0];

  assign inst8__I_6[31:0] = inst5__read_config_data[31:0];

  assign inst5__reset = reset;

  assign inst6__I_0[0:0] = west_I_layer1_0[0:0];

  assign inst6__I_1[0:0] = west_I_layer1_1[0:0];

  assign inst6__I_2[0:0] = west_I_layer1_2[0:0];

  assign inst6__I_3[0:0] = west_I_layer1_3[0:0];

  assign inst6__I_4[0:0] = west_I_layer1_4[0:0];

  assign inst7__bit2[0:0] = inst6__O[0:0];

  assign inst6__clk = clk;

  assign inst6__config_config_addr[0] = config_config_addr[24];

  assign inst6__config_config_addr[1] = config_config_addr[25];

  assign inst6__config_config_addr[2] = config_config_addr[26];

  assign inst6__config_config_addr[3] = config_config_addr[27];

  assign inst6__config_config_addr[4] = config_config_addr[28];

  assign inst6__config_config_addr[5] = config_config_addr[29];

  assign inst6__config_config_addr[6] = config_config_addr[30];

  assign inst6__config_config_addr[7] = config_config_addr[31];

  assign inst6__config_config_data[31:0] = config_config_data[31:0];

  assign inst6__config_read[0:0] = config_read[0:0];

  assign inst8__I_7[31:0] = inst6__read_config_data[31:0];

  assign inst6__reset = reset;

  assign inst7__clk = clk;

  assign inst7__config_config_addr[0] = config_config_addr[24];

  assign inst7__config_config_addr[1] = config_config_addr[25];

  assign inst7__config_config_addr[2] = config_config_addr[26];

  assign inst7__config_config_addr[3] = config_config_addr[27];

  assign inst7__config_config_addr[4] = config_config_addr[28];

  assign inst7__config_config_addr[5] = config_config_addr[29];

  assign inst7__config_config_addr[6] = config_config_addr[30];

  assign inst7__config_config_addr[7] = config_config_addr[31];

  assign inst7__config_config_data[31:0] = config_config_data[31:0];

  assign inst7__config_read[0:0] = config_read[0:0];

  assign inst8__I_0[31:0] = inst7__read_config_data[31:0];

  assign inst7__reset = reset;

  assign read_config_data[31:0] = inst8__O[31:0];

  assign inst8__S[0] = config_config_addr[16];

  assign inst8__S[1] = config_config_addr[17];

  assign inst8__S[2] = config_config_addr[18];

  assign inst8__S[3] = config_config_addr[19];

  assign inst8__S[4] = config_config_addr[20];

  assign inst8__S[5] = config_config_addr[21];

  assign inst8__S[6] = config_config_addr[22];

  assign inst8__S[7] = config_config_addr[23];

  assign inst9__in0[15:0] = tile_id[15:0];

  assign inst9__in1[0] = config_config_addr[0];

  assign inst9__in1[10] = config_config_addr[10];

  assign inst9__in1[11] = config_config_addr[11];

  assign inst9__in1[12] = config_config_addr[12];

  assign inst9__in1[13] = config_config_addr[13];

  assign inst9__in1[14] = config_config_addr[14];

  assign inst9__in1[15] = config_config_addr[15];

  assign inst9__in1[1] = config_config_addr[1];

  assign inst9__in1[2] = config_config_addr[2];

  assign inst9__in1[3] = config_config_addr[3];

  assign inst9__in1[4] = config_config_addr[4];

  assign inst9__in1[5] = config_config_addr[5];

  assign inst9__in1[6] = config_config_addr[6];

  assign inst9__in1[7] = config_config_addr[7];

  assign inst9__in1[8] = config_config_addr[8];

  assign inst9__in1[9] = config_config_addr[9];


endmodule  // Tile_PECore

