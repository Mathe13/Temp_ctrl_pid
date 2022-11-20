`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2022 14:06:10
// Design Name: 
// Module Name: tolerance_ff
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

module tolerance_ff(
  input  [3:0] data,
  input  clk, 
  input  reset,
  input logic enable,
  output reg[3:0] q    //SystemVerilog logic is preferred over reg
);


always_ff @(posedge clk) begin
  if (reset) begin
    q <= 3'b1010;
  end
  else if(enable == 1) begin
    q <= data;
  end
end

endmodule
