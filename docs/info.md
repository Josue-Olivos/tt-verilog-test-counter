<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a 6-bit synchronous binary counter. The counter increments by one on every rising edge of the clock signal. An asynchronous active-high reset is used internally and is driven by the Tiny Tapeout active-low reset input (rst_n). When reset is asserted, the counter returns to 0. The current count value is displayed on output pins uo[5:0].

## How to test

Apply a clock signal to the design.
Assert reset (rst_n = 0) to clear the counter.
Release reset (rst_n = 1).
Observe outputs uo[5:0].
The output should increment in binary on each rising clock edge:

## External hardware

None. The project only requires the Tiny Tapeout clock and reset signals. Counter outputs may be observed using LEDs, a logic analyzer, or an oscilloscope.
