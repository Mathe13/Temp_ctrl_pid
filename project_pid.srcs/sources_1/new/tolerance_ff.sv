`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2022 22:38:34
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

module tolerance_ff(
  input  [3:0] data,
  input  clk, 
  input  reset,
  output reg[3:0] q    //SystemVerilog logic is preferred over reg
);


always_ff @(posedge clk) begin
  if (reset) begin
    q <= 4'b0000;
  end
  else begin
    q <= data;
  end
end

endmodule
