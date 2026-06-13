# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, Timer


@cocotb.test()
async def test_counter(dut):
    dut._log.info("Start 6-bit counter test")

    clock = Clock(dut.clk, 10, units="ns")
    cocotb.start_soon(clock.start())

    dut.ena.value = 1
    dut.ui_in.value = 0
    dut.uio_in.value = 0

    dut.rst_n.value = 0
    await Timer(20, units="ns")

    assert dut.uo_out.value.integer == 0

    dut.rst_n.value = 1

    for expected in range(1, 20):
        await RisingEdge(dut.clk)
        assert dut.uo_out.value.integer & 0x3F == expected

    dut.rst_n.value = 0
    await Timer(10, units="ns")

    assert dut.uo_out.value.integer & 0x3F == 0
