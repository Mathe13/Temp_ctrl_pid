`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2022 20:51:21
// Design Name: 
// Module Name: xadc
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


module xadc(
    input clk,
    input vn_in,
    input vp_in,
    output [15:0] voltage_out
    );
    
logic diff_voltage;
logic temperature;

// pegar a tensao de entrada e colocar numa função da temperatura (simular com reta inicial)
// depois converter o resultado dentro de uma faixa de bits para saida

always @(posedge clk) begin
    diff_voltage <= vp_in - vn_in;
    temperature <= 4 * diff_voltage + 7; // função de exemplo
    
    if (temperature > 100) begin // limite máximo
       temperature <= 100; 
    end
    
    else if (temperature < 0) begin // limite mínimo
        temperature <= 0;
    end
    
    // voltage_out <= temperature; // testar formas de converter para binario
end

endmodule