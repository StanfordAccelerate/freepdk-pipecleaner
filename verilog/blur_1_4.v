

module coreir_slt #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = $signed(in0) < $signed(in1);

endmodule //coreir_slt

module coreir_reg #(parameter clk_posedge=1, parameter init=1, parameter width=1) (
  input clk,
  input [width-1:0] in,
  output [width-1:0] out
);
reg [width-1:0] outReg=init;
wire real_clk;
assign real_clk = clk_posedge ? clk : ~clk;
always @(posedge real_clk) begin
  outReg <= in;
end
assign out = outReg;

endmodule //coreir_reg

module corebit_term (
  input in
);


endmodule //corebit_term

module linebuffer_recursive_U8 (
  input [15:0] in_0,
  output [15:0] out_0,
  output [15:0] out_1,
  output [15:0] out_2,
  output [15:0] out_3,
  input  reset,
  input  wen
);
  //Wire declarations for instance 'reg_1' (Module coreir_reg)
  wire  reg_1__clk;
  wire [15:0] reg_1__in;
  wire [15:0] reg_1__out;
  coreir_reg #(.clk_posedge(1),.init(16'bxxxxxxxxxxxxxxxx),.width(16)) reg_1(
    .clk(reg_1__clk),
    .in(reg_1__in),
    .out(reg_1__out)
  );

  //Wire declarations for instance 'reg_2' (Module coreir_reg)
  wire  reg_2__clk;
  wire [15:0] reg_2__in;
  wire [15:0] reg_2__out;
  coreir_reg #(.clk_posedge(1),.init(16'bxxxxxxxxxxxxxxxx),.width(16)) reg_2(
    .clk(reg_2__clk),
    .in(reg_2__in),
    .out(reg_2__out)
  );

  //Wire declarations for instance 'reg_3' (Module coreir_reg)
  wire  reg_3__clk;
  wire [15:0] reg_3__in;
  wire [15:0] reg_3__out;
  coreir_reg #(.clk_posedge(1),.init(16'bxxxxxxxxxxxxxxxx),.width(16)) reg_3(
    .clk(reg_3__clk),
    .in(reg_3__in),
    .out(reg_3__out)
  );

  //Wire declarations for instance 'reset_term' (Module corebit_term)
  wire  reset_term__in;
  corebit_term reset_term(
    .in(reset_term__in)
  );

  //All the connections
  assign out_0[15:0] = in_0[15:0];
  assign reg_1__in[15:0] = in_0[15:0];
  assign out_1[15:0] = reg_1__out[15:0];
  assign out_2[15:0] = reg_2__out[15:0];
  assign out_3[15:0] = reg_3__out[15:0];
  assign reg_2__in[15:0] = reg_1__out[15:0];
  assign reg_3__in[15:0] = reg_2__out[15:0];
  assign reset_term__in = reset;

endmodule //linebuffer_recursive_U8

module linebuffer_recursive_U7 (
  input [15:0] in_0_0,
  output [15:0] out_0_0,
  output [15:0] out_0_1,
  output [15:0] out_0_2,
  output [15:0] out_0_3,
  input  reset,
  input  wen
);
  //Wire declarations for instance 'lb1d_0' (Module linebuffer_recursive_U8)
  wire [15:0] lb1d_0__in_0;
  wire [15:0] lb1d_0__out_0;
  wire [15:0] lb1d_0__out_1;
  wire [15:0] lb1d_0__out_2;
  wire [15:0] lb1d_0__out_3;
  wire  lb1d_0__reset;
  wire  lb1d_0__wen;
  linebuffer_recursive_U8 lb1d_0(
    .in_0(lb1d_0__in_0),
    .out_0(lb1d_0__out_0),
    .out_1(lb1d_0__out_1),
    .out_2(lb1d_0__out_2),
    .out_3(lb1d_0__out_3),
    .reset(lb1d_0__reset),
    .wen(lb1d_0__wen)
  );

  //All the connections
  assign out_0_1[15:0] = lb1d_0__out_1[15:0];
  assign out_0_2[15:0] = lb1d_0__out_2[15:0];
  assign out_0_3[15:0] = lb1d_0__out_3[15:0];
  assign out_0_0[15:0] = lb1d_0__out_0[15:0];
  assign lb1d_0__in_0[15:0] = in_0_0[15:0];
  assign lb1d_0__wen = wen;
  assign lb1d_0__reset = reset;

endmodule //linebuffer_recursive_U7

module linebuffer_U3 (
  input [15:0] in_0_0,
  output [15:0] out_0_0,
  output [15:0] out_0_1,
  output [15:0] out_0_2,
  output [15:0] out_0_3,
  input  reset,
  input  wen
);
  //Wire declarations for instance 'lb_recurse' (Module linebuffer_recursive_U7)
  wire [15:0] lb_recurse__in_0_0;
  wire [15:0] lb_recurse__out_0_0;
  wire [15:0] lb_recurse__out_0_1;
  wire [15:0] lb_recurse__out_0_2;
  wire [15:0] lb_recurse__out_0_3;
  wire  lb_recurse__reset;
  wire  lb_recurse__wen;
  linebuffer_recursive_U7 lb_recurse(
    .in_0_0(lb_recurse__in_0_0),
    .out_0_0(lb_recurse__out_0_0),
    .out_0_1(lb_recurse__out_0_1),
    .out_0_2(lb_recurse__out_0_2),
    .out_0_3(lb_recurse__out_0_3),
    .reset(lb_recurse__reset),
    .wen(lb_recurse__wen)
  );

  //All the connections
  assign out_0_3[15:0] = lb_recurse__out_0_0[15:0];
  assign lb_recurse__reset = reset;
  assign lb_recurse__wen = wen;
  assign out_0_2[15:0] = lb_recurse__out_0_1[15:0];
  assign lb_recurse__in_0_0[15:0] = in_0_0[15:0];
  assign out_0_0[15:0] = lb_recurse__out_0_3[15:0];
  assign out_0_1[15:0] = lb_recurse__out_0_2[15:0];

endmodule //linebuffer_U3

module corebit_const #(parameter value=1) (
  output out
);
  assign out = value;

endmodule //corebit_const

module coreir_add #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = in0 + in1;

endmodule //coreir_add

module coreir_ashr #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = $signed(in0) >>> in1;

endmodule //coreir_ashr

module coreir_const #(parameter value=1, parameter width=1) (
  output [width-1:0] out
);
  assign out = value;

endmodule //coreir_const

module coreir_mul #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = in0 * in1;

endmodule //coreir_mul

module coreir_mux #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  input sel,
  output [width-1:0] out
);
  assign out = sel ? in1 : in0;

endmodule //coreir_mux

module DesignTop (
  input [15:0] in_arg_1_0_0,
  output [15:0] out_0_0
);
  //Wire declarations for instance 'add_373_376_377' (Module coreir_add)
  wire [15:0] add_373_376_377__in0;
  wire [15:0] add_373_376_377__in1;
  wire [15:0] add_373_376_377__out;
  coreir_add #(.width(16)) add_373_376_377(
    .in0(add_373_376_377__in0),
    .in1(add_373_376_377__in1),
    .out(add_373_376_377__out)
  );

  //Wire declarations for instance 'add_378_381_382' (Module coreir_add)
  wire [15:0] add_378_381_382__in0;
  wire [15:0] add_378_381_382__in1;
  wire [15:0] add_378_381_382__out;
  coreir_add #(.width(16)) add_378_381_382(
    .in0(add_378_381_382__in0),
    .in1(add_378_381_382__in1),
    .out(add_378_381_382__out)
  );

  //Wire declarations for instance 'add_383_386_387' (Module coreir_add)
  wire [15:0] add_383_386_387__in0;
  wire [15:0] add_383_386_387__in1;
  wire [15:0] add_383_386_387__out;
  coreir_add #(.width(16)) add_383_386_387(
    .in0(add_383_386_387__in0),
    .in1(add_383_386_387__in1),
    .out(add_383_386_387__out)
  );

  //Wire declarations for instance 'add_388_391_392' (Module coreir_add)
  wire [15:0] add_388_391_392__in0;
  wire [15:0] add_388_391_392__in1;
  wire [15:0] add_388_391_392__out;
  coreir_add #(.width(16)) add_388_391_392(
    .in0(add_388_391_392__in0),
    .in1(add_388_391_392__in1),
    .out(add_388_391_392__out)
  );

  //Wire declarations for instance 'ashr_393_395_396' (Module coreir_ashr)
  wire [15:0] ashr_393_395_396__in0;
  wire [15:0] ashr_393_395_396__in1;
  wire [15:0] ashr_393_395_396__out;
  coreir_ashr #(.width(16)) ashr_393_395_396(
    .in0(ashr_393_395_396__in0),
    .in1(ashr_393_395_396__in1),
    .out(ashr_393_395_396__out)
  );

  //Wire declarations for instance 'const0_0' (Module coreir_const)
  wire [15:0] const0_0__out;
  coreir_const #(.value(16'b0000000000000000),.width(16)) const0_0(
    .out(const0_0__out)
  );

  //Wire declarations for instance 'const159_159' (Module coreir_const)
  wire [15:0] const159_159__out;
  coreir_const #(.value(16'b0000000010011111),.width(16)) const159_159(
    .out(const159_159__out)
  );

  //Wire declarations for instance 'const3_3' (Module coreir_const)
  wire [15:0] const3_3__out;
  coreir_const #(.value(16'b0000000000000011),.width(16)) const3_3(
    .out(const3_3__out)
  );

  //Wire declarations for instance 'const3_3$1' (Module coreir_const)
  wire [15:0] const3_3$1__out;
  coreir_const #(.value(16'b0000000000000011),.width(16)) const3_3$1(
    .out(const3_3$1__out)
  );

  //Wire declarations for instance 'const4__395' (Module coreir_const)
  wire [15:0] const4__395__out;
  coreir_const #(.value(16'b0000000000000100),.width(16)) const4__395(
    .out(const4__395__out)
  );

  //Wire declarations for instance 'const5_5' (Module coreir_const)
  wire [15:0] const5_5__out;
  coreir_const #(.value(16'b0000000000000101),.width(16)) const5_5(
    .out(const5_5__out)
  );

  //Wire declarations for instance 'const5_5$1' (Module coreir_const)
  wire [15:0] const5_5$1__out;
  coreir_const #(.value(16'b0000000000000101),.width(16)) const5_5$1(
    .out(const5_5$1__out)
  );

  //Wire declarations for instance 'const9_9' (Module coreir_const)
  wire [15:0] const9_9__out;
  coreir_const #(.value(16'b0000000000001001),.width(16)) const9_9(
    .out(const9_9__out)
  );

  //Wire declarations for instance 'lb_p3_clamped_stencil_update_stream' (Module linebuffer_U3)
  wire [15:0] lb_p3_clamped_stencil_update_stream__in_0_0;
  wire [15:0] lb_p3_clamped_stencil_update_stream__out_0_0;
  wire [15:0] lb_p3_clamped_stencil_update_stream__out_0_1;
  wire [15:0] lb_p3_clamped_stencil_update_stream__out_0_2;
  wire [15:0] lb_p3_clamped_stencil_update_stream__out_0_3;
  wire  lb_p3_clamped_stencil_update_stream__reset;
  wire  lb_p3_clamped_stencil_update_stream__wen;
  linebuffer_U3 lb_p3_clamped_stencil_update_stream(
    .in_0_0(lb_p3_clamped_stencil_update_stream__in_0_0),
    .out_0_0(lb_p3_clamped_stencil_update_stream__out_0_0),
    .out_0_1(lb_p3_clamped_stencil_update_stream__out_0_1),
    .out_0_2(lb_p3_clamped_stencil_update_stream__out_0_2),
    .out_0_3(lb_p3_clamped_stencil_update_stream__out_0_3),
    .reset(lb_p3_clamped_stencil_update_stream__reset),
    .wen(lb_p3_clamped_stencil_update_stream__wen)
  );

  //Wire declarations for instance 'lb_p3_clamped_stencil_update_stream_reset' (Module corebit_const)
  wire  lb_p3_clamped_stencil_update_stream_reset__out;
  corebit_const #(.value(0)) lb_p3_clamped_stencil_update_stream_reset(
    .out(lb_p3_clamped_stencil_update_stream_reset__out)
  );

  //Wire declarations for instance 'lb_p3_clamped_stencil_update_stream_wen' (Module corebit_const)
  wire  lb_p3_clamped_stencil_update_stream_wen__out;
  corebit_const #(.value(1)) lb_p3_clamped_stencil_update_stream_wen(
    .out(lb_p3_clamped_stencil_update_stream_wen__out)
  );

  //Wire declarations for instance 'mul_3753_376' (Module coreir_mul)
  wire [15:0] mul_3753_376__in0;
  wire [15:0] mul_3753_376__in1;
  wire [15:0] mul_3753_376__out;
  coreir_mul #(.width(16)) mul_3753_376(
    .in0(mul_3753_376__in0),
    .in1(mul_3753_376__in1),
    .out(mul_3753_376__out)
  );

  //Wire declarations for instance 'mul_3805_381' (Module coreir_mul)
  wire [15:0] mul_3805_381__in0;
  wire [15:0] mul_3805_381__in1;
  wire [15:0] mul_3805_381__out;
  coreir_mul #(.width(16)) mul_3805_381(
    .in0(mul_3805_381__in0),
    .in1(mul_3805_381__in1),
    .out(mul_3805_381__out)
  );

  //Wire declarations for instance 'mul_3855_386' (Module coreir_mul)
  wire [15:0] mul_3855_386__in0;
  wire [15:0] mul_3855_386__in1;
  wire [15:0] mul_3855_386__out;
  coreir_mul #(.width(16)) mul_3855_386(
    .in0(mul_3855_386__in0),
    .in1(mul_3855_386__in1),
    .out(mul_3855_386__out)
  );

  //Wire declarations for instance 'mul_3903_391' (Module coreir_mul)
  wire [15:0] mul_3903_391__in0;
  wire [15:0] mul_3903_391__in1;
  wire [15:0] mul_3903_391__out;
  coreir_mul #(.width(16)) mul_3903_391(
    .in0(mul_3903_391__in0),
    .in1(mul_3903_391__in1),
    .out(mul_3903_391__out)
  );

  //Wire declarations for instance 'mux_3949_396' (Module coreir_mux)
  wire [15:0] mux_3949_396__in0;
  wire [15:0] mux_3949_396__in1;
  wire [15:0] mux_3949_396__out;
  wire  mux_3949_396__sel;
  coreir_mux #(.width(16)) mux_3949_396(
    .in0(mux_3949_396__in0),
    .in1(mux_3949_396__in1),
    .out(mux_3949_396__out),
    .sel(mux_3949_396__sel)
  );

  //Wire declarations for instance 'slt159_393_394' (Module coreir_slt)
  wire [15:0] slt159_393_394__in0;
  wire [15:0] slt159_393_394__in1;
  wire  slt159_393_394__out;
  coreir_slt #(.width(16)) slt159_393_394(
    .in0(slt159_393_394__in0),
    .in1(slt159_393_394__in1),
    .out(slt159_393_394__out)
  );

  //All the connections
  assign mul_3753_376__in0[15:0] = lb_p3_clamped_stencil_update_stream__out_0_0[15:0];
  assign mul_3855_386__in0[15:0] = lb_p3_clamped_stencil_update_stream__out_0_2[15:0];
  assign lb_p3_clamped_stencil_update_stream__in_0_0[15:0] = in_arg_1_0_0[15:0];
  assign mul_3903_391__in0[15:0] = lb_p3_clamped_stencil_update_stream__out_0_3[15:0];
  assign out_0_0[15:0] = mux_3949_396__out[15:0];
  assign add_373_376_377__in0[15:0] = const0_0__out[15:0];
  assign add_373_376_377__in1[15:0] = mul_3753_376__out[15:0];
  assign add_378_381_382__in0[15:0] = add_373_376_377__out[15:0];
  assign add_378_381_382__in1[15:0] = mul_3805_381__out[15:0];
  assign add_383_386_387__in0[15:0] = add_378_381_382__out[15:0];
  assign add_383_386_387__in1[15:0] = mul_3855_386__out[15:0];
  assign add_388_391_392__in0[15:0] = add_383_386_387__out[15:0];
  assign add_388_391_392__in1[15:0] = mul_3903_391__out[15:0];
  assign ashr_393_395_396__in0[15:0] = add_388_391_392__out[15:0];
  assign slt159_393_394__in1[15:0] = add_388_391_392__out[15:0];
  assign ashr_393_395_396__in1[15:0] = const4__395__out[15:0];
  assign mux_3949_396__in0[15:0] = ashr_393_395_396__out[15:0];
  assign slt159_393_394__in0[15:0] = const159_159__out[15:0];
  assign mul_3903_391__in1[15:0] = const3_3$1__out[15:0];
  assign mul_3753_376__in1[15:0] = const3_3__out[15:0];
  assign mul_3855_386__in1[15:0] = const5_5$1__out[15:0];
  assign mul_3805_381__in1[15:0] = const5_5__out[15:0];
  assign mux_3949_396__in1[15:0] = const9_9__out[15:0];
  assign mul_3805_381__in0[15:0] = lb_p3_clamped_stencil_update_stream__out_0_1[15:0];
  assign lb_p3_clamped_stencil_update_stream__reset = lb_p3_clamped_stencil_update_stream_reset__out;
  assign lb_p3_clamped_stencil_update_stream__wen = lb_p3_clamped_stencil_update_stream_wen__out;
  assign mux_3949_396__sel = slt159_393_394__out;

endmodule //DesignTop
