# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, Timer, ReadOnly


@cocotb.test()
async def test_counter(dut):
    dut._log.info("Start 6-bit counter test")

    clock = Clock(dut.clk, 10, unit="ns")
    cocotb.start_soon(clock.start())

    dut.ena.value = 1
    dut.ui_in.value = 0
    dut.uio_in.value = 0

    dut.rst_n.value = 0
    await Timer(1, unit="ns")
    assert (dut.uo_out.value.to_unsigned() & 0x3F) == 0

    await Timer(19, unit="ns")
    dut.rst_n.value = 1

previous = dut.uo_out.value.to_unsigned() & 0x3F

for i in range(20):
    await RisingEdge(dut.clk)
    await ReadOnly()

    current = dut.uo_out.value.to_unsigned() & 0x3F
    expected = (previous + 1) & 0x3F

    assert current == expected

    previous = current

    dut.rst_n.value = 0
    await Timer(1, unit="ns")
    assert (dut.uo_out.value.to_unsigned() & 0x3F) == 0
