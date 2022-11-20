`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2022 22:01:01
// Design Name: 
// Module Name: threshold_ff
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

module threshold_ff(
  input  [7:0] data,
  input  clk, 
  input  reset,
  input logic enable,
  output reg[7:0] q    //SystemVerilog logic is preferred over reg
);


always_ff @(posedge clk) begin
  if (reset) begin
    q <= 8'b00011001;
  end
  else if(enable == 1) begin
    q <= data;
  end
end

endmodule