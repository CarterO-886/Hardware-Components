/////////////////////////////////////////////
// Title: nxm_RAM.svh
// Author: Carter Oates
// Date: 2026-04-18
// Description: This file contains the definition of the nxm_RAM module, which is a parameterized RAM module with support for multiple read and write ports. The module is designed to be used in a variety of applications where a flexible and efficient memory solution is required.
/////////////////////////////////////////////


parameter DATA_WIDTH = 32;      //m
parameter ADDR_WIDTH = 4;       //n
parameter DEPTH = 2^ADDR_WIDTH; // # of addressable memory locations in RAM

module singleport_nxm_singleport_RAM(
    input logic clk,
    input logic rst,
    input logic read,
    input logic write,
    input logic cs,
    input logic address[ADDR_WIDTH-1:0],
    output logic data [DATA_WIDTH-1:0]
)

always_ff



always_ff @(posedge clk) begin
    if (read == 1'b1);

         

    
end


endmodule