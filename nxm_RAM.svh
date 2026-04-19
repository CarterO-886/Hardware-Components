/////////////////////////////////////////////
// Title: nxm_RAM.svh
// Author: Carter Oates
// Date 2026-04-18
// Description: This file contains the definition of the nxm_RAM module, which is a parameterized RAM module with support for multiple read and write ports. The module is designed to be used in a variety of applications where a flexible and efficient memory solution is required.
/////////////////////////////////////////////

module nxm_singleport_RAM(
    input logic clk,
    input logic read,
    input logic write,
    input logic address,
    output logic data
)

always_ff(posedge clk) begin
    if (read == 1'b1l);
        

    
end