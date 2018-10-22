

module coreir_add #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = in0 + in1;

endmodule //coreir_add

module corebit_and (
  input in0,
  input in1,
  output out
);
  assign out = in0 & in1;

endmodule //corebit_and

module coreir_const #(parameter value=1, parameter width=1) (
  output [width-1:0] out
);
  assign out = value;

endmodule //coreir_const

module coreir_eq #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output out
);
  assign out = in0 == in1;

endmodule //coreir_eq

module corebit_term (
  input in
);


endmodule //corebit_term

module corebit_const #(parameter value=1) (
  output out
);
  assign out = value;

endmodule //corebit_const

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

module corebit_not (
  input in,
  output out
);
  assign out = ~in;

endmodule //corebit_not

module linebuffer_recursive_U5 (
  input [15:0] in_0,
  output [15:0] out_0,
  output [15:0] out_1,
  output [15:0] out_2,
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

  //Wire declarations for instance 'reset_term' (Module corebit_term)
  wire  reset_term__in;
  corebit_term reset_term(
    .in(reset_term__in)
  );

  //All the connections
  assign reg_1__in[15:0] = in_0[15:0];
  assign reg_2__in[15:0] = reg_1__out[15:0];
  assign out_1[15:0] = reg_1__out[15:0];
  assign reset_term__in = reset;
  assign out_2[15:0] = reg_2__out[15:0];
  assign out_0[15:0] = in_0[15:0];

endmodule //linebuffer_recursive_U5

module coreir_mem #(parameter depth=1, parameter has_init=1, parameter width=1) (
  input clk,
  input [width-1:0] wdata,
  input [$clog2(depth)-1:0] waddr,
  input wen,
  output [width-1:0] rdata,
  input [$clog2(depth)-1:0] raddr
);
reg [width-1:0] data[depth-1:0];
always @(posedge clk) begin
  if (wen) begin
    data[waddr] <= wdata;
  end
end
assign rdata = data[raddr];

endmodule //coreir_mem

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

module reg_U16 #(parameter init=1) (
  input  clk,
  input  clr,
  input  en,
  input [5:0] in,
  output [5:0] out
);
  //Wire declarations for instance 'c0' (Module coreir_const)
  wire [5:0] c0__out;
  coreir_const #(.value(6'b000000),.width(6)) c0(
    .out(c0__out)
  );

  //Wire declarations for instance 'clrMux' (Module coreir_mux)
  wire [5:0] clrMux__in0;
  wire [5:0] clrMux__in1;
  wire [5:0] clrMux__out;
  wire  clrMux__sel;
  coreir_mux #(.width(6)) clrMux(
    .in0(clrMux__in0),
    .in1(clrMux__in1),
    .out(clrMux__out),
    .sel(clrMux__sel)
  );

  //Wire declarations for instance 'enMux' (Module coreir_mux)
  wire [5:0] enMux__in0;
  wire [5:0] enMux__in1;
  wire [5:0] enMux__out;
  wire  enMux__sel;
  coreir_mux #(.width(6)) enMux(
    .in0(enMux__in0),
    .in1(enMux__in1),
    .out(enMux__out),
    .sel(enMux__sel)
  );

  //Wire declarations for instance 'reg0' (Module coreir_reg)
  wire  reg0__clk;
  wire [5:0] reg0__in;
  wire [5:0] reg0__out;
  coreir_reg #(.clk_posedge(1),.init(init),.width(6)) reg0(
    .clk(reg0__clk),
    .in(reg0__in),
    .out(reg0__out)
  );

  //All the connections
  assign reg0__in[5:0] = enMux__out[5:0];
  assign out[5:0] = reg0__out[5:0];
  assign enMux__in0[5:0] = reg0__out[5:0];
  assign reg0__clk = clk;
  assign enMux__sel = en;
  assign enMux__in1[5:0] = clrMux__out[5:0];
  assign clrMux__in1[5:0] = c0__out[5:0];
  assign clrMux__sel = clr;
  assign clrMux__in0[5:0] = in[5:0];

endmodule //reg_U16

module counter_U8 #(parameter init=1, parameter max=1) (
  input  clk,
  input  en,
  output [5:0] out,
  input  srst
);
  //Wire declarations for instance 'add' (Module coreir_add)
  wire [5:0] add__in0;
  wire [5:0] add__in1;
  wire [5:0] add__out;
  coreir_add #(.width(6)) add(
    .in0(add__in0),
    .in1(add__in1),
    .out(add__out)
  );

  //Wire declarations for instance 'c0' (Module coreir_const)
  wire [5:0] c0__out;
  coreir_const #(.value(6'b000000),.width(6)) c0(
    .out(c0__out)
  );

  //Wire declarations for instance 'c1' (Module coreir_const)
  wire [5:0] c1__out;
  coreir_const #(.value(6'b000001),.width(6)) c1(
    .out(c1__out)
  );

  //Wire declarations for instance 'eq' (Module coreir_eq)
  wire [5:0] eq__in0;
  wire [5:0] eq__in1;
  wire  eq__out;
  coreir_eq #(.width(6)) eq(
    .in0(eq__in0),
    .in1(eq__in1),
    .out(eq__out)
  );

  //Wire declarations for instance 'maxval' (Module coreir_const)
  wire [5:0] maxval__out;
  coreir_const #(.value(max),.width(6)) maxval(
    .out(maxval__out)
  );

  //Wire declarations for instance 'mux' (Module coreir_mux)
  wire [5:0] mux__in0;
  wire [5:0] mux__in1;
  wire [5:0] mux__out;
  wire  mux__sel;
  coreir_mux #(.width(6)) mux(
    .in0(mux__in0),
    .in1(mux__in1),
    .out(mux__out),
    .sel(mux__sel)
  );

  //Wire declarations for instance 'r' (Module reg_U16)
  wire  r__clk;
  wire  r__clr;
  wire  r__en;
  wire [5:0] r__in;
  wire [5:0] r__out;
  reg_U16 #(.init(init)) r(
    .clk(r__clk),
    .clr(r__clr),
    .en(r__en),
    .in(r__in),
    .out(r__out)
  );

  //All the connections
  assign r__clk = clk;
  assign r__en = en;
  assign r__clr = srst;
  assign add__in1[5:0] = c1__out[5:0];
  assign add__in0[5:0] = r__out[5:0];
  assign out[5:0] = r__out[5:0];
  assign eq__in0[5:0] = r__out[5:0];
  assign mux__in1[5:0] = c0__out[5:0];
  assign eq__in1[5:0] = maxval__out[5:0];
  assign mux__sel = eq__out;
  assign mux__in0[5:0] = add__out[5:0];
  assign r__in[5:0] = mux__out[5:0];

endmodule //counter_U8

module reg_U10 #(parameter init=1) (
  input  clk,
  input  clr,
  input  en,
  input [0:0] in,
  output [0:0] out
);
  //Wire declarations for instance 'c0' (Module coreir_const)
  wire [0:0] c0__out;
  coreir_const #(.value(1'b0),.width(1)) c0(
    .out(c0__out)
  );

  //Wire declarations for instance 'clrMux' (Module coreir_mux)
  wire [0:0] clrMux__in0;
  wire [0:0] clrMux__in1;
  wire [0:0] clrMux__out;
  wire  clrMux__sel;
  coreir_mux #(.width(1)) clrMux(
    .in0(clrMux__in0),
    .in1(clrMux__in1),
    .out(clrMux__out),
    .sel(clrMux__sel)
  );

  //Wire declarations for instance 'enMux' (Module coreir_mux)
  wire [0:0] enMux__in0;
  wire [0:0] enMux__in1;
  wire [0:0] enMux__out;
  wire  enMux__sel;
  coreir_mux #(.width(1)) enMux(
    .in0(enMux__in0),
    .in1(enMux__in1),
    .out(enMux__out),
    .sel(enMux__sel)
  );

  //Wire declarations for instance 'reg0' (Module coreir_reg)
  wire  reg0__clk;
  wire [0:0] reg0__in;
  wire [0:0] reg0__out;
  coreir_reg #(.clk_posedge(1),.init(init),.width(1)) reg0(
    .clk(reg0__clk),
    .in(reg0__in),
    .out(reg0__out)
  );

  //All the connections
  assign reg0__in[0:0] = enMux__out[0:0];
  assign out[0:0] = reg0__out[0:0];
  assign enMux__in0[0:0] = reg0__out[0:0];
  assign reg0__clk = clk;
  assign enMux__sel = en;
  assign enMux__in1[0:0] = clrMux__out[0:0];
  assign clrMux__in1[0:0] = c0__out[0:0];
  assign clrMux__sel = clr;
  assign clrMux__in0[0:0] = in[0:0];

endmodule //reg_U10

module coreir_zext #(parameter width_in=1, parameter width_out=1) (
  input [width_in-1:0] in,
  output [width_out-1:0] out
);
  assign out = {{(width_out-width_in){1'b0}},in};

endmodule //coreir_zext

module reg_U9 #(parameter init=1) (
  input  clk,
  input  clr,
  input  en,
  input [6:0] in,
  output [6:0] out
);
  //Wire declarations for instance 'c0' (Module coreir_const)
  wire [6:0] c0__out;
  coreir_const #(.value(7'b0000000),.width(7)) c0(
    .out(c0__out)
  );

  //Wire declarations for instance 'clrMux' (Module coreir_mux)
  wire [6:0] clrMux__in0;
  wire [6:0] clrMux__in1;
  wire [6:0] clrMux__out;
  wire  clrMux__sel;
  coreir_mux #(.width(7)) clrMux(
    .in0(clrMux__in0),
    .in1(clrMux__in1),
    .out(clrMux__out),
    .sel(clrMux__sel)
  );

  //Wire declarations for instance 'enMux' (Module coreir_mux)
  wire [6:0] enMux__in0;
  wire [6:0] enMux__in1;
  wire [6:0] enMux__out;
  wire  enMux__sel;
  coreir_mux #(.width(7)) enMux(
    .in0(enMux__in0),
    .in1(enMux__in1),
    .out(enMux__out),
    .sel(enMux__sel)
  );

  //Wire declarations for instance 'reg0' (Module coreir_reg)
  wire  reg0__clk;
  wire [6:0] reg0__in;
  wire [6:0] reg0__out;
  coreir_reg #(.clk_posedge(1),.init(init),.width(7)) reg0(
    .clk(reg0__clk),
    .in(reg0__in),
    .out(reg0__out)
  );

  //All the connections
  assign reg0__in[6:0] = enMux__out[6:0];
  assign out[6:0] = reg0__out[6:0];
  assign enMux__in0[6:0] = reg0__out[6:0];
  assign reg0__clk = clk;
  assign enMux__sel = en;
  assign enMux__in1[6:0] = clrMux__out[6:0];
  assign clrMux__in1[6:0] = c0__out[6:0];
  assign clrMux__sel = clr;
  assign clrMux__in0[6:0] = in[6:0];

endmodule //reg_U9

module rowbuffer_U6 (
  input  clk,
  input  flush,
  output [15:0] rdata,
  output  valid,
  input [15:0] wdata,
  input  wen
);
  //Wire declarations for instance 'add_wen' (Module coreir_add)
  wire [6:0] add_wen__in0;
  wire [6:0] add_wen__in1;
  wire [6:0] add_wen__out;
  coreir_add #(.width(7)) add_wen(
    .in0(add_wen__in0),
    .in1(add_wen__in1),
    .out(add_wen__out)
  );

  //Wire declarations for instance 'c1' (Module corebit_const)
  wire  c1__out;
  corebit_const #(.value(1)) c1(
    .out(c1__out)
  );

  //Wire declarations for instance 'cnt' (Module reg_U9)
  wire  cnt__clk;
  wire  cnt__clr;
  wire  cnt__en;
  wire [6:0] cnt__in;
  wire [6:0] cnt__out;
  reg_U9 #(.init(7'b0000000)) cnt(
    .clk(cnt__clk),
    .clr(cnt__clr),
    .en(cnt__en),
    .in(cnt__in),
    .out(cnt__out)
  );

  //Wire declarations for instance 'depth_m1' (Module coreir_const)
  wire [6:0] depth_m1__out;
  coreir_const #(.value(7'b1000000),.width(7)) depth_m1(
    .out(depth_m1__out)
  );

  //Wire declarations for instance 'eq_depth' (Module coreir_eq)
  wire [6:0] eq_depth__in0;
  wire [6:0] eq_depth__in1;
  wire  eq_depth__out;
  coreir_eq #(.width(7)) eq_depth(
    .in0(eq_depth__in0),
    .in1(eq_depth__in1),
    .out(eq_depth__out)
  );

  //Wire declarations for instance 'mem' (Module coreir_mem)
  wire  mem__clk;
  wire [5:0] mem__raddr;
  wire [15:0] mem__rdata;
  wire [5:0] mem__waddr;
  wire [15:0] mem__wdata;
  wire  mem__wen;
  coreir_mem #(.depth(64),.has_init(0),.width(16)) mem(
    .clk(mem__clk),
    .raddr(mem__raddr),
    .rdata(mem__rdata),
    .waddr(mem__waddr),
    .wdata(mem__wdata),
    .wen(mem__wen)
  );

  //Wire declarations for instance 'out_and_wen' (Module corebit_and)
  wire  out_and_wen__in0;
  wire  out_and_wen__in1;
  wire  out_and_wen__out;
  corebit_and out_and_wen(
    .in0(out_and_wen__in0),
    .in1(out_and_wen__in1),
    .out(out_and_wen__out)
  );

  //Wire declarations for instance 'raddr' (Module counter_U8)
  wire  raddr__clk;
  wire  raddr__en;
  wire [5:0] raddr__out;
  wire  raddr__srst;
  counter_U8 #(.init(6'b000000),.max(6'b111111)) raddr(
    .clk(raddr__clk),
    .en(raddr__en),
    .out(raddr__out),
    .srst(raddr__srst)
  );

  //Wire declarations for instance 'state' (Module reg_U10)
  wire  state__clk;
  wire  state__clr;
  wire  state__en;
  wire [0:0] state__in;
  wire [0:0] state__out;
  reg_U10 #(.init(1'b0)) state(
    .clk(state__clk),
    .clr(state__clr),
    .en(state__en),
    .in(state__in),
    .out(state__out)
  );

  //Wire declarations for instance 'state0' (Module corebit_not)
  wire  state0__in;
  wire  state0__out;
  corebit_not state0(
    .in(state0__in),
    .out(state0__out)
  );

  //Wire declarations for instance 'waddr' (Module counter_U8)
  wire  waddr__clk;
  wire  waddr__en;
  wire [5:0] waddr__out;
  wire  waddr__srst;
  counter_U8 #(.init(6'b000000),.max(6'b111111)) waddr(
    .clk(waddr__clk),
    .en(waddr__en),
    .out(waddr__out),
    .srst(waddr__srst)
  );

  //Wire declarations for instance 'wen_ext' (Module coreir_zext)
  wire [0:0] wen_ext__in;
  wire [6:0] wen_ext__out;
  coreir_zext #(.width_in(1),.width_out(7)) wen_ext(
    .in(wen_ext__in),
    .out(wen_ext__out)
  );

  //All the connections
  assign add_wen__in0[6:0] = wen_ext__out[6:0];
  assign cnt__clr = flush;
  assign state0__in = state__out[0];
  assign cnt__en = state0__out;
  assign add_wen__in1[6:0] = cnt__out[6:0];
  assign wen_ext__in[0] = wen;
  assign cnt__in[6:0] = add_wen__out[6:0];
  assign eq_depth__in1[6:0] = add_wen__out[6:0];
  assign eq_depth__in0[6:0] = depth_m1__out[6:0];
  assign state__clr = flush;
  assign state__en = eq_depth__out;
  assign state__in[0] = c1__out;
  assign state__clk = clk;
  assign mem__clk = clk;
  assign raddr__clk = clk;
  assign waddr__clk = clk;
  assign cnt__clk = clk;
  assign mem__raddr[5:0] = raddr__out[5:0];
  assign mem__waddr[5:0] = waddr__out[5:0];
  assign rdata[15:0] = mem__rdata[15:0];
  assign mem__wen = wen;
  assign out_and_wen__in1 = wen;
  assign waddr__en = wen;
  assign mem__wdata[15:0] = wdata[15:0];
  assign valid = out_and_wen__out;
  assign raddr__en = out_and_wen__out;
  assign out_and_wen__in0 = state__out[0];
  assign waddr__srst = flush;
  assign raddr__srst = flush;

endmodule //rowbuffer_U6

module linebuffer_recursive_U4 (
  input [15:0] in_0_0,
  output [15:0] out_0_0,
  output [15:0] out_0_1,
  output [15:0] out_0_2,
  output [15:0] out_1_0,
  output [15:0] out_1_1,
  output [15:0] out_1_2,
  output [15:0] out_2_0,
  output [15:0] out_2_1,
  output [15:0] out_2_2,
  input  reset,
  input  wen
);
  //Wire declarations for instance 'lb1d_0' (Module linebuffer_recursive_U5)
  wire [15:0] lb1d_0__in_0;
  wire [15:0] lb1d_0__out_0;
  wire [15:0] lb1d_0__out_1;
  wire [15:0] lb1d_0__out_2;
  wire  lb1d_0__reset;
  wire  lb1d_0__wen;
  linebuffer_recursive_U5 lb1d_0(
    .in_0(lb1d_0__in_0),
    .out_0(lb1d_0__out_0),
    .out_1(lb1d_0__out_1),
    .out_2(lb1d_0__out_2),
    .reset(lb1d_0__reset),
    .wen(lb1d_0__wen)
  );

  //Wire declarations for instance 'lb1d_1' (Module linebuffer_recursive_U5)
  wire [15:0] lb1d_1__in_0;
  wire [15:0] lb1d_1__out_0;
  wire [15:0] lb1d_1__out_1;
  wire [15:0] lb1d_1__out_2;
  wire  lb1d_1__reset;
  wire  lb1d_1__wen;
  linebuffer_recursive_U5 lb1d_1(
    .in_0(lb1d_1__in_0),
    .out_0(lb1d_1__out_0),
    .out_1(lb1d_1__out_1),
    .out_2(lb1d_1__out_2),
    .reset(lb1d_1__reset),
    .wen(lb1d_1__wen)
  );

  //Wire declarations for instance 'lb1d_2' (Module linebuffer_recursive_U5)
  wire [15:0] lb1d_2__in_0;
  wire [15:0] lb1d_2__out_0;
  wire [15:0] lb1d_2__out_1;
  wire [15:0] lb1d_2__out_2;
  wire  lb1d_2__reset;
  wire  lb1d_2__wen;
  linebuffer_recursive_U5 lb1d_2(
    .in_0(lb1d_2__in_0),
    .out_0(lb1d_2__out_0),
    .out_1(lb1d_2__out_1),
    .out_2(lb1d_2__out_2),
    .reset(lb1d_2__reset),
    .wen(lb1d_2__wen)
  );

  //Wire declarations for instance 'lbmem_1_0' (Module rowbuffer_U6)
  wire  lbmem_1_0__clk;
  wire  lbmem_1_0__flush;
  wire [15:0] lbmem_1_0__rdata;
  wire  lbmem_1_0__valid;
  wire [15:0] lbmem_1_0__wdata;
  wire  lbmem_1_0__wen;
  rowbuffer_U6 lbmem_1_0(
    .clk(lbmem_1_0__clk),
    .flush(lbmem_1_0__flush),
    .rdata(lbmem_1_0__rdata),
    .valid(lbmem_1_0__valid),
    .wdata(lbmem_1_0__wdata),
    .wen(lbmem_1_0__wen)
  );

  //Wire declarations for instance 'lbmem_1_0_flush' (Module corebit_const)
  wire  lbmem_1_0_flush__out;
  corebit_const #(.value(0)) lbmem_1_0_flush(
    .out(lbmem_1_0_flush__out)
  );

  //Wire declarations for instance 'lbmem_2_0' (Module rowbuffer_U6)
  wire  lbmem_2_0__clk;
  wire  lbmem_2_0__flush;
  wire [15:0] lbmem_2_0__rdata;
  wire  lbmem_2_0__valid;
  wire [15:0] lbmem_2_0__wdata;
  wire  lbmem_2_0__wen;
  rowbuffer_U6 lbmem_2_0(
    .clk(lbmem_2_0__clk),
    .flush(lbmem_2_0__flush),
    .rdata(lbmem_2_0__rdata),
    .valid(lbmem_2_0__valid),
    .wdata(lbmem_2_0__wdata),
    .wen(lbmem_2_0__wen)
  );

  //Wire declarations for instance 'lbmem_2_0_flush' (Module corebit_const)
  wire  lbmem_2_0_flush__out;
  corebit_const #(.value(0)) lbmem_2_0_flush(
    .out(lbmem_2_0_flush__out)
  );

  //All the connections
  assign lbmem_2_0__wen = wen;
  assign lb1d_0__wen = wen;
  assign lb1d_1__wen = wen;
  assign lb1d_2__wen = wen;
  assign lbmem_1_0__wen = wen;
  assign lbmem_2_0__wdata[15:0] = lbmem_1_0__rdata[15:0];
  assign lbmem_2_0__flush = lbmem_2_0_flush__out;
  assign lb1d_2__in_0[15:0] = lbmem_2_0__rdata[15:0];
  assign lb1d_0__reset = reset;
  assign lb1d_1__reset = reset;
  assign lb1d_2__reset = reset;
  assign lb1d_1__in_0[15:0] = lbmem_1_0__rdata[15:0];
  assign lbmem_1_0__wdata[15:0] = in_0_0[15:0];
  assign lbmem_1_0__flush = lbmem_1_0_flush__out;
  assign out_2_0[15:0] = lb1d_2__out_0[15:0];
  assign out_0_0[15:0] = lb1d_0__out_0[15:0];
  assign out_0_1[15:0] = lb1d_0__out_1[15:0];
  assign out_0_2[15:0] = lb1d_0__out_2[15:0];
  assign out_1_1[15:0] = lb1d_1__out_1[15:0];
  assign out_1_0[15:0] = lb1d_1__out_0[15:0];
  assign lb1d_0__in_0[15:0] = in_0_0[15:0];
  assign out_1_2[15:0] = lb1d_1__out_2[15:0];
  assign out_2_1[15:0] = lb1d_2__out_1[15:0];
  assign out_2_2[15:0] = lb1d_2__out_2[15:0];

endmodule //linebuffer_recursive_U4

module linebuffer_U2 (
  input [15:0] in_0_0,
  output [15:0] out_0_0,
  output [15:0] out_0_1,
  output [15:0] out_0_2,
  output [15:0] out_1_0,
  output [15:0] out_1_1,
  output [15:0] out_1_2,
  output [15:0] out_2_0,
  output [15:0] out_2_1,
  output [15:0] out_2_2,
  input  reset,
  input  wen
);
  //Wire declarations for instance 'lb_recurse' (Module linebuffer_recursive_U4)
  wire [15:0] lb_recurse__in_0_0;
  wire [15:0] lb_recurse__out_0_0;
  wire [15:0] lb_recurse__out_0_1;
  wire [15:0] lb_recurse__out_0_2;
  wire [15:0] lb_recurse__out_1_0;
  wire [15:0] lb_recurse__out_1_1;
  wire [15:0] lb_recurse__out_1_2;
  wire [15:0] lb_recurse__out_2_0;
  wire [15:0] lb_recurse__out_2_1;
  wire [15:0] lb_recurse__out_2_2;
  wire  lb_recurse__reset;
  wire  lb_recurse__wen;
  linebuffer_recursive_U4 lb_recurse(
    .in_0_0(lb_recurse__in_0_0),
    .out_0_0(lb_recurse__out_0_0),
    .out_0_1(lb_recurse__out_0_1),
    .out_0_2(lb_recurse__out_0_2),
    .out_1_0(lb_recurse__out_1_0),
    .out_1_1(lb_recurse__out_1_1),
    .out_1_2(lb_recurse__out_1_2),
    .out_2_0(lb_recurse__out_2_0),
    .out_2_1(lb_recurse__out_2_1),
    .out_2_2(lb_recurse__out_2_2),
    .reset(lb_recurse__reset),
    .wen(lb_recurse__wen)
  );

  //All the connections
  assign lb_recurse__reset = reset;
  assign lb_recurse__wen = wen;
  assign out_0_1[15:0] = lb_recurse__out_2_1[15:0];
  assign lb_recurse__in_0_0[15:0] = in_0_0[15:0];
  assign out_1_1[15:0] = lb_recurse__out_1_1[15:0];
  assign out_1_2[15:0] = lb_recurse__out_1_0[15:0];
  assign out_2_1[15:0] = lb_recurse__out_0_1[15:0];
  assign out_2_2[15:0] = lb_recurse__out_0_0[15:0];
  assign out_1_0[15:0] = lb_recurse__out_1_2[15:0];
  assign out_2_0[15:0] = lb_recurse__out_0_2[15:0];
  assign out_0_2[15:0] = lb_recurse__out_2_0[15:0];
  assign out_0_0[15:0] = lb_recurse__out_2_2[15:0];

endmodule //linebuffer_U2

module DesignTop (
  input [15:0] in_arg_1_0_0,
  output [15:0] out_0_0
);
  //Wire declarations for instance 'add_466_470_471' (Module coreir_add)
  wire [15:0] add_466_470_471__in0;
  wire [15:0] add_466_470_471__in1;
  wire [15:0] add_466_470_471__out;
  coreir_add #(.width(16)) add_466_470_471(
    .in0(add_466_470_471__in0),
    .in1(add_466_470_471__in1),
    .out(add_466_470_471__out)
  );

  //Wire declarations for instance 'add_472_476_477' (Module coreir_add)
  wire [15:0] add_472_476_477__in0;
  wire [15:0] add_472_476_477__in1;
  wire [15:0] add_472_476_477__out;
  coreir_add #(.width(16)) add_472_476_477(
    .in0(add_472_476_477__in0),
    .in1(add_472_476_477__in1),
    .out(add_472_476_477__out)
  );

  //Wire declarations for instance 'add_478_482_483' (Module coreir_add)
  wire [15:0] add_478_482_483__in0;
  wire [15:0] add_478_482_483__in1;
  wire [15:0] add_478_482_483__out;
  coreir_add #(.width(16)) add_478_482_483(
    .in0(add_478_482_483__in0),
    .in1(add_478_482_483__in1),
    .out(add_478_482_483__out)
  );

  //Wire declarations for instance 'add_484_488_489' (Module coreir_add)
  wire [15:0] add_484_488_489__in0;
  wire [15:0] add_484_488_489__in1;
  wire [15:0] add_484_488_489__out;
  coreir_add #(.width(16)) add_484_488_489(
    .in0(add_484_488_489__in0),
    .in1(add_484_488_489__in1),
    .out(add_484_488_489__out)
  );

  //Wire declarations for instance 'add_490_494_495' (Module coreir_add)
  wire [15:0] add_490_494_495__in0;
  wire [15:0] add_490_494_495__in1;
  wire [15:0] add_490_494_495__out;
  coreir_add #(.width(16)) add_490_494_495(
    .in0(add_490_494_495__in0),
    .in1(add_490_494_495__in1),
    .out(add_490_494_495__out)
  );

  //Wire declarations for instance 'add_496_500_501' (Module coreir_add)
  wire [15:0] add_496_500_501__in0;
  wire [15:0] add_496_500_501__in1;
  wire [15:0] add_496_500_501__out;
  coreir_add #(.width(16)) add_496_500_501(
    .in0(add_496_500_501__in0),
    .in1(add_496_500_501__in1),
    .out(add_496_500_501__out)
  );

  //Wire declarations for instance 'add_502_506_507' (Module coreir_add)
  wire [15:0] add_502_506_507__in0;
  wire [15:0] add_502_506_507__in1;
  wire [15:0] add_502_506_507__out;
  coreir_add #(.width(16)) add_502_506_507(
    .in0(add_502_506_507__in0),
    .in1(add_502_506_507__in1),
    .out(add_502_506_507__out)
  );

  //Wire declarations for instance 'add_508_512_513' (Module coreir_add)
  wire [15:0] add_508_512_513__in0;
  wire [15:0] add_508_512_513__in1;
  wire [15:0] add_508_512_513__out;
  coreir_add #(.width(16)) add_508_512_513(
    .in0(add_508_512_513__in0),
    .in1(add_508_512_513__in1),
    .out(add_508_512_513__out)
  );

  //Wire declarations for instance 'add_514_518_519' (Module coreir_add)
  wire [15:0] add_514_518_519__in0;
  wire [15:0] add_514_518_519__in1;
  wire [15:0] add_514_518_519__out;
  coreir_add #(.width(16)) add_514_518_519(
    .in0(add_514_518_519__in0),
    .in1(add_514_518_519__in1),
    .out(add_514_518_519__out)
  );

  //Wire declarations for instance 'const0_0' (Module coreir_const)
  wire [15:0] const0_0__out;
  coreir_const #(.value(16'b0000000000000000),.width(16)) const0_0(
    .out(const0_0__out)
  );

  //Wire declarations for instance 'const0_0$1' (Module coreir_const)
  wire [15:0] const0_0$1__out;
  coreir_const #(.value(16'b0000000000000000),.width(16)) const0_0$1(
    .out(const0_0$1__out)
  );

  //Wire declarations for instance 'const11_11' (Module coreir_const)
  wire [15:0] const11_11__out;
  coreir_const #(.value(16'b0000000000001011),.width(16)) const11_11(
    .out(const11_11__out)
  );

  //Wire declarations for instance 'const12_12' (Module coreir_const)
  wire [15:0] const12_12__out;
  coreir_const #(.value(16'b0000000000001100),.width(16)) const12_12(
    .out(const12_12__out)
  );

  //Wire declarations for instance 'const13_13' (Module coreir_const)
  wire [15:0] const13_13__out;
  coreir_const #(.value(16'b0000000000001101),.width(16)) const13_13(
    .out(const13_13__out)
  );

  //Wire declarations for instance 'const14_14' (Module coreir_const)
  wire [15:0] const14_14__out;
  coreir_const #(.value(16'b0000000000001110),.width(16)) const14_14(
    .out(const14_14__out)
  );

  //Wire declarations for instance 'const16_16' (Module coreir_const)
  wire [15:0] const16_16__out;
  coreir_const #(.value(16'b0000000000010000),.width(16)) const16_16(
    .out(const16_16__out)
  );

  //Wire declarations for instance 'const17_17' (Module coreir_const)
  wire [15:0] const17_17__out;
  coreir_const #(.value(16'b0000000000010001),.width(16)) const17_17(
    .out(const17_17__out)
  );

  //Wire declarations for instance 'const18_18' (Module coreir_const)
  wire [15:0] const18_18__out;
  coreir_const #(.value(16'b0000000000010010),.width(16)) const18_18(
    .out(const18_18__out)
  );

  //Wire declarations for instance 'const19_19' (Module coreir_const)
  wire [15:0] const19_19__out;
  coreir_const #(.value(16'b0000000000010011),.width(16)) const19_19(
    .out(const19_19__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream' (Module linebuffer_U2)
  wire [15:0] lb_p4_clamped_stencil_update_stream__in_0_0;
  wire [15:0] lb_p4_clamped_stencil_update_stream__out_0_0;
  wire [15:0] lb_p4_clamped_stencil_update_stream__out_0_1;
  wire [15:0] lb_p4_clamped_stencil_update_stream__out_0_2;
  wire [15:0] lb_p4_clamped_stencil_update_stream__out_1_0;
  wire [15:0] lb_p4_clamped_stencil_update_stream__out_1_1;
  wire [15:0] lb_p4_clamped_stencil_update_stream__out_1_2;
  wire [15:0] lb_p4_clamped_stencil_update_stream__out_2_0;
  wire [15:0] lb_p4_clamped_stencil_update_stream__out_2_1;
  wire [15:0] lb_p4_clamped_stencil_update_stream__out_2_2;
  wire  lb_p4_clamped_stencil_update_stream__reset;
  wire  lb_p4_clamped_stencil_update_stream__wen;
  linebuffer_U2 lb_p4_clamped_stencil_update_stream(
    .in_0_0(lb_p4_clamped_stencil_update_stream__in_0_0),
    .out_0_0(lb_p4_clamped_stencil_update_stream__out_0_0),
    .out_0_1(lb_p4_clamped_stencil_update_stream__out_0_1),
    .out_0_2(lb_p4_clamped_stencil_update_stream__out_0_2),
    .out_1_0(lb_p4_clamped_stencil_update_stream__out_1_0),
    .out_1_1(lb_p4_clamped_stencil_update_stream__out_1_1),
    .out_1_2(lb_p4_clamped_stencil_update_stream__out_1_2),
    .out_2_0(lb_p4_clamped_stencil_update_stream__out_2_0),
    .out_2_1(lb_p4_clamped_stencil_update_stream__out_2_1),
    .out_2_2(lb_p4_clamped_stencil_update_stream__out_2_2),
    .reset(lb_p4_clamped_stencil_update_stream__reset),
    .wen(lb_p4_clamped_stencil_update_stream__wen)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream_reset' (Module corebit_const)
  wire  lb_p4_clamped_stencil_update_stream_reset__out;
  corebit_const #(.value(0)) lb_p4_clamped_stencil_update_stream_reset(
    .out(lb_p4_clamped_stencil_update_stream_reset__out)
  );

  //Wire declarations for instance 'lb_p4_clamped_stencil_update_stream_wen' (Module corebit_const)
  wire  lb_p4_clamped_stencil_update_stream_wen__out;
  corebit_const #(.value(1)) lb_p4_clamped_stencil_update_stream_wen(
    .out(lb_p4_clamped_stencil_update_stream_wen__out)
  );

  //Wire declarations for instance 'mul_468_469_470' (Module coreir_mul)
  wire [15:0] mul_468_469_470__in0;
  wire [15:0] mul_468_469_470__in1;
  wire [15:0] mul_468_469_470__out;
  coreir_mul #(.width(16)) mul_468_469_470(
    .in0(mul_468_469_470__in0),
    .in1(mul_468_469_470__in1),
    .out(mul_468_469_470__out)
  );

  //Wire declarations for instance 'mul_474_475_476' (Module coreir_mul)
  wire [15:0] mul_474_475_476__in0;
  wire [15:0] mul_474_475_476__in1;
  wire [15:0] mul_474_475_476__out;
  coreir_mul #(.width(16)) mul_474_475_476(
    .in0(mul_474_475_476__in0),
    .in1(mul_474_475_476__in1),
    .out(mul_474_475_476__out)
  );

  //Wire declarations for instance 'mul_480_481_482' (Module coreir_mul)
  wire [15:0] mul_480_481_482__in0;
  wire [15:0] mul_480_481_482__in1;
  wire [15:0] mul_480_481_482__out;
  coreir_mul #(.width(16)) mul_480_481_482(
    .in0(mul_480_481_482__in0),
    .in1(mul_480_481_482__in1),
    .out(mul_480_481_482__out)
  );

  //Wire declarations for instance 'mul_486_487_488' (Module coreir_mul)
  wire [15:0] mul_486_487_488__in0;
  wire [15:0] mul_486_487_488__in1;
  wire [15:0] mul_486_487_488__out;
  coreir_mul #(.width(16)) mul_486_487_488(
    .in0(mul_486_487_488__in0),
    .in1(mul_486_487_488__in1),
    .out(mul_486_487_488__out)
  );

  //Wire declarations for instance 'mul_492_493_494' (Module coreir_mul)
  wire [15:0] mul_492_493_494__in0;
  wire [15:0] mul_492_493_494__in1;
  wire [15:0] mul_492_493_494__out;
  coreir_mul #(.width(16)) mul_492_493_494(
    .in0(mul_492_493_494__in0),
    .in1(mul_492_493_494__in1),
    .out(mul_492_493_494__out)
  );

  //Wire declarations for instance 'mul_498_499_500' (Module coreir_mul)
  wire [15:0] mul_498_499_500__in0;
  wire [15:0] mul_498_499_500__in1;
  wire [15:0] mul_498_499_500__out;
  coreir_mul #(.width(16)) mul_498_499_500(
    .in0(mul_498_499_500__in0),
    .in1(mul_498_499_500__in1),
    .out(mul_498_499_500__out)
  );

  //Wire declarations for instance 'mul_504_505_506' (Module coreir_mul)
  wire [15:0] mul_504_505_506__in0;
  wire [15:0] mul_504_505_506__in1;
  wire [15:0] mul_504_505_506__out;
  coreir_mul #(.width(16)) mul_504_505_506(
    .in0(mul_504_505_506__in0),
    .in1(mul_504_505_506__in1),
    .out(mul_504_505_506__out)
  );

  //Wire declarations for instance 'mul_510_511_512' (Module coreir_mul)
  wire [15:0] mul_510_511_512__in0;
  wire [15:0] mul_510_511_512__in1;
  wire [15:0] mul_510_511_512__out;
  coreir_mul #(.width(16)) mul_510_511_512(
    .in0(mul_510_511_512__in0),
    .in1(mul_510_511_512__in1),
    .out(mul_510_511_512__out)
  );

  //Wire declarations for instance 'mul_516_517_518' (Module coreir_mul)
  wire [15:0] mul_516_517_518__in0;
  wire [15:0] mul_516_517_518__in1;
  wire [15:0] mul_516_517_518__out;
  coreir_mul #(.width(16)) mul_516_517_518(
    .in0(mul_516_517_518__in0),
    .in1(mul_516_517_518__in1),
    .out(mul_516_517_518__out)
  );

  //All the connections
  assign mul_480_481_482__in0[15:0] = lb_p4_clamped_stencil_update_stream__out_0_2[15:0];
  assign mul_474_475_476__in0[15:0] = lb_p4_clamped_stencil_update_stream__out_0_1[15:0];
  assign lb_p4_clamped_stencil_update_stream__in_0_0[15:0] = in_arg_1_0_0[15:0];
  assign mul_504_505_506__in0[15:0] = lb_p4_clamped_stencil_update_stream__out_2_0[15:0];
  assign mul_516_517_518__in0[15:0] = lb_p4_clamped_stencil_update_stream__out_2_2[15:0];
  assign add_466_470_471__in0[15:0] = const0_0__out[15:0];
  assign add_466_470_471__in1[15:0] = mul_468_469_470__out[15:0];
  assign add_472_476_477__in0[15:0] = add_466_470_471__out[15:0];
  assign add_472_476_477__in1[15:0] = mul_474_475_476__out[15:0];
  assign add_478_482_483__in0[15:0] = add_472_476_477__out[15:0];
  assign add_478_482_483__in1[15:0] = mul_480_481_482__out[15:0];
  assign add_484_488_489__in0[15:0] = add_478_482_483__out[15:0];
  assign add_484_488_489__in1[15:0] = mul_486_487_488__out[15:0];
  assign add_490_494_495__in0[15:0] = add_484_488_489__out[15:0];
  assign add_490_494_495__in1[15:0] = mul_492_493_494__out[15:0];
  assign add_496_500_501__in0[15:0] = add_490_494_495__out[15:0];
  assign add_496_500_501__in1[15:0] = mul_498_499_500__out[15:0];
  assign add_502_506_507__in0[15:0] = add_496_500_501__out[15:0];
  assign add_502_506_507__in1[15:0] = mul_504_505_506__out[15:0];
  assign add_508_512_513__in0[15:0] = add_502_506_507__out[15:0];
  assign add_508_512_513__in1[15:0] = mul_510_511_512__out[15:0];
  assign add_514_518_519__in0[15:0] = add_508_512_513__out[15:0];
  assign add_514_518_519__in1[15:0] = mul_516_517_518__out[15:0];
  assign out_0_0[15:0] = add_514_518_519__out[15:0];
  assign mul_492_493_494__in1[15:0] = const0_0$1__out[15:0];
  assign mul_468_469_470__in1[15:0] = const11_11__out[15:0];
  assign mul_486_487_488__in1[15:0] = const12_12__out[15:0];
  assign mul_504_505_506__in1[15:0] = const13_13__out[15:0];
  assign mul_474_475_476__in1[15:0] = const14_14__out[15:0];
  assign mul_510_511_512__in1[15:0] = const16_16__out[15:0];
  assign mul_480_481_482__in1[15:0] = const17_17__out[15:0];
  assign mul_498_499_500__in1[15:0] = const18_18__out[15:0];
  assign mul_516_517_518__in1[15:0] = const19_19__out[15:0];
  assign mul_468_469_470__in0[15:0] = lb_p4_clamped_stencil_update_stream__out_0_0[15:0];
  assign mul_486_487_488__in0[15:0] = lb_p4_clamped_stencil_update_stream__out_1_0[15:0];
  assign mul_492_493_494__in0[15:0] = lb_p4_clamped_stencil_update_stream__out_1_1[15:0];
  assign mul_498_499_500__in0[15:0] = lb_p4_clamped_stencil_update_stream__out_1_2[15:0];
  assign mul_510_511_512__in0[15:0] = lb_p4_clamped_stencil_update_stream__out_2_1[15:0];
  assign lb_p4_clamped_stencil_update_stream__reset = lb_p4_clamped_stencil_update_stream_reset__out;
  assign lb_p4_clamped_stencil_update_stream__wen = lb_p4_clamped_stencil_update_stream_wen__out;

endmodule //DesignTop
