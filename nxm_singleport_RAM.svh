/////////////////////////////////////////////
// Title: nxm_RAM.svh
// Author: Carter Oates
// Date: 2026-04-18
// Description: This file contains the definition of the nxm_RAM module, which is a parameterized RAM module with support for multiple read and write ports. 
//              The module is designed to be used in a variety of applications where a flexible and efficient memory solution is required.
/////////////////////////////////////////////

parameter DATA_WIDTH = 32;      //m
parameter ADDR_WIDTH = 4;       //n
parameter DEPTH = 2^ADDR_WIDTH; // # of addressable memory locations in RAM

module  nxm_singleport_RAM(
    input logic clk,
    input logic rst,
    input logic read,
    input logic write,
    input logic cs,
    input logic address[ADDR_WIDTH-1:0],
    input logic in,
    output logic out
)

logic data[DEPTH-1:0]; // RAM storage array

always_ff @(posedge rst) begin
    if (rst) begin
        for (int i = 0; i < DEPTH; i++) begin
            data[i] <= '0; // Initialize all memory locations to zero on reset
        end
    end
end

always_ff @(posedge clk) begin
    if (cs = 1'b1);
        if (write = 1'b1) begin
            out <= data[address]; // Output the current data at the specified address before writing new data
            data[address] <= in; // Write new data to RAM at the specified address
        end
        else if (read = 1'b1) begin
            out <= data[address]; // Output the current data at the specified address
        end

    else begin
        out <= 'z; // High impedance state when chip select is not active
    end
    
end
endmodule