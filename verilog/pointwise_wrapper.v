module DesignTopWrapper(
  input clk,
  input rst, 
  input [15:0] in,
  output [15:0] out,
);

  reg [15:0] in_r;
  reg [15:0] out_r;
  wire [15:0] in_w;
  wire [15:0] out_w;

  DesignTop dut (.in_arg_1_0_0(in_w), .out_0_0(out_w));
  
  always @ (posedge clk) begin
    if (rst) begin
      in_r <= 0;
      out_r <= 0;
    end else begin
      in_r <= in;
      out_r <= out_w;
    end
  end
  
  assign in_w = in_r;
  assign out = out_r;
endmodule
