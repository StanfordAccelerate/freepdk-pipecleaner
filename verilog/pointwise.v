

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

module DesignTop (
  input [15:0] in_arg_1_0_0,
  output [15:0] out_0_0
);
  //Wire declarations for instance 'const2__348' (Module coreir_const)
  wire [15:0] const2__348__out;
  coreir_const #(.value(16'b0000000000000010),.width(16)) const2__348(
    .out(const2__348__out)
  );

  //Wire declarations for instance 'mul_347_348_349' (Module coreir_mul)
  wire [15:0] mul_347_348_349__in0;
  wire [15:0] mul_347_348_349__in1;
  wire [15:0] mul_347_348_349__out;
  coreir_mul #(.width(16)) mul_347_348_349(
    .in0(mul_347_348_349__in0),
    .in1(mul_347_348_349__in1),
    .out(mul_347_348_349__out)
  );

  //All the connections
  assign mul_347_348_349__in1[15:0] = const2__348__out[15:0];
  assign mul_347_348_349__in0[15:0] = in_arg_1_0_0[15:0];
  assign out_0_0[15:0] = mul_347_348_349__out[15:0];

endmodule //DesignTop
