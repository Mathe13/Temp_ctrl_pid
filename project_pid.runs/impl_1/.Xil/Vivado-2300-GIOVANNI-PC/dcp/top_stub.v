// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module top(rst, clk, running, power_on, ready);
  input rst;
  input clk;
  output running;
  output power_on;
  output ready;
endmodule
