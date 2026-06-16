module tt_um_josue_olivos_6bit_counter (clk,
    ena,
    rst_n,
    ui_in,
    uio_in,
    uio_oe,
    uio_out,
    uo_out);
 input clk;
 input ena;
 input rst_n;
 input [7:0] ui_in;
 input [7:0] uio_in;
 output [7:0] uio_oe;
 output [7:0] uio_out;
 output [7:0] uo_out;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;

 sky130_fd_sc_hd__inv_2 _12_ (.A(uo_out[0]),
    .Y(_00_));
 sky130_fd_sc_hd__nand2_2 _13_ (.A(uo_out[1]),
    .B(uo_out[0]),
    .Y(_06_));
 sky130_fd_sc_hd__or2_2 _14_ (.A(uo_out[1]),
    .B(uo_out[0]),
    .X(_07_));
 sky130_fd_sc_hd__and2_2 _15_ (.A(_06_),
    .B(_07_),
    .X(_01_));
 sky130_fd_sc_hd__xnor2_2 _16_ (.A(uo_out[2]),
    .B(_06_),
    .Y(_02_));
 sky130_fd_sc_hd__and4_2 _17_ (.A(uo_out[1]),
    .B(uo_out[0]),
    .C(uo_out[2]),
    .D(uo_out[3]),
    .X(_08_));
 sky130_fd_sc_hd__a31o_2 _18_ (.A1(uo_out[1]),
    .A2(uo_out[0]),
    .A3(uo_out[2]),
    .B1(uo_out[3]),
    .X(_09_));
 sky130_fd_sc_hd__and2b_2 _19_ (.A_N(_08_),
    .B(_09_),
    .X(_03_));
 sky130_fd_sc_hd__nand2_2 _20_ (.A(uo_out[4]),
    .B(_08_),
    .Y(_10_));
 sky130_fd_sc_hd__or2_2 _21_ (.A(uo_out[4]),
    .B(_08_),
    .X(_11_));
 sky130_fd_sc_hd__and2_2 _22_ (.A(_10_),
    .B(_11_),
    .X(_04_));
 sky130_fd_sc_hd__xnor2_2 _23_ (.A(uo_out[5]),
    .B(_10_),
    .Y(_05_));
 sky130_fd_sc_hd__dfrtp_2 _24_ (.CLK(clk),
    .D(_00_),
    .RESET_B(rst_n),
    .Q(uo_out[0]));
 sky130_fd_sc_hd__dfrtp_2 _25_ (.CLK(clk),
    .D(_01_),
    .RESET_B(rst_n),
    .Q(uo_out[1]));
 sky130_fd_sc_hd__dfrtp_2 _26_ (.CLK(clk),
    .D(_02_),
    .RESET_B(rst_n),
    .Q(uo_out[2]));
 sky130_fd_sc_hd__dfrtp_2 _27_ (.CLK(clk),
    .D(_03_),
    .RESET_B(rst_n),
    .Q(uo_out[3]));
 sky130_fd_sc_hd__dfrtp_2 _28_ (.CLK(clk),
    .D(_04_),
    .RESET_B(rst_n),
    .Q(uo_out[4]));
 sky130_fd_sc_hd__dfrtp_2 _29_ (.CLK(clk),
    .D(_05_),
    .RESET_B(rst_n),
    .Q(uo_out[5]));
 sky130_fd_sc_hd__conb_1 _30_ (.LO(uio_oe[0]));
 sky130_fd_sc_hd__conb_1 _31_ (.LO(uio_oe[1]));
 sky130_fd_sc_hd__conb_1 _32_ (.LO(uio_oe[2]));
 sky130_fd_sc_hd__conb_1 _33_ (.LO(uio_oe[3]));
 sky130_fd_sc_hd__conb_1 _34_ (.LO(uio_oe[4]));
 sky130_fd_sc_hd__conb_1 _35_ (.LO(uio_oe[5]));
 sky130_fd_sc_hd__conb_1 _36_ (.LO(uio_oe[6]));
 sky130_fd_sc_hd__conb_1 _37_ (.LO(uio_oe[7]));
 sky130_fd_sc_hd__conb_1 _38_ (.LO(uio_out[0]));
 sky130_fd_sc_hd__conb_1 _39_ (.LO(uio_out[1]));
 sky130_fd_sc_hd__conb_1 _40_ (.LO(uio_out[2]));
 sky130_fd_sc_hd__conb_1 _41_ (.LO(uio_out[3]));
 sky130_fd_sc_hd__conb_1 _42_ (.LO(uio_out[4]));
 sky130_fd_sc_hd__conb_1 _43_ (.LO(uio_out[5]));
 sky130_fd_sc_hd__conb_1 _44_ (.LO(uio_out[6]));
 sky130_fd_sc_hd__conb_1 _45_ (.LO(uio_out[7]));
 sky130_fd_sc_hd__conb_1 _46_ (.LO(uo_out[6]));
 sky130_fd_sc_hd__conb_1 _47_ (.LO(uo_out[7]));
endmodule
