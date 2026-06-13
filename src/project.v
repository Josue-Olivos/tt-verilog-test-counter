/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_JosueOlivos6bitcounter (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

  wire [5:0] count;

  counter_6bit my_counter (
      .clk(clk),
      .rst(~rst_n),     // Tiny Tapeout reset is active-low, your reset is active-high
      .count(count)
  );

  assign uo_out[5:0] = count;
  assign uo_out[7:6] = 2'b00;

  assign uio_out = 8'b0;
  assign uio_oe  = 8'b0;

  wire _unused = &{ena, ui_in, uio_in, 1'b0};

endmodule


module counter_6bit (
    input  wire clk,
    input  wire rst,
    output reg [5:0] count
);

  always @(posedge clk or posedge rst) begin
    if (rst)
      count <= 6'd0;
    else
      count <= count + 6'd1;
  end

endmodule
