`timescale 1ns/1ps

module clk_div(
    int parameter DIVISOR = 4 //How many input clock cycles to divide by
)(
    input logic rst,
    input logic clk,
    output logic sclk

);
    //Count signal width fitting
    logic WIDTH = $clog2(DIVISOR);
    logic [WIDTH-1:0]count;

    initial count = '0;
    initial sclk = 1'b0;
    
    while(count <(DIVISOR/2)) //Full clock cycle is half high and half low
        if (count == DIVISOR)
            sclk <= ~sclk;
            count <= '0;
        else if (rst)
            sclk <= '0;
            count <= '0;
        else
            count <=  count + 1;

endmodule