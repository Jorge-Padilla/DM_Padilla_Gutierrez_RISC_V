//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO 
// Engineer: Jorge Alberto Padilla Gutiérrez
// Module Description: Program Counter register with asynchronous reset.
//////////////////////////////////////////////////////////////////////////////////

`include "Regs.sv"

module Reg_PC  #(parameter DATA_WIDTH=8)(
	//Inputs
	input                       rst,
	input                       clk,
	input                       en,
	input [DATA_WIDTH-1:0]      D,
	//Output
	output reg [DATA_WIDTH-1:0] Q
);

	//At a positive edge of the clock, or negative edge of reset
	`PC_FF_D_RST_EN(clk, rst, en, D, Q)

endmodule
