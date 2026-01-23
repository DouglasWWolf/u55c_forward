//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Jan 23 12:28:15 2026
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module eth_0_imp_H4LLQV
   (active,
    aligned,
    axis_rx_tdata,
    axis_rx_tkeep,
    axis_rx_tlast,
    axis_rx_tuser,
    axis_rx_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tuser,
    axis_tx_tvalid,
    init_clk,
    qsfp_clk_clk_n,
    qsfp_clk_clk_p,
    qsfp_gt_grx_n,
    qsfp_gt_grx_p,
    qsfp_gt_gtx_n,
    qsfp_gt_gtx_p,
    reset_indicator,
    rsfec_enable,
    stream_clk,
    stream_resetn,
    sys_resetn,
    tx_diff,
    tx_post,
    tx_pre);
  output active;
  output aligned;
  output [511:0]axis_rx_tdata;
  output [63:0]axis_rx_tkeep;
  output axis_rx_tlast;
  output [0:0]axis_rx_tuser;
  output axis_rx_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input [0:0]axis_tx_tuser;
  input axis_tx_tvalid;
  input init_clk;
  input qsfp_clk_clk_n;
  input qsfp_clk_clk_p;
  input [3:0]qsfp_gt_grx_n;
  input [3:0]qsfp_gt_grx_p;
  output [3:0]qsfp_gt_gtx_n;
  output [3:0]qsfp_gt_gtx_p;
  output reset_indicator;
  input rsfec_enable;
  output stream_clk;
  output stream_resetn;
  input sys_resetn;
  input [4:0]tx_diff;
  input [4:0]tx_post;
  input [4:0]tx_pre;

  wire active;
  wire aligned;
  wire [511:0]axis_rx_tdata;
  wire [63:0]axis_rx_tkeep;
  wire axis_rx_tlast;
  wire [0:0]axis_rx_tuser;
  wire axis_rx_tvalid;
  wire [511:0]axis_tx_tdata;
  wire [63:0]axis_tx_tkeep;
  wire axis_tx_tlast;
  wire axis_tx_tready;
  wire [0:0]axis_tx_tuser;
  wire axis_tx_tvalid;
  wire cmac_control_ex_0_ctl_rx_ctl_enable;
  wire cmac_control_ex_0_ctl_tx_ctl_enable;
  wire cmac_control_ex_0_ctl_tx_ctl_tx_send_rfi;
  wire cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_ex_0_rs_fec_ctl_tx_rsfec_enable;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txdiffctrl;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txpostcursor;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txprecursor;
  wire cmac_control_ex_reset_rx_datapath;
  wire cmac_control_ex_sys_reset_out;
  wire cmac_stat_rx_stat_rx_aligned;
  wire [511:0]ila_M_AXIS_RX_TDATA;
  wire [63:0]ila_M_AXIS_RX_TKEEP;
  wire ila_M_AXIS_RX_TLAST;
  wire ila_M_AXIS_RX_TUSER;
  wire ila_M_AXIS_RX_TVALID;
  wire init_clk;
  wire qsfp_clk_clk_n;
  wire qsfp_clk_clk_p;
  wire [3:0]qsfp_gt_grx_n;
  wire [3:0]qsfp_gt_grx_p;
  wire [3:0]qsfp_gt_gtx_n;
  wire [3:0]qsfp_gt_gtx_p;
  wire reset_indicator;
  wire rsfec_enable;
  wire stream_clk;
  wire stream_resetn;
  wire sys_resetn;
  wire [4:0]tx_diff;
  wire [4:0]tx_post;
  wire [4:0]tx_pre;

  top_level_cmac_usplus_0_0 cmac
       (.common0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpen(1'b0),
        .common0_drpwe(1'b0),
        .core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_ex_0_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_ex_0_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_ex_0_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(init_clk),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpen(1'b0),
        .gt0_drpwe(1'b0),
        .gt1_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpen(1'b0),
        .gt1_drpwe(1'b0),
        .gt2_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpen(1'b0),
        .gt2_drpwe(1'b0),
        .gt3_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpen(1'b0),
        .gt3_drpwe(1'b0),
        .gt_drpclk(init_clk),
        .gt_eyescanreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_eyescantrigger({1'b0,1'b0,1'b0,1'b0}),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(qsfp_clk_clk_n),
        .gt_ref_clk_p(qsfp_clk_clk_p),
        .gt_rxcdrhold({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxdfelpmreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxlpmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxn_in(qsfp_gt_grx_n),
        .gt_rxp_in(qsfp_gt_grx_p),
        .gt_rxpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbscntreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txdiffctrl(cmac_control_ex_gt_trans_debug_gt_txdiffctrl),
        .gt_txinhibit({1'b0,1'b0,1'b0,1'b0}),
        .gt_txn_out(qsfp_gt_gtx_n),
        .gt_txp_out(qsfp_gt_gtx_p),
        .gt_txpippmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpippmsel({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpostcursor(cmac_control_ex_gt_trans_debug_gt_txpostcursor),
        .gt_txprbsforceerr({1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprecursor(cmac_control_ex_gt_trans_debug_gt_txprecursor),
        .gt_txusrclk2(stream_clk),
        .gtwiz_reset_rx_datapath(cmac_control_ex_reset_rx_datapath),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(init_clk),
        .rx_axis_tdata(ila_M_AXIS_RX_TDATA),
        .rx_axis_tkeep(ila_M_AXIS_RX_TKEEP),
        .rx_axis_tlast(ila_M_AXIS_RX_TLAST),
        .rx_axis_tuser(ila_M_AXIS_RX_TUSER),
        .rx_axis_tvalid(ila_M_AXIS_RX_TVALID),
        .rx_clk(stream_clk),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sys_reset(cmac_control_ex_sys_reset_out),
        .tx_axis_tdata(axis_tx_tdata),
        .tx_axis_tkeep(axis_tx_tkeep),
        .tx_axis_tlast(axis_tx_tlast),
        .tx_axis_tready(axis_tx_tready),
        .tx_axis_tuser(axis_tx_tuser),
        .tx_axis_tvalid(axis_tx_tvalid),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  top_level_cmac_control_ex_0_0 cmac_control_ex
       (.ctl_rx_enable(cmac_control_ex_0_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_ex_0_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_ex_0_ctl_tx_ctl_tx_send_rfi),
        .gt_txdiffctrl(cmac_control_ex_gt_trans_debug_gt_txdiffctrl),
        .gt_txpostcursor(cmac_control_ex_gt_trans_debug_gt_txpostcursor),
        .gt_txprecursor(cmac_control_ex_gt_trans_debug_gt_txprecursor),
        .reset_rx_datapath(cmac_control_ex_reset_rx_datapath),
        .rsfec_enable(rsfec_enable),
        .rx_clk(stream_clk),
        .rx_resetn_out(stream_resetn),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sync_rx_aligned(aligned),
        .sys_reset_out(cmac_control_ex_sys_reset_out),
        .sys_resetn_in(sys_resetn),
        .tx_diff(tx_diff),
        .tx_post(tx_post),
        .tx_pre(tx_pre));
  top_level_reset_indicator_0_0 reset_indicator_RnM
       (.clk(stream_clk),
        .reset_indicator(reset_indicator),
        .resetn(stream_resetn));
  rx_path_imp_1385L5B rx_path
       (.M_AXIS_tdata(axis_rx_tdata),
        .M_AXIS_tkeep(axis_rx_tkeep),
        .M_AXIS_tlast(axis_rx_tlast),
        .M_AXIS_tuser(axis_rx_tuser),
        .M_AXIS_tvalid(axis_rx_tvalid),
        .S_AXIS_tdata(ila_M_AXIS_RX_TDATA),
        .S_AXIS_tkeep(ila_M_AXIS_RX_TKEEP),
        .S_AXIS_tlast(ila_M_AXIS_RX_TLAST),
        .S_AXIS_tuser(ila_M_AXIS_RX_TUSER),
        .S_AXIS_tvalid(ila_M_AXIS_RX_TVALID),
        .active(active),
        .stream_clk(stream_clk),
        .stream_resetn(stream_resetn));
endmodule

module eth_1_imp_1MEC6LL
   (active,
    aligned,
    axis_rx_tdata,
    axis_rx_tkeep,
    axis_rx_tlast,
    axis_rx_tuser,
    axis_rx_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tuser,
    axis_tx_tvalid,
    init_clk,
    qsfp_clk_clk_n,
    qsfp_clk_clk_p,
    qsfp_gt_grx_n,
    qsfp_gt_grx_p,
    qsfp_gt_gtx_n,
    qsfp_gt_gtx_p,
    reset_indicator,
    rsfec_enable,
    stream_clk,
    stream_resetn,
    sys_resetn,
    tx_diff,
    tx_post,
    tx_pre);
  output active;
  output aligned;
  output [511:0]axis_rx_tdata;
  output [63:0]axis_rx_tkeep;
  output axis_rx_tlast;
  output [0:0]axis_rx_tuser;
  output axis_rx_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input [0:0]axis_tx_tuser;
  input axis_tx_tvalid;
  input init_clk;
  input qsfp_clk_clk_n;
  input qsfp_clk_clk_p;
  input [3:0]qsfp_gt_grx_n;
  input [3:0]qsfp_gt_grx_p;
  output [3:0]qsfp_gt_gtx_n;
  output [3:0]qsfp_gt_gtx_p;
  output reset_indicator;
  input rsfec_enable;
  output stream_clk;
  output stream_resetn;
  input sys_resetn;
  input [4:0]tx_diff;
  input [4:0]tx_post;
  input [4:0]tx_pre;

  wire active;
  wire aligned;
  wire [511:0]axis_rx_tdata;
  wire [63:0]axis_rx_tkeep;
  wire axis_rx_tlast;
  wire [0:0]axis_rx_tuser;
  wire axis_rx_tvalid;
  wire [511:0]axis_tx_tdata;
  wire [63:0]axis_tx_tkeep;
  wire axis_tx_tlast;
  wire axis_tx_tready;
  wire [0:0]axis_tx_tuser;
  wire axis_tx_tvalid;
  wire [511:0]cmac_axis_rx_TDATA;
  wire [63:0]cmac_axis_rx_TKEEP;
  wire cmac_axis_rx_TLAST;
  wire cmac_axis_rx_TUSER;
  wire cmac_axis_rx_TVALID;
  wire cmac_control_ex_0_ctl_rx_ctl_enable;
  wire cmac_control_ex_0_ctl_tx_ctl_enable;
  wire cmac_control_ex_0_ctl_tx_ctl_tx_send_rfi;
  wire cmac_control_ex_0_reset_rx_datapath;
  wire cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_ex_0_rs_fec_ctl_tx_rsfec_enable;
  wire cmac_control_ex_0_sys_reset_out;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txdiffctrl;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txpostcursor;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txprecursor;
  wire cmac_stat_rx_stat_rx_aligned;
  wire init_clk;
  wire qsfp_clk_clk_n;
  wire qsfp_clk_clk_p;
  wire [3:0]qsfp_gt_grx_n;
  wire [3:0]qsfp_gt_grx_p;
  wire [3:0]qsfp_gt_gtx_n;
  wire [3:0]qsfp_gt_gtx_p;
  wire reset_indicator;
  wire rsfec_enable;
  wire stream_clk;
  wire stream_resetn;
  wire sys_resetn;
  wire [4:0]tx_diff;
  wire [4:0]tx_post;
  wire [4:0]tx_pre;

  top_level_cmac_0 cmac
       (.common0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpen(1'b0),
        .common0_drpwe(1'b0),
        .core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_ex_0_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_ex_0_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_ex_0_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(init_clk),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpen(1'b0),
        .gt0_drpwe(1'b0),
        .gt1_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpen(1'b0),
        .gt1_drpwe(1'b0),
        .gt2_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpen(1'b0),
        .gt2_drpwe(1'b0),
        .gt3_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpen(1'b0),
        .gt3_drpwe(1'b0),
        .gt_drpclk(init_clk),
        .gt_eyescanreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_eyescantrigger({1'b0,1'b0,1'b0,1'b0}),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(qsfp_clk_clk_n),
        .gt_ref_clk_p(qsfp_clk_clk_p),
        .gt_rxcdrhold({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxdfelpmreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxlpmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxn_in(qsfp_gt_grx_n),
        .gt_rxp_in(qsfp_gt_grx_p),
        .gt_rxpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbscntreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txdiffctrl(cmac_control_ex_gt_trans_debug_gt_txdiffctrl),
        .gt_txinhibit({1'b0,1'b0,1'b0,1'b0}),
        .gt_txn_out(qsfp_gt_gtx_n),
        .gt_txp_out(qsfp_gt_gtx_p),
        .gt_txpippmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpippmsel({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpostcursor(cmac_control_ex_gt_trans_debug_gt_txpostcursor),
        .gt_txprbsforceerr({1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprecursor(cmac_control_ex_gt_trans_debug_gt_txprecursor),
        .gt_txusrclk2(stream_clk),
        .gtwiz_reset_rx_datapath(cmac_control_ex_0_reset_rx_datapath),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(init_clk),
        .rx_axis_tdata(cmac_axis_rx_TDATA),
        .rx_axis_tkeep(cmac_axis_rx_TKEEP),
        .rx_axis_tlast(cmac_axis_rx_TLAST),
        .rx_axis_tuser(cmac_axis_rx_TUSER),
        .rx_axis_tvalid(cmac_axis_rx_TVALID),
        .rx_clk(stream_clk),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sys_reset(cmac_control_ex_0_sys_reset_out),
        .tx_axis_tdata(axis_tx_tdata),
        .tx_axis_tkeep(axis_tx_tkeep),
        .tx_axis_tlast(axis_tx_tlast),
        .tx_axis_tready(axis_tx_tready),
        .tx_axis_tuser(axis_tx_tuser),
        .tx_axis_tvalid(axis_tx_tvalid),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  top_level_cmac_control_ex_0_1 cmac_control_ex
       (.ctl_rx_enable(cmac_control_ex_0_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_ex_0_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_ex_0_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_ex_0_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_ex_0_ctl_tx_ctl_tx_send_rfi),
        .gt_txdiffctrl(cmac_control_ex_gt_trans_debug_gt_txdiffctrl),
        .gt_txpostcursor(cmac_control_ex_gt_trans_debug_gt_txpostcursor),
        .gt_txprecursor(cmac_control_ex_gt_trans_debug_gt_txprecursor),
        .reset_rx_datapath(cmac_control_ex_0_reset_rx_datapath),
        .rsfec_enable(rsfec_enable),
        .rx_clk(stream_clk),
        .rx_resetn_out(stream_resetn),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sync_rx_aligned(aligned),
        .sys_reset_out(cmac_control_ex_0_sys_reset_out),
        .sys_resetn_in(sys_resetn),
        .tx_diff(tx_diff),
        .tx_post(tx_post),
        .tx_pre(tx_pre));
  top_level_reset_indicator_0_1 reset_indicator_RnM
       (.clk(stream_clk),
        .reset_indicator(reset_indicator),
        .resetn(stream_resetn));
  rx_path_imp_R7EV8U rx_path
       (.M_AXIS_tdata(axis_rx_tdata),
        .M_AXIS_tkeep(axis_rx_tkeep),
        .M_AXIS_tlast(axis_rx_tlast),
        .M_AXIS_tuser(axis_rx_tuser),
        .M_AXIS_tvalid(axis_rx_tvalid),
        .S_AXIS_tdata(cmac_axis_rx_TDATA),
        .S_AXIS_tkeep(cmac_axis_rx_TKEEP),
        .S_AXIS_tlast(cmac_axis_rx_TLAST),
        .S_AXIS_tuser(cmac_axis_rx_TUSER),
        .S_AXIS_tvalid(cmac_axis_rx_TVALID),
        .active(active),
        .stream_clk(stream_clk),
        .stream_resetn(stream_resetn));
endmodule

module forward_imp_1EBZWA5
   (clk_0,
    clk_1,
    resetn_0,
    resetn_1,
    rx0_stream_tdata,
    rx0_stream_tkeep,
    rx0_stream_tlast,
    rx0_stream_tuser,
    rx0_stream_tvalid,
    rx1_stream_tdata,
    rx1_stream_tkeep,
    rx1_stream_tlast,
    rx1_stream_tuser,
    rx1_stream_tvalid,
    tx0_stream_tdata,
    tx0_stream_tkeep,
    tx0_stream_tlast,
    tx0_stream_tready,
    tx0_stream_tuser,
    tx0_stream_tvalid,
    tx1_stream_tdata,
    tx1_stream_tkeep,
    tx1_stream_tlast,
    tx1_stream_tready,
    tx1_stream_tuser,
    tx1_stream_tvalid);
  input clk_0;
  input clk_1;
  input resetn_0;
  input resetn_1;
  input [511:0]rx0_stream_tdata;
  input [63:0]rx0_stream_tkeep;
  input rx0_stream_tlast;
  input [0:0]rx0_stream_tuser;
  input rx0_stream_tvalid;
  input [511:0]rx1_stream_tdata;
  input [63:0]rx1_stream_tkeep;
  input rx1_stream_tlast;
  input [0:0]rx1_stream_tuser;
  input rx1_stream_tvalid;
  output [511:0]tx0_stream_tdata;
  output [63:0]tx0_stream_tkeep;
  output tx0_stream_tlast;
  input tx0_stream_tready;
  output [0:0]tx0_stream_tuser;
  output tx0_stream_tvalid;
  output [511:0]tx1_stream_tdata;
  output [63:0]tx1_stream_tkeep;
  output tx1_stream_tlast;
  input tx1_stream_tready;
  output [0:0]tx1_stream_tuser;
  output tx1_stream_tvalid;

  wire clk_0;
  wire clk_1;
  wire resetn_0;
  wire resetn_1;
  wire [511:0]rx0_stream_tdata;
  wire [63:0]rx0_stream_tkeep;
  wire rx0_stream_tlast;
  wire [0:0]rx0_stream_tuser;
  wire rx0_stream_tvalid;
  wire [511:0]rx1_stream_tdata;
  wire [63:0]rx1_stream_tkeep;
  wire rx1_stream_tlast;
  wire [0:0]rx1_stream_tuser;
  wire rx1_stream_tvalid;
  wire [511:0]tx0_stream_tdata;
  wire [63:0]tx0_stream_tkeep;
  wire tx0_stream_tlast;
  wire tx0_stream_tready;
  wire [0:0]tx0_stream_tuser;
  wire tx0_stream_tvalid;
  wire [511:0]tx1_stream_tdata;
  wire [63:0]tx1_stream_tkeep;
  wire tx1_stream_tlast;
  wire tx1_stream_tready;
  wire [0:0]tx1_stream_tuser;
  wire tx1_stream_tvalid;

  rx0_to_tx1_imp_6XL2P8 rx0_to_tx1
       (.rx_clk(clk_0),
        .rx_resetn(resetn_0),
        .rx_stream_tdata(rx0_stream_tdata),
        .rx_stream_tkeep(rx0_stream_tkeep),
        .rx_stream_tlast(rx0_stream_tlast),
        .rx_stream_tuser(rx0_stream_tuser),
        .rx_stream_tvalid(rx0_stream_tvalid),
        .tx_clk(clk_1),
        .tx_resetn(resetn_1),
        .tx_stream_tdata(tx1_stream_tdata),
        .tx_stream_tkeep(tx1_stream_tkeep),
        .tx_stream_tlast(tx1_stream_tlast),
        .tx_stream_tready(tx1_stream_tready),
        .tx_stream_tuser(tx1_stream_tuser),
        .tx_stream_tvalid(tx1_stream_tvalid));
  rx1_to_tx0_imp_V8OCK1 rx1_to_tx0
       (.rx_clk(clk_1),
        .rx_resetn(resetn_1),
        .rx_stream_tdata(rx1_stream_tdata),
        .rx_stream_tkeep(rx1_stream_tkeep),
        .rx_stream_tlast(rx1_stream_tlast),
        .rx_stream_tuser(rx1_stream_tuser),
        .rx_stream_tvalid(rx1_stream_tvalid),
        .tx_clk(clk_0),
        .tx_resetn(resetn_0),
        .tx_stream_tdata(tx0_stream_tdata),
        .tx_stream_tkeep(tx0_stream_tkeep),
        .tx_stream_tlast(tx0_stream_tlast),
        .tx_stream_tready(tx0_stream_tready),
        .tx_stream_tuser(tx0_stream_tuser),
        .tx_stream_tvalid(tx0_stream_tvalid));
endmodule

module pcie_imp_P7FEFP
   (M_AXI_B_araddr,
    M_AXI_B_arburst,
    M_AXI_B_arcache,
    M_AXI_B_arid,
    M_AXI_B_arlen,
    M_AXI_B_arlock,
    M_AXI_B_arprot,
    M_AXI_B_arready,
    M_AXI_B_arsize,
    M_AXI_B_arvalid,
    M_AXI_B_awaddr,
    M_AXI_B_awburst,
    M_AXI_B_awcache,
    M_AXI_B_awid,
    M_AXI_B_awlen,
    M_AXI_B_awlock,
    M_AXI_B_awprot,
    M_AXI_B_awready,
    M_AXI_B_awsize,
    M_AXI_B_awvalid,
    M_AXI_B_bid,
    M_AXI_B_bready,
    M_AXI_B_bresp,
    M_AXI_B_bvalid,
    M_AXI_B_rdata,
    M_AXI_B_rid,
    M_AXI_B_rlast,
    M_AXI_B_rready,
    M_AXI_B_rresp,
    M_AXI_B_rvalid,
    M_AXI_B_wdata,
    M_AXI_B_wlast,
    M_AXI_B_wready,
    M_AXI_B_wstrb,
    M_AXI_B_wvalid,
    S_AXI_LITE_araddr,
    S_AXI_LITE_arprot,
    S_AXI_LITE_arready,
    S_AXI_LITE_arvalid,
    S_AXI_LITE_awaddr,
    S_AXI_LITE_awprot,
    S_AXI_LITE_awready,
    S_AXI_LITE_awvalid,
    S_AXI_LITE_bready,
    S_AXI_LITE_bresp,
    S_AXI_LITE_bvalid,
    S_AXI_LITE_rdata,
    S_AXI_LITE_rready,
    S_AXI_LITE_rresp,
    S_AXI_LITE_rvalid,
    S_AXI_LITE_wdata,
    S_AXI_LITE_wready,
    S_AXI_LITE_wstrb,
    S_AXI_LITE_wvalid,
    axi_aclk,
    axi_aresetn,
    led_pcie_link_up,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_perst_l,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p);
  output M_AXI_B_araddr;
  output [1:0]M_AXI_B_arburst;
  output [3:0]M_AXI_B_arcache;
  output M_AXI_B_arid;
  output M_AXI_B_arlen;
  output M_AXI_B_arlock;
  output [2:0]M_AXI_B_arprot;
  input [0:0]M_AXI_B_arready;
  output [2:0]M_AXI_B_arsize;
  output [0:0]M_AXI_B_arvalid;
  output M_AXI_B_awaddr;
  output [1:0]M_AXI_B_awburst;
  output [3:0]M_AXI_B_awcache;
  output M_AXI_B_awid;
  output M_AXI_B_awlen;
  output M_AXI_B_awlock;
  output [2:0]M_AXI_B_awprot;
  input [0:0]M_AXI_B_awready;
  output [2:0]M_AXI_B_awsize;
  output [0:0]M_AXI_B_awvalid;
  input M_AXI_B_bid;
  output [0:0]M_AXI_B_bready;
  input [1:0]M_AXI_B_bresp;
  input [0:0]M_AXI_B_bvalid;
  input M_AXI_B_rdata;
  input M_AXI_B_rid;
  input [0:0]M_AXI_B_rlast;
  output [0:0]M_AXI_B_rready;
  input [1:0]M_AXI_B_rresp;
  input [0:0]M_AXI_B_rvalid;
  output M_AXI_B_wdata;
  output [0:0]M_AXI_B_wlast;
  input [0:0]M_AXI_B_wready;
  output M_AXI_B_wstrb;
  output [0:0]M_AXI_B_wvalid;
  input S_AXI_LITE_araddr;
  input [2:0]S_AXI_LITE_arprot;
  output [0:0]S_AXI_LITE_arready;
  input [0:0]S_AXI_LITE_arvalid;
  input S_AXI_LITE_awaddr;
  input [2:0]S_AXI_LITE_awprot;
  output [0:0]S_AXI_LITE_awready;
  input [0:0]S_AXI_LITE_awvalid;
  input [0:0]S_AXI_LITE_bready;
  output [1:0]S_AXI_LITE_bresp;
  output [0:0]S_AXI_LITE_bvalid;
  output S_AXI_LITE_rdata;
  input [0:0]S_AXI_LITE_rready;
  output [1:0]S_AXI_LITE_rresp;
  output [0:0]S_AXI_LITE_rvalid;
  input S_AXI_LITE_wdata;
  output [0:0]S_AXI_LITE_wready;
  input S_AXI_LITE_wstrb;
  input [0:0]S_AXI_LITE_wvalid;
  output axi_aclk;
  output [0:0]axi_aresetn;
  output led_pcie_link_up;
  input [7:0]pcie_mgt_rxn;
  input [7:0]pcie_mgt_rxp;
  output [7:0]pcie_mgt_txn;
  output [7:0]pcie_mgt_txp;
  input pcie_perst_l;
  input [0:0]pcie_refclk_clk_n;
  input [0:0]pcie_refclk_clk_p;

  wire [63:0]\^M_AXI_B_araddr ;
  wire [1:0]M_AXI_B_arburst;
  wire [3:0]M_AXI_B_arcache;
  wire [3:0]\^M_AXI_B_arid ;
  wire [7:0]\^M_AXI_B_arlen ;
  wire M_AXI_B_arlock;
  wire [2:0]M_AXI_B_arprot;
  wire [0:0]M_AXI_B_arready;
  wire [2:0]M_AXI_B_arsize;
  wire \^M_AXI_B_arvalid ;
  wire [63:0]\^M_AXI_B_awaddr ;
  wire [1:0]M_AXI_B_awburst;
  wire [3:0]M_AXI_B_awcache;
  wire [3:0]\^M_AXI_B_awid ;
  wire [7:0]\^M_AXI_B_awlen ;
  wire M_AXI_B_awlock;
  wire [2:0]M_AXI_B_awprot;
  wire [0:0]M_AXI_B_awready;
  wire [2:0]M_AXI_B_awsize;
  wire \^M_AXI_B_awvalid ;
  wire M_AXI_B_bid;
  wire \^M_AXI_B_bready ;
  wire [1:0]M_AXI_B_bresp;
  wire [0:0]M_AXI_B_bvalid;
  wire M_AXI_B_rdata;
  wire M_AXI_B_rid;
  wire [0:0]M_AXI_B_rlast;
  wire \^M_AXI_B_rready ;
  wire [1:0]M_AXI_B_rresp;
  wire [0:0]M_AXI_B_rvalid;
  wire [255:0]\^M_AXI_B_wdata ;
  wire \^M_AXI_B_wlast ;
  wire [0:0]M_AXI_B_wready;
  wire [31:0]\^M_AXI_B_wstrb ;
  wire \^M_AXI_B_wvalid ;
  wire S_AXI_LITE_araddr;
  wire [2:0]S_AXI_LITE_arprot;
  wire \^S_AXI_LITE_arready ;
  wire [0:0]S_AXI_LITE_arvalid;
  wire S_AXI_LITE_awaddr;
  wire [2:0]S_AXI_LITE_awprot;
  wire \^S_AXI_LITE_awready ;
  wire [0:0]S_AXI_LITE_awvalid;
  wire [0:0]S_AXI_LITE_bready;
  wire [1:0]S_AXI_LITE_bresp;
  wire \^S_AXI_LITE_bvalid ;
  wire [31:0]\^S_AXI_LITE_rdata ;
  wire [0:0]S_AXI_LITE_rready;
  wire [1:0]S_AXI_LITE_rresp;
  wire \^S_AXI_LITE_rvalid ;
  wire S_AXI_LITE_wdata;
  wire \^S_AXI_LITE_wready ;
  wire S_AXI_LITE_wstrb;
  wire [0:0]S_AXI_LITE_wvalid;
  wire axi_aclk;
  wire [0:0]axi_aresetn;
  wire [0:0]bridge_input_clock_IBUF_DS_ODIV2;
  wire [0:0]bridge_input_clock_IBUF_OUT;
  wire led_pcie_link_up;
  wire pcie_bridge_axi_aresetn;
  wire [7:0]pcie_mgt_rxn;
  wire [7:0]pcie_mgt_rxp;
  wire [7:0]pcie_mgt_txn;
  wire [7:0]pcie_mgt_txp;
  wire pcie_perst_l;
  wire [0:0]pcie_refclk_clk_n;
  wire [0:0]pcie_refclk_clk_p;

  assign M_AXI_B_araddr = \^M_AXI_B_araddr [0];
  assign M_AXI_B_arid = \^M_AXI_B_arid [0];
  assign M_AXI_B_arlen = \^M_AXI_B_arlen [0];
  assign M_AXI_B_arvalid[0] = \^M_AXI_B_arvalid ;
  assign M_AXI_B_awaddr = \^M_AXI_B_awaddr [0];
  assign M_AXI_B_awid = \^M_AXI_B_awid [0];
  assign M_AXI_B_awlen = \^M_AXI_B_awlen [0];
  assign M_AXI_B_awvalid[0] = \^M_AXI_B_awvalid ;
  assign M_AXI_B_bready[0] = \^M_AXI_B_bready ;
  assign M_AXI_B_rready[0] = \^M_AXI_B_rready ;
  assign M_AXI_B_wdata = \^M_AXI_B_wdata [0];
  assign M_AXI_B_wlast[0] = \^M_AXI_B_wlast ;
  assign M_AXI_B_wstrb = \^M_AXI_B_wstrb [0];
  assign M_AXI_B_wvalid[0] = \^M_AXI_B_wvalid ;
  assign S_AXI_LITE_arready[0] = \^S_AXI_LITE_arready ;
  assign S_AXI_LITE_awready[0] = \^S_AXI_LITE_awready ;
  assign S_AXI_LITE_bvalid[0] = \^S_AXI_LITE_bvalid ;
  assign S_AXI_LITE_rdata = \^S_AXI_LITE_rdata [0];
  assign S_AXI_LITE_rvalid[0] = \^S_AXI_LITE_rvalid ;
  assign S_AXI_LITE_wready[0] = \^S_AXI_LITE_wready ;
  top_level_util_ds_buf_0_0 bridge_input_clock
       (.IBUF_DS_N(pcie_refclk_clk_n),
        .IBUF_DS_ODIV2(bridge_input_clock_IBUF_DS_ODIV2),
        .IBUF_DS_P(pcie_refclk_clk_p),
        .IBUF_OUT(bridge_input_clock_IBUF_OUT));
  top_level_xdma_0_0 pcie_bridge
       (.axi_aclk(axi_aclk),
        .axi_aresetn(pcie_bridge_axi_aresetn),
        .m_axib_araddr(\^M_AXI_B_araddr ),
        .m_axib_arburst(M_AXI_B_arburst),
        .m_axib_arcache(M_AXI_B_arcache),
        .m_axib_arid(\^M_AXI_B_arid ),
        .m_axib_arlen(\^M_AXI_B_arlen ),
        .m_axib_arlock(M_AXI_B_arlock),
        .m_axib_arprot(M_AXI_B_arprot),
        .m_axib_arready(M_AXI_B_arready),
        .m_axib_arsize(M_AXI_B_arsize),
        .m_axib_arvalid(\^M_AXI_B_arvalid ),
        .m_axib_awaddr(\^M_AXI_B_awaddr ),
        .m_axib_awburst(M_AXI_B_awburst),
        .m_axib_awcache(M_AXI_B_awcache),
        .m_axib_awid(\^M_AXI_B_awid ),
        .m_axib_awlen(\^M_AXI_B_awlen ),
        .m_axib_awlock(M_AXI_B_awlock),
        .m_axib_awprot(M_AXI_B_awprot),
        .m_axib_awready(M_AXI_B_awready),
        .m_axib_awsize(M_AXI_B_awsize),
        .m_axib_awvalid(\^M_AXI_B_awvalid ),
        .m_axib_bid({M_AXI_B_bid,M_AXI_B_bid,M_AXI_B_bid,M_AXI_B_bid}),
        .m_axib_bready(\^M_AXI_B_bready ),
        .m_axib_bresp(M_AXI_B_bresp),
        .m_axib_bvalid(M_AXI_B_bvalid),
        .m_axib_rdata({M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata}),
        .m_axib_rid({M_AXI_B_rid,M_AXI_B_rid,M_AXI_B_rid,M_AXI_B_rid}),
        .m_axib_rlast(M_AXI_B_rlast),
        .m_axib_rready(\^M_AXI_B_rready ),
        .m_axib_rresp(M_AXI_B_rresp),
        .m_axib_rvalid(M_AXI_B_rvalid),
        .m_axib_wdata(\^M_AXI_B_wdata ),
        .m_axib_wlast(\^M_AXI_B_wlast ),
        .m_axib_wready(M_AXI_B_wready),
        .m_axib_wstrb(\^M_AXI_B_wstrb ),
        .m_axib_wvalid(\^M_AXI_B_wvalid ),
        .pci_exp_rxn(pcie_mgt_rxn),
        .pci_exp_rxp(pcie_mgt_rxp),
        .pci_exp_txn(pcie_mgt_txn),
        .pci_exp_txp(pcie_mgt_txp),
        .s_axil_araddr({S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr,S_AXI_LITE_araddr}),
        .s_axil_arprot(S_AXI_LITE_arprot),
        .s_axil_arready(\^S_AXI_LITE_arready ),
        .s_axil_arvalid(S_AXI_LITE_arvalid),
        .s_axil_awaddr({S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr,S_AXI_LITE_awaddr}),
        .s_axil_awprot(S_AXI_LITE_awprot),
        .s_axil_awready(\^S_AXI_LITE_awready ),
        .s_axil_awvalid(S_AXI_LITE_awvalid),
        .s_axil_bready(S_AXI_LITE_bready),
        .s_axil_bresp(S_AXI_LITE_bresp),
        .s_axil_bvalid(\^S_AXI_LITE_bvalid ),
        .s_axil_rdata(\^S_AXI_LITE_rdata ),
        .s_axil_rready(S_AXI_LITE_rready),
        .s_axil_rresp(S_AXI_LITE_rresp),
        .s_axil_rvalid(\^S_AXI_LITE_rvalid ),
        .s_axil_wdata({S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata,S_AXI_LITE_wdata}),
        .s_axil_wready(\^S_AXI_LITE_wready ),
        .s_axil_wstrb({S_AXI_LITE_wstrb,S_AXI_LITE_wstrb,S_AXI_LITE_wstrb,S_AXI_LITE_wstrb}),
        .s_axil_wvalid(S_AXI_LITE_wvalid),
        .sys_clk(bridge_input_clock_IBUF_DS_ODIV2),
        .sys_clk_gt(bridge_input_clock_IBUF_OUT),
        .sys_rst_n(pcie_perst_l),
        .user_lnk_up(led_pcie_link_up),
        .usr_irq_req(1'b0));
  top_level_proc_sys_reset_0_1 reset_extender
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(pcie_bridge_axi_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(axi_aresetn),
        .slowest_sync_clk(axi_aclk));
endmodule

module rx0_to_tx1_imp_6XL2P8
   (rx_clk,
    rx_resetn,
    rx_stream_tdata,
    rx_stream_tkeep,
    rx_stream_tlast,
    rx_stream_tuser,
    rx_stream_tvalid,
    tx_clk,
    tx_resetn,
    tx_stream_tdata,
    tx_stream_tkeep,
    tx_stream_tlast,
    tx_stream_tready,
    tx_stream_tuser,
    tx_stream_tvalid);
  input rx_clk;
  input rx_resetn;
  input [511:0]rx_stream_tdata;
  input [63:0]rx_stream_tkeep;
  input rx_stream_tlast;
  input [0:0]rx_stream_tuser;
  input rx_stream_tvalid;
  input tx_clk;
  input tx_resetn;
  output [511:0]tx_stream_tdata;
  output [63:0]tx_stream_tkeep;
  output tx_stream_tlast;
  input tx_stream_tready;
  output [0:0]tx_stream_tuser;
  output tx_stream_tvalid;

  wire [511:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire [63:0]axis_data_fifo_0_M_AXIS_TKEEP;
  wire axis_data_fifo_0_M_AXIS_TLAST;
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire [0:0]axis_data_fifo_0_M_AXIS_TUSER;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [511:0]packet_fifo_M_AXIS_TDATA;
  wire [63:0]packet_fifo_M_AXIS_TKEEP;
  wire packet_fifo_M_AXIS_TLAST;
  wire packet_fifo_M_AXIS_TREADY;
  wire [0:0]packet_fifo_M_AXIS_TUSER;
  wire packet_fifo_M_AXIS_TVALID;
  wire rx_clk;
  wire rx_resetn;
  wire [511:0]rx_stream_tdata;
  wire [63:0]rx_stream_tkeep;
  wire rx_stream_tlast;
  wire [0:0]rx_stream_tuser;
  wire rx_stream_tvalid;
  wire tx_clk;
  wire tx_resetn;
  wire [511:0]tx_stream_tdata;
  wire [63:0]tx_stream_tkeep;
  wire tx_stream_tlast;
  wire tx_stream_tready;
  wire [0:0]tx_stream_tuser;
  wire tx_stream_tvalid;

  top_level_axis_register_slice_2 axis_register_slice
       (.aclk(tx_clk),
        .aresetn(tx_resetn),
        .m_axis_tdata(tx_stream_tdata),
        .m_axis_tkeep(tx_stream_tkeep),
        .m_axis_tlast(tx_stream_tlast),
        .m_axis_tready(tx_stream_tready),
        .m_axis_tuser(tx_stream_tuser),
        .m_axis_tvalid(tx_stream_tvalid),
        .s_axis_tdata(packet_fifo_M_AXIS_TDATA),
        .s_axis_tkeep(packet_fifo_M_AXIS_TKEEP),
        .s_axis_tlast(packet_fifo_M_AXIS_TLAST),
        .s_axis_tready(packet_fifo_M_AXIS_TREADY),
        .s_axis_tuser(packet_fifo_M_AXIS_TUSER),
        .s_axis_tvalid(packet_fifo_M_AXIS_TVALID));
  top_level_axis_data_fifo_0_1 cdc_fifo
       (.m_axis_aclk(tx_clk),
        .m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(rx_clk),
        .s_axis_aresetn(rx_resetn),
        .s_axis_tdata(rx_stream_tdata),
        .s_axis_tkeep(rx_stream_tkeep),
        .s_axis_tlast(rx_stream_tlast),
        .s_axis_tuser(rx_stream_tuser),
        .s_axis_tvalid(rx_stream_tvalid));
  top_level_axis_data_fifo_0_2 packet_fifo
       (.m_axis_tdata(packet_fifo_M_AXIS_TDATA),
        .m_axis_tkeep(packet_fifo_M_AXIS_TKEEP),
        .m_axis_tlast(packet_fifo_M_AXIS_TLAST),
        .m_axis_tready(packet_fifo_M_AXIS_TREADY),
        .m_axis_tuser(packet_fifo_M_AXIS_TUSER),
        .m_axis_tvalid(packet_fifo_M_AXIS_TVALID),
        .s_axis_aclk(tx_clk),
        .s_axis_aresetn(tx_resetn),
        .s_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .s_axis_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .s_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .s_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .s_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .s_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID));
endmodule

module rx1_to_tx0_imp_V8OCK1
   (rx_clk,
    rx_resetn,
    rx_stream_tdata,
    rx_stream_tkeep,
    rx_stream_tlast,
    rx_stream_tuser,
    rx_stream_tvalid,
    tx_clk,
    tx_resetn,
    tx_stream_tdata,
    tx_stream_tkeep,
    tx_stream_tlast,
    tx_stream_tready,
    tx_stream_tuser,
    tx_stream_tvalid);
  input rx_clk;
  input rx_resetn;
  input [511:0]rx_stream_tdata;
  input [63:0]rx_stream_tkeep;
  input rx_stream_tlast;
  input [0:0]rx_stream_tuser;
  input rx_stream_tvalid;
  input tx_clk;
  input tx_resetn;
  output [511:0]tx_stream_tdata;
  output [63:0]tx_stream_tkeep;
  output tx_stream_tlast;
  input tx_stream_tready;
  output [0:0]tx_stream_tuser;
  output tx_stream_tvalid;

  wire [511:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire [63:0]axis_data_fifo_0_M_AXIS_TKEEP;
  wire axis_data_fifo_0_M_AXIS_TLAST;
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire [0:0]axis_data_fifo_0_M_AXIS_TUSER;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [511:0]packet_fifo_M_AXIS_TDATA;
  wire [63:0]packet_fifo_M_AXIS_TKEEP;
  wire packet_fifo_M_AXIS_TLAST;
  wire packet_fifo_M_AXIS_TREADY;
  wire [0:0]packet_fifo_M_AXIS_TUSER;
  wire packet_fifo_M_AXIS_TVALID;
  wire rx_clk;
  wire rx_resetn;
  wire [511:0]rx_stream_tdata;
  wire [63:0]rx_stream_tkeep;
  wire rx_stream_tlast;
  wire [0:0]rx_stream_tuser;
  wire rx_stream_tvalid;
  wire tx_clk;
  wire tx_resetn;
  wire [511:0]tx_stream_tdata;
  wire [63:0]tx_stream_tkeep;
  wire tx_stream_tlast;
  wire tx_stream_tready;
  wire [0:0]tx_stream_tuser;
  wire tx_stream_tvalid;

  top_level_axis_register_slice_0_1 axis_register_slice
       (.aclk(tx_clk),
        .aresetn(tx_resetn),
        .m_axis_tdata(tx_stream_tdata),
        .m_axis_tkeep(tx_stream_tkeep),
        .m_axis_tlast(tx_stream_tlast),
        .m_axis_tready(tx_stream_tready),
        .m_axis_tuser(tx_stream_tuser),
        .m_axis_tvalid(tx_stream_tvalid),
        .s_axis_tdata(packet_fifo_M_AXIS_TDATA),
        .s_axis_tkeep(packet_fifo_M_AXIS_TKEEP),
        .s_axis_tlast(packet_fifo_M_AXIS_TLAST),
        .s_axis_tready(packet_fifo_M_AXIS_TREADY),
        .s_axis_tuser(packet_fifo_M_AXIS_TUSER),
        .s_axis_tvalid(packet_fifo_M_AXIS_TVALID));
  top_level_cdc_fifo_0 cdc_fifo
       (.m_axis_aclk(tx_clk),
        .m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(rx_clk),
        .s_axis_aresetn(rx_resetn),
        .s_axis_tdata(rx_stream_tdata),
        .s_axis_tkeep(rx_stream_tkeep),
        .s_axis_tlast(rx_stream_tlast),
        .s_axis_tuser(rx_stream_tuser),
        .s_axis_tvalid(rx_stream_tvalid));
  top_level_packet_fifo_0 packet_fifo
       (.m_axis_tdata(packet_fifo_M_AXIS_TDATA),
        .m_axis_tkeep(packet_fifo_M_AXIS_TKEEP),
        .m_axis_tlast(packet_fifo_M_AXIS_TLAST),
        .m_axis_tready(packet_fifo_M_AXIS_TREADY),
        .m_axis_tuser(packet_fifo_M_AXIS_TUSER),
        .m_axis_tvalid(packet_fifo_M_AXIS_TVALID),
        .s_axis_aclk(tx_clk),
        .s_axis_aresetn(tx_resetn),
        .s_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .s_axis_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .s_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .s_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .s_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .s_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID));
endmodule

module rx_path_imp_1385L5B
   (M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tuser,
    S_AXIS_tvalid,
    active,
    stream_clk,
    stream_resetn);
  output [511:0]M_AXIS_tdata;
  output [63:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  output [0:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input [511:0]S_AXIS_tdata;
  input [63:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  input [0:0]S_AXIS_tuser;
  input S_AXIS_tvalid;
  output active;
  input stream_clk;
  input stream_resetn;

  wire [511:0]M_AXIS_tdata;
  wire [63:0]M_AXIS_tkeep;
  wire M_AXIS_tlast;
  wire [0:0]M_AXIS_tuser;
  wire M_AXIS_tvalid;
  wire [511:0]S_AXIS_tdata;
  wire [63:0]S_AXIS_tkeep;
  wire S_AXIS_tlast;
  wire [0:0]S_AXIS_tuser;
  wire S_AXIS_tvalid;
  wire active;
  wire stream_clk;
  wire stream_resetn;

  top_level_activity_mon_0_0 activity_mon
       (.active(active),
        .clk(stream_clk),
        .resetn(stream_resetn),
        .stream_tdata(M_AXIS_tdata),
        .stream_tvalid(M_AXIS_tvalid));
  top_level_axis_register_slice_0_0 axis_register_slice
       (.aclk(stream_clk),
        .aresetn(stream_resetn),
        .m_axis_tdata(M_AXIS_tdata),
        .m_axis_tkeep(M_AXIS_tkeep),
        .m_axis_tlast(M_AXIS_tlast),
        .m_axis_tuser(M_AXIS_tuser),
        .m_axis_tvalid(M_AXIS_tvalid),
        .s_axis_tdata(S_AXIS_tdata),
        .s_axis_tkeep(S_AXIS_tkeep),
        .s_axis_tlast(S_AXIS_tlast),
        .s_axis_tuser(S_AXIS_tuser),
        .s_axis_tvalid(S_AXIS_tvalid));
endmodule

module rx_path_imp_R7EV8U
   (M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tuser,
    S_AXIS_tvalid,
    active,
    stream_clk,
    stream_resetn);
  output [511:0]M_AXIS_tdata;
  output [63:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  output [0:0]M_AXIS_tuser;
  output M_AXIS_tvalid;
  input [511:0]S_AXIS_tdata;
  input [63:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  input [0:0]S_AXIS_tuser;
  input S_AXIS_tvalid;
  output active;
  input stream_clk;
  input stream_resetn;

  wire [511:0]M_AXIS_tdata;
  wire [63:0]M_AXIS_tkeep;
  wire M_AXIS_tlast;
  wire [0:0]M_AXIS_tuser;
  wire M_AXIS_tvalid;
  wire [511:0]S_AXIS_tdata;
  wire [63:0]S_AXIS_tkeep;
  wire S_AXIS_tlast;
  wire [0:0]S_AXIS_tuser;
  wire S_AXIS_tvalid;
  wire active;
  wire stream_clk;
  wire stream_resetn;

  top_level_activity_mon_2 activity_mon
       (.active(active),
        .clk(stream_clk),
        .resetn(stream_resetn),
        .stream_tdata(M_AXIS_tdata),
        .stream_tvalid(M_AXIS_tvalid));
  top_level_axis_register_slice_1 axis_register_slice
       (.aclk(stream_clk),
        .aresetn(stream_resetn),
        .m_axis_tdata(M_AXIS_tdata),
        .m_axis_tkeep(M_AXIS_tkeep),
        .m_axis_tlast(M_AXIS_tlast),
        .m_axis_tuser(M_AXIS_tuser),
        .m_axis_tvalid(M_AXIS_tvalid),
        .s_axis_tdata(S_AXIS_tdata),
        .s_axis_tkeep(S_AXIS_tkeep),
        .s_axis_tlast(S_AXIS_tlast),
        .s_axis_tuser(S_AXIS_tuser),
        .s_axis_tvalid(S_AXIS_tvalid));
endmodule

module sys_control_imp_1QFV668
   (CMAC_TXDIFF,
    CMAC_TXPOST,
    CMAC_TXPRE,
    RSFEC_ENABLE,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    active0_async,
    active1_async,
    clk,
    eth0_up_async,
    eth1_up_async,
    resetn,
    resetn_0_out,
    resetn_1_out);
  output [4:0]CMAC_TXDIFF;
  output [4:0]CMAC_TXPOST;
  output [4:0]CMAC_TXPRE;
  output RSFEC_ENABLE;
  input S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input active0_async;
  input active1_async;
  input clk;
  input eth0_up_async;
  input eth1_up_async;
  input resetn;
  output resetn_0_out;
  output resetn_1_out;

  wire [4:0]CMAC_TXDIFF;
  wire [4:0]CMAC_TXPOST;
  wire [4:0]CMAC_TXPRE;
  wire RSFEC_ENABLE;
  wire S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire \^S_AXI_arready ;
  wire [0:0]S_AXI_arvalid;
  wire S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire \^S_AXI_awready ;
  wire [0:0]S_AXI_awvalid;
  wire [0:0]S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire \^S_AXI_bvalid ;
  wire [31:0]\^S_AXI_rdata ;
  wire [0:0]S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire \^S_AXI_rvalid ;
  wire S_AXI_wdata;
  wire \^S_AXI_wready ;
  wire S_AXI_wstrb;
  wire [0:0]S_AXI_wvalid;
  wire active0_async;
  wire active1_async;
  wire clk;
  wire eth0_up_async;
  wire eth1_up_async;
  wire resetn;
  wire resetn_0_out;
  wire resetn_1_out;

  assign S_AXI_arready[0] = \^S_AXI_arready ;
  assign S_AXI_awready[0] = \^S_AXI_awready ;
  assign S_AXI_bvalid[0] = \^S_AXI_bvalid ;
  assign S_AXI_rdata = \^S_AXI_rdata [0];
  assign S_AXI_rvalid[0] = \^S_AXI_rvalid ;
  assign S_AXI_wready[0] = \^S_AXI_wready ;
  top_level_cabletest_ctl_0_0 cabletest_ctl
       (.CMAC_TXDIFF(CMAC_TXDIFF),
        .CMAC_TXPOST(CMAC_TXPOST),
        .CMAC_TXPRE(CMAC_TXPRE),
        .RSFEC_ENABLE(RSFEC_ENABLE),
        .S_AXI_ARADDR({S_AXI_araddr,S_AXI_araddr,S_AXI_araddr,S_AXI_araddr,S_AXI_araddr,S_AXI_araddr,S_AXI_araddr}),
        .S_AXI_ARPROT(S_AXI_arprot),
        .S_AXI_ARREADY(\^S_AXI_arready ),
        .S_AXI_ARVALID(S_AXI_arvalid),
        .S_AXI_AWADDR({S_AXI_awaddr,S_AXI_awaddr,S_AXI_awaddr,S_AXI_awaddr,S_AXI_awaddr,S_AXI_awaddr,S_AXI_awaddr}),
        .S_AXI_AWPROT(S_AXI_awprot),
        .S_AXI_AWREADY(\^S_AXI_awready ),
        .S_AXI_AWVALID(S_AXI_awvalid),
        .S_AXI_BREADY(S_AXI_bready),
        .S_AXI_BRESP(S_AXI_bresp),
        .S_AXI_BVALID(\^S_AXI_bvalid ),
        .S_AXI_RDATA(\^S_AXI_rdata ),
        .S_AXI_RREADY(S_AXI_rready),
        .S_AXI_RRESP(S_AXI_rresp),
        .S_AXI_RVALID(\^S_AXI_rvalid ),
        .S_AXI_WDATA({S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata,S_AXI_wdata}),
        .S_AXI_WREADY(\^S_AXI_wready ),
        .S_AXI_WSTRB({S_AXI_wstrb,S_AXI_wstrb,S_AXI_wstrb,S_AXI_wstrb}),
        .S_AXI_WVALID(S_AXI_wvalid),
        .active0_async(active0_async),
        .active1_async(active1_async),
        .clk(clk),
        .eth0_up_async(eth0_up_async),
        .eth1_up_async(eth1_up_async),
        .resetn(resetn),
        .resetn_0_out(resetn_0_out),
        .resetn_1_out(resetn_1_out));
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=33,numReposBlks=24,numNonXlnxBlks=0,numHierBlks=9,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=9,numPkgbdBlks=0,bdsource=USER,\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"=4,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (hbm_cattrip,
    pcie0_refclk_clk_n,
    pcie0_refclk_clk_p,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_perst_l,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp0_led,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p,
    qsfp1_led);
  output [0:0]hbm_cattrip;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie0_refclk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie0_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie0_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie0_refclk CLK_P" *) input [0:0]pcie0_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) (* X_INTERFACE_MODE = "Master" *) input [7:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [7:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [7:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [7:0]pcie_mgt_txp;
  input pcie_perst_l;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_clk, CAN_DEBUG false, FREQ_HZ 161132812" *) input qsfp0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_P" *) input qsfp0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_gt, CAN_DEBUG false" *) input [3:0]qsfp0_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_P" *) input [3:0]qsfp0_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_N" *) output [3:0]qsfp0_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_P" *) output [3:0]qsfp0_gt_gtx_p;
  output [2:0]qsfp0_led;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_clk, CAN_DEBUG false, FREQ_HZ 161132812" *) input qsfp1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_P" *) input qsfp1_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_gt, CAN_DEBUG false" *) input [3:0]qsfp1_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_P" *) input [3:0]qsfp1_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_N" *) output [3:0]qsfp1_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_P" *) output [3:0]qsfp1_gt_gtx_p;
  output [2:0]qsfp1_led;

  wire [4:0]cabletest_CMAC_TXDIFF;
  wire [4:0]cabletest_CMAC_TXPOST;
  wire [4:0]cabletest_CMAC_TXPRE;
  wire cabletest_RSFEC_ENABLE;
  wire eth_0_active;
  wire [511:0]eth_0_axis_rx_TDATA;
  wire [63:0]eth_0_axis_rx_TKEEP;
  wire eth_0_axis_rx_TLAST;
  wire [0:0]eth_0_axis_rx_TUSER;
  wire eth_0_axis_rx_TVALID;
  wire eth_0_reset_indicator;
  wire eth_0_stat_rx_aligned_0;
  wire eth_0_stream_clk;
  wire eth_0_stream_resetn;
  wire eth_1_active;
  wire [511:0]eth_1_axis_rx_TDATA;
  wire [63:0]eth_1_axis_rx_TKEEP;
  wire eth_1_axis_rx_TLAST;
  wire [0:0]eth_1_axis_rx_TUSER;
  wire eth_1_axis_rx_TVALID;
  wire eth_1_reset_indicator;
  wire eth_1_stat_rx_aligned_0;
  wire eth_1_stream_clk;
  wire eth_1_stream_resetn;
  wire [511:0]forward_tx0_stream_TDATA;
  wire [63:0]forward_tx0_stream_TKEEP;
  wire forward_tx0_stream_TLAST;
  wire forward_tx0_stream_TREADY;
  wire [0:0]forward_tx0_stream_TUSER;
  wire forward_tx0_stream_TVALID;
  wire [511:0]forward_tx1_stream_TDATA;
  wire [63:0]forward_tx1_stream_TKEEP;
  wire forward_tx1_stream_TLAST;
  wire forward_tx1_stream_TREADY;
  wire [0:0]forward_tx1_stream_TUSER;
  wire forward_tx1_stream_TVALID;
  wire [0:0]hbm_cattrip;
  wire [0:0]pcie0_refclk_clk_n;
  wire [0:0]pcie0_refclk_clk_p;
  wire [7:0]pcie_mgt_rxn;
  wire [7:0]pcie_mgt_rxp;
  wire [7:0]pcie_mgt_txn;
  wire [7:0]pcie_mgt_txp;
  wire pcie_perst_l;
  wire qsfp0_clk_clk_n;
  wire qsfp0_clk_clk_p;
  wire [3:0]qsfp0_gt_grx_n;
  wire [3:0]qsfp0_gt_grx_p;
  wire [3:0]qsfp0_gt_gtx_n;
  wire [3:0]qsfp0_gt_gtx_p;
  wire [2:0]qsfp0_led;
  wire qsfp1_clk_clk_n;
  wire qsfp1_clk_clk_p;
  wire [3:0]qsfp1_gt_grx_n;
  wire [3:0]qsfp1_gt_grx_p;
  wire [3:0]qsfp1_gt_gtx_n;
  wire [3:0]qsfp1_gt_gtx_p;
  wire [2:0]qsfp1_led;
  wire smartconnect_0_M01_AXI_ARADDR;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire [0:0]smartconnect_0_M01_AXI_ARREADY;
  wire [0:0]smartconnect_0_M01_AXI_ARVALID;
  wire smartconnect_0_M01_AXI_AWADDR;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire [0:0]smartconnect_0_M01_AXI_AWREADY;
  wire [0:0]smartconnect_0_M01_AXI_AWVALID;
  wire [0:0]smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire [0:0]smartconnect_0_M01_AXI_BVALID;
  wire smartconnect_0_M01_AXI_RDATA;
  wire [0:0]smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire [0:0]smartconnect_0_M01_AXI_RVALID;
  wire smartconnect_0_M01_AXI_WDATA;
  wire [0:0]smartconnect_0_M01_AXI_WREADY;
  wire smartconnect_0_M01_AXI_WSTRB;
  wire [0:0]smartconnect_0_M01_AXI_WVALID;
  wire smartconnect_M00_AXI_ARADDR;
  wire [2:0]smartconnect_M00_AXI_ARPROT;
  wire [0:0]smartconnect_M00_AXI_ARREADY;
  wire [0:0]smartconnect_M00_AXI_ARVALID;
  wire smartconnect_M00_AXI_AWADDR;
  wire [2:0]smartconnect_M00_AXI_AWPROT;
  wire [0:0]smartconnect_M00_AXI_AWREADY;
  wire [0:0]smartconnect_M00_AXI_AWVALID;
  wire [0:0]smartconnect_M00_AXI_BREADY;
  wire [1:0]smartconnect_M00_AXI_BRESP;
  wire [0:0]smartconnect_M00_AXI_BVALID;
  wire smartconnect_M00_AXI_RDATA;
  wire [0:0]smartconnect_M00_AXI_RREADY;
  wire [1:0]smartconnect_M00_AXI_RRESP;
  wire [0:0]smartconnect_M00_AXI_RVALID;
  wire smartconnect_M00_AXI_WDATA;
  wire [0:0]smartconnect_M00_AXI_WREADY;
  wire smartconnect_M00_AXI_WSTRB;
  wire [0:0]smartconnect_M00_AXI_WVALID;
  wire smartconnect_M02_AXI_ARADDR;
  wire [2:0]smartconnect_M02_AXI_ARPROT;
  wire smartconnect_M02_AXI_ARREADY;
  wire [0:0]smartconnect_M02_AXI_ARVALID;
  wire smartconnect_M02_AXI_AWADDR;
  wire [2:0]smartconnect_M02_AXI_AWPROT;
  wire smartconnect_M02_AXI_AWREADY;
  wire [0:0]smartconnect_M02_AXI_AWVALID;
  wire [0:0]smartconnect_M02_AXI_BREADY;
  wire [1:0]smartconnect_M02_AXI_BRESP;
  wire smartconnect_M02_AXI_BVALID;
  wire [31:0]smartconnect_M02_AXI_RDATA;
  wire [0:0]smartconnect_M02_AXI_RREADY;
  wire [1:0]smartconnect_M02_AXI_RRESP;
  wire smartconnect_M02_AXI_RVALID;
  wire smartconnect_M02_AXI_WDATA;
  wire smartconnect_M02_AXI_WREADY;
  wire smartconnect_M02_AXI_WSTRB;
  wire [0:0]smartconnect_M02_AXI_WVALID;
  wire source_200Mhz_clk;
  wire [0:0]source_200Mhz_resetn;
  wire sys_control_resetn_0_out;
  wire sys_control_resetn_1_out;
  wire xdma_0_M_AXI_B_ARADDR;
  wire [1:0]xdma_0_M_AXI_B_ARBURST;
  wire [3:0]xdma_0_M_AXI_B_ARCACHE;
  wire xdma_0_M_AXI_B_ARID;
  wire xdma_0_M_AXI_B_ARLEN;
  wire xdma_0_M_AXI_B_ARLOCK;
  wire [2:0]xdma_0_M_AXI_B_ARPROT;
  wire [0:0]xdma_0_M_AXI_B_ARREADY;
  wire [2:0]xdma_0_M_AXI_B_ARSIZE;
  wire [0:0]xdma_0_M_AXI_B_ARVALID;
  wire xdma_0_M_AXI_B_AWADDR;
  wire [1:0]xdma_0_M_AXI_B_AWBURST;
  wire [3:0]xdma_0_M_AXI_B_AWCACHE;
  wire xdma_0_M_AXI_B_AWID;
  wire xdma_0_M_AXI_B_AWLEN;
  wire xdma_0_M_AXI_B_AWLOCK;
  wire [2:0]xdma_0_M_AXI_B_AWPROT;
  wire [0:0]xdma_0_M_AXI_B_AWREADY;
  wire [2:0]xdma_0_M_AXI_B_AWSIZE;
  wire [0:0]xdma_0_M_AXI_B_AWVALID;
  wire xdma_0_M_AXI_B_BID;
  wire [0:0]xdma_0_M_AXI_B_BREADY;
  wire [1:0]xdma_0_M_AXI_B_BRESP;
  wire [0:0]xdma_0_M_AXI_B_BVALID;
  wire xdma_0_M_AXI_B_RDATA;
  wire xdma_0_M_AXI_B_RID;
  wire [0:0]xdma_0_M_AXI_B_RLAST;
  wire [0:0]xdma_0_M_AXI_B_RREADY;
  wire [1:0]xdma_0_M_AXI_B_RRESP;
  wire [0:0]xdma_0_M_AXI_B_RVALID;
  wire xdma_0_M_AXI_B_WDATA;
  wire [0:0]xdma_0_M_AXI_B_WLAST;
  wire [0:0]xdma_0_M_AXI_B_WREADY;
  wire xdma_0_M_AXI_B_WSTRB;
  wire [0:0]xdma_0_M_AXI_B_WVALID;

  top_level_axi_revision_0_0 axi_revision
       (.AXI_ACLK(source_200Mhz_clk),
        .AXI_ARESETN(source_200Mhz_resetn),
        .S_AXI_ARADDR({smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR}),
        .S_AXI_ARPROT(smartconnect_M02_AXI_ARPROT),
        .S_AXI_ARREADY(smartconnect_M02_AXI_ARREADY),
        .S_AXI_ARVALID(smartconnect_M02_AXI_ARVALID),
        .S_AXI_AWADDR({smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR}),
        .S_AXI_AWPROT(smartconnect_M02_AXI_AWPROT),
        .S_AXI_AWREADY(smartconnect_M02_AXI_AWREADY),
        .S_AXI_AWVALID(smartconnect_M02_AXI_AWVALID),
        .S_AXI_BREADY(smartconnect_M02_AXI_BREADY),
        .S_AXI_BRESP(smartconnect_M02_AXI_BRESP),
        .S_AXI_BVALID(smartconnect_M02_AXI_BVALID),
        .S_AXI_RDATA(smartconnect_M02_AXI_RDATA),
        .S_AXI_RREADY(smartconnect_M02_AXI_RREADY),
        .S_AXI_RRESP(smartconnect_M02_AXI_RRESP),
        .S_AXI_RVALID(smartconnect_M02_AXI_RVALID),
        .S_AXI_WDATA({smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA}),
        .S_AXI_WREADY(smartconnect_M02_AXI_WREADY),
        .S_AXI_WSTRB({smartconnect_M02_AXI_WSTRB,smartconnect_M02_AXI_WSTRB,smartconnect_M02_AXI_WSTRB,smartconnect_M02_AXI_WSTRB}),
        .S_AXI_WVALID(smartconnect_M02_AXI_WVALID));
  eth_0_imp_H4LLQV eth_0
       (.active(eth_0_active),
        .aligned(eth_0_stat_rx_aligned_0),
        .axis_rx_tdata(eth_0_axis_rx_TDATA),
        .axis_rx_tkeep(eth_0_axis_rx_TKEEP),
        .axis_rx_tlast(eth_0_axis_rx_TLAST),
        .axis_rx_tuser(eth_0_axis_rx_TUSER),
        .axis_rx_tvalid(eth_0_axis_rx_TVALID),
        .axis_tx_tdata(forward_tx0_stream_TDATA),
        .axis_tx_tkeep(forward_tx0_stream_TKEEP),
        .axis_tx_tlast(forward_tx0_stream_TLAST),
        .axis_tx_tready(forward_tx0_stream_TREADY),
        .axis_tx_tuser(forward_tx0_stream_TUSER),
        .axis_tx_tvalid(forward_tx0_stream_TVALID),
        .init_clk(source_200Mhz_clk),
        .qsfp_clk_clk_n(qsfp0_clk_clk_n),
        .qsfp_clk_clk_p(qsfp0_clk_clk_p),
        .qsfp_gt_grx_n(qsfp0_gt_grx_n),
        .qsfp_gt_grx_p(qsfp0_gt_grx_p),
        .qsfp_gt_gtx_n(qsfp0_gt_gtx_n),
        .qsfp_gt_gtx_p(qsfp0_gt_gtx_p),
        .reset_indicator(eth_0_reset_indicator),
        .rsfec_enable(cabletest_RSFEC_ENABLE),
        .stream_clk(eth_0_stream_clk),
        .stream_resetn(eth_0_stream_resetn),
        .sys_resetn(sys_control_resetn_0_out),
        .tx_diff(cabletest_CMAC_TXDIFF),
        .tx_post(cabletest_CMAC_TXPOST),
        .tx_pre(cabletest_CMAC_TXPRE));
  eth_1_imp_1MEC6LL eth_1
       (.active(eth_1_active),
        .aligned(eth_1_stat_rx_aligned_0),
        .axis_rx_tdata(eth_1_axis_rx_TDATA),
        .axis_rx_tkeep(eth_1_axis_rx_TKEEP),
        .axis_rx_tlast(eth_1_axis_rx_TLAST),
        .axis_rx_tuser(eth_1_axis_rx_TUSER),
        .axis_rx_tvalid(eth_1_axis_rx_TVALID),
        .axis_tx_tdata(forward_tx1_stream_TDATA),
        .axis_tx_tkeep(forward_tx1_stream_TKEEP),
        .axis_tx_tlast(forward_tx1_stream_TLAST),
        .axis_tx_tready(forward_tx1_stream_TREADY),
        .axis_tx_tuser(forward_tx1_stream_TUSER),
        .axis_tx_tvalid(forward_tx1_stream_TVALID),
        .init_clk(source_200Mhz_clk),
        .qsfp_clk_clk_n(qsfp1_clk_clk_n),
        .qsfp_clk_clk_p(qsfp1_clk_clk_p),
        .qsfp_gt_grx_n(qsfp1_gt_grx_n),
        .qsfp_gt_grx_p(qsfp1_gt_grx_p),
        .qsfp_gt_gtx_n(qsfp1_gt_gtx_n),
        .qsfp_gt_gtx_p(qsfp1_gt_gtx_p),
        .reset_indicator(eth_1_reset_indicator),
        .rsfec_enable(cabletest_RSFEC_ENABLE),
        .stream_clk(eth_1_stream_clk),
        .stream_resetn(eth_1_stream_resetn),
        .sys_resetn(sys_control_resetn_1_out),
        .tx_diff(cabletest_CMAC_TXDIFF),
        .tx_post(cabletest_CMAC_TXPOST),
        .tx_pre(cabletest_CMAC_TXPRE));
  forward_imp_1EBZWA5 forward
       (.clk_0(eth_0_stream_clk),
        .clk_1(eth_1_stream_clk),
        .resetn_0(eth_0_stream_resetn),
        .resetn_1(eth_1_stream_resetn),
        .rx0_stream_tdata(eth_0_axis_rx_TDATA),
        .rx0_stream_tkeep(eth_0_axis_rx_TKEEP),
        .rx0_stream_tlast(eth_0_axis_rx_TLAST),
        .rx0_stream_tuser(eth_0_axis_rx_TUSER),
        .rx0_stream_tvalid(eth_0_axis_rx_TVALID),
        .rx1_stream_tdata(eth_1_axis_rx_TDATA),
        .rx1_stream_tkeep(eth_1_axis_rx_TKEEP),
        .rx1_stream_tlast(eth_1_axis_rx_TLAST),
        .rx1_stream_tuser(eth_1_axis_rx_TUSER),
        .rx1_stream_tvalid(eth_1_axis_rx_TVALID),
        .tx0_stream_tdata(forward_tx0_stream_TDATA),
        .tx0_stream_tkeep(forward_tx0_stream_TKEEP),
        .tx0_stream_tlast(forward_tx0_stream_TLAST),
        .tx0_stream_tready(forward_tx0_stream_TREADY),
        .tx0_stream_tuser(forward_tx0_stream_TUSER),
        .tx0_stream_tvalid(forward_tx0_stream_TVALID),
        .tx1_stream_tdata(forward_tx1_stream_TDATA),
        .tx1_stream_tkeep(forward_tx1_stream_TKEEP),
        .tx1_stream_tlast(forward_tx1_stream_TLAST),
        .tx1_stream_tready(forward_tx1_stream_TREADY),
        .tx1_stream_tuser(forward_tx1_stream_TUSER),
        .tx1_stream_tvalid(forward_tx1_stream_TVALID));
  pcie_imp_P7FEFP pcie
       (.M_AXI_B_araddr(xdma_0_M_AXI_B_ARADDR),
        .M_AXI_B_arburst(xdma_0_M_AXI_B_ARBURST),
        .M_AXI_B_arcache(xdma_0_M_AXI_B_ARCACHE),
        .M_AXI_B_arid(xdma_0_M_AXI_B_ARID),
        .M_AXI_B_arlen(xdma_0_M_AXI_B_ARLEN),
        .M_AXI_B_arlock(xdma_0_M_AXI_B_ARLOCK),
        .M_AXI_B_arprot(xdma_0_M_AXI_B_ARPROT),
        .M_AXI_B_arready(xdma_0_M_AXI_B_ARREADY),
        .M_AXI_B_arsize(xdma_0_M_AXI_B_ARSIZE),
        .M_AXI_B_arvalid(xdma_0_M_AXI_B_ARVALID),
        .M_AXI_B_awaddr(xdma_0_M_AXI_B_AWADDR),
        .M_AXI_B_awburst(xdma_0_M_AXI_B_AWBURST),
        .M_AXI_B_awcache(xdma_0_M_AXI_B_AWCACHE),
        .M_AXI_B_awid(xdma_0_M_AXI_B_AWID),
        .M_AXI_B_awlen(xdma_0_M_AXI_B_AWLEN),
        .M_AXI_B_awlock(xdma_0_M_AXI_B_AWLOCK),
        .M_AXI_B_awprot(xdma_0_M_AXI_B_AWPROT),
        .M_AXI_B_awready(xdma_0_M_AXI_B_AWREADY),
        .M_AXI_B_awsize(xdma_0_M_AXI_B_AWSIZE),
        .M_AXI_B_awvalid(xdma_0_M_AXI_B_AWVALID),
        .M_AXI_B_bid(xdma_0_M_AXI_B_BID),
        .M_AXI_B_bready(xdma_0_M_AXI_B_BREADY),
        .M_AXI_B_bresp(xdma_0_M_AXI_B_BRESP),
        .M_AXI_B_bvalid(xdma_0_M_AXI_B_BVALID),
        .M_AXI_B_rdata(xdma_0_M_AXI_B_RDATA),
        .M_AXI_B_rid(xdma_0_M_AXI_B_RID),
        .M_AXI_B_rlast(xdma_0_M_AXI_B_RLAST),
        .M_AXI_B_rready(xdma_0_M_AXI_B_RREADY),
        .M_AXI_B_rresp(xdma_0_M_AXI_B_RRESP),
        .M_AXI_B_rvalid(xdma_0_M_AXI_B_RVALID),
        .M_AXI_B_wdata(xdma_0_M_AXI_B_WDATA),
        .M_AXI_B_wlast(xdma_0_M_AXI_B_WLAST),
        .M_AXI_B_wready(xdma_0_M_AXI_B_WREADY),
        .M_AXI_B_wstrb(xdma_0_M_AXI_B_WSTRB),
        .M_AXI_B_wvalid(xdma_0_M_AXI_B_WVALID),
        .S_AXI_LITE_araddr(smartconnect_0_M01_AXI_ARADDR),
        .S_AXI_LITE_arprot(smartconnect_0_M01_AXI_ARPROT),
        .S_AXI_LITE_arready(smartconnect_0_M01_AXI_ARREADY),
        .S_AXI_LITE_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .S_AXI_LITE_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .S_AXI_LITE_awprot(smartconnect_0_M01_AXI_AWPROT),
        .S_AXI_LITE_awready(smartconnect_0_M01_AXI_AWREADY),
        .S_AXI_LITE_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .S_AXI_LITE_bready(smartconnect_0_M01_AXI_BREADY),
        .S_AXI_LITE_bresp(smartconnect_0_M01_AXI_BRESP),
        .S_AXI_LITE_bvalid(smartconnect_0_M01_AXI_BVALID),
        .S_AXI_LITE_rdata(smartconnect_0_M01_AXI_RDATA),
        .S_AXI_LITE_rready(smartconnect_0_M01_AXI_RREADY),
        .S_AXI_LITE_rresp(smartconnect_0_M01_AXI_RRESP),
        .S_AXI_LITE_rvalid(smartconnect_0_M01_AXI_RVALID),
        .S_AXI_LITE_wdata(smartconnect_0_M01_AXI_WDATA),
        .S_AXI_LITE_wready(smartconnect_0_M01_AXI_WREADY),
        .S_AXI_LITE_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .S_AXI_LITE_wvalid(smartconnect_0_M01_AXI_WVALID),
        .axi_aclk(source_200Mhz_clk),
        .axi_aresetn(source_200Mhz_resetn),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .pcie_perst_l(pcie_perst_l),
        .pcie_refclk_clk_n(pcie0_refclk_clk_n),
        .pcie_refclk_clk_p(pcie0_refclk_clk_p));
  top_level_smartconnect_0_0 smartconnect
       (.M00_AXI_araddr(smartconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_M00_AXI_AWVALID),
        .M00_AXI_bid(1'b0),
        .M00_AXI_bready(smartconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_M00_AXI_BRESP),
        .M00_AXI_buser(1'b0),
        .M00_AXI_bvalid(smartconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_M00_AXI_RDATA),
        .M00_AXI_rid(1'b0),
        .M00_AXI_rlast(1'b0),
        .M00_AXI_rready(smartconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_M00_AXI_RRESP),
        .M00_AXI_ruser(1'b0),
        .M00_AXI_rvalid(smartconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bid(1'b0),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_buser(1'b0),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rid(1'b0),
        .M01_AXI_rlast(1'b0),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_ruser(1'b0),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_M02_AXI_ARADDR),
        .M02_AXI_arprot(smartconnect_M02_AXI_ARPROT),
        .M02_AXI_arready(smartconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(smartconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_M02_AXI_AWADDR),
        .M02_AXI_awprot(smartconnect_M02_AXI_AWPROT),
        .M02_AXI_awready(smartconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(smartconnect_M02_AXI_AWVALID),
        .M02_AXI_bid(1'b0),
        .M02_AXI_bready(smartconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_M02_AXI_BRESP),
        .M02_AXI_buser(1'b0),
        .M02_AXI_bvalid(smartconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_M02_AXI_RDATA[0]),
        .M02_AXI_rid(1'b0),
        .M02_AXI_rlast(1'b0),
        .M02_AXI_rready(smartconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_M02_AXI_RRESP),
        .M02_AXI_ruser(1'b0),
        .M02_AXI_rvalid(smartconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_M02_AXI_WDATA),
        .M02_AXI_wready(smartconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_M02_AXI_WVALID),
        .S00_AXI_araddr(xdma_0_M_AXI_B_ARADDR),
        .S00_AXI_arburst(xdma_0_M_AXI_B_ARBURST),
        .S00_AXI_arcache(xdma_0_M_AXI_B_ARCACHE),
        .S00_AXI_arid(xdma_0_M_AXI_B_ARID),
        .S00_AXI_arlen(xdma_0_M_AXI_B_ARLEN),
        .S00_AXI_arlock(xdma_0_M_AXI_B_ARLOCK),
        .S00_AXI_arprot(xdma_0_M_AXI_B_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(xdma_0_M_AXI_B_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize(xdma_0_M_AXI_B_ARSIZE),
        .S00_AXI_aruser(1'b0),
        .S00_AXI_arvalid(xdma_0_M_AXI_B_ARVALID),
        .S00_AXI_awaddr(xdma_0_M_AXI_B_AWADDR),
        .S00_AXI_awburst(xdma_0_M_AXI_B_AWBURST),
        .S00_AXI_awcache(xdma_0_M_AXI_B_AWCACHE),
        .S00_AXI_awid(xdma_0_M_AXI_B_AWID),
        .S00_AXI_awlen(xdma_0_M_AXI_B_AWLEN),
        .S00_AXI_awlock(xdma_0_M_AXI_B_AWLOCK),
        .S00_AXI_awprot(xdma_0_M_AXI_B_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(xdma_0_M_AXI_B_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize(xdma_0_M_AXI_B_AWSIZE),
        .S00_AXI_awuser(1'b0),
        .S00_AXI_awvalid(xdma_0_M_AXI_B_AWVALID),
        .S00_AXI_bid(xdma_0_M_AXI_B_BID),
        .S00_AXI_bready(xdma_0_M_AXI_B_BREADY),
        .S00_AXI_bresp(xdma_0_M_AXI_B_BRESP),
        .S00_AXI_bvalid(xdma_0_M_AXI_B_BVALID),
        .S00_AXI_rdata(xdma_0_M_AXI_B_RDATA),
        .S00_AXI_rid(xdma_0_M_AXI_B_RID),
        .S00_AXI_rlast(xdma_0_M_AXI_B_RLAST),
        .S00_AXI_rready(xdma_0_M_AXI_B_RREADY),
        .S00_AXI_rresp(xdma_0_M_AXI_B_RRESP),
        .S00_AXI_rvalid(xdma_0_M_AXI_B_RVALID),
        .S00_AXI_wdata(xdma_0_M_AXI_B_WDATA),
        .S00_AXI_wid(1'b0),
        .S00_AXI_wlast(xdma_0_M_AXI_B_WLAST),
        .S00_AXI_wready(xdma_0_M_AXI_B_WREADY),
        .S00_AXI_wstrb(xdma_0_M_AXI_B_WSTRB),
        .S00_AXI_wuser(1'b0),
        .S00_AXI_wvalid(xdma_0_M_AXI_B_WVALID),
        .aclk(source_200Mhz_clk),
        .aresetn(source_200Mhz_resetn));
  top_level_status_leds_0_0 status_leds
       (.qsfp0_led(qsfp0_led),
        .qsfp0_up(eth_0_stat_rx_aligned_0),
        .qsfp1_led(qsfp1_led),
        .qsfp1_up(eth_1_stat_rx_aligned_0),
        .reset_ind0(eth_0_reset_indicator),
        .reset_ind1(eth_1_reset_indicator));
  sys_control_imp_1QFV668 sys_control
       (.CMAC_TXDIFF(cabletest_CMAC_TXDIFF),
        .CMAC_TXPOST(cabletest_CMAC_TXPOST),
        .CMAC_TXPRE(cabletest_CMAC_TXPRE),
        .RSFEC_ENABLE(cabletest_RSFEC_ENABLE),
        .S_AXI_araddr(smartconnect_M00_AXI_ARADDR),
        .S_AXI_arprot(smartconnect_M00_AXI_ARPROT),
        .S_AXI_arready(smartconnect_M00_AXI_ARREADY),
        .S_AXI_arvalid(smartconnect_M00_AXI_ARVALID),
        .S_AXI_awaddr(smartconnect_M00_AXI_AWADDR),
        .S_AXI_awprot(smartconnect_M00_AXI_AWPROT),
        .S_AXI_awready(smartconnect_M00_AXI_AWREADY),
        .S_AXI_awvalid(smartconnect_M00_AXI_AWVALID),
        .S_AXI_bready(smartconnect_M00_AXI_BREADY),
        .S_AXI_bresp(smartconnect_M00_AXI_BRESP),
        .S_AXI_bvalid(smartconnect_M00_AXI_BVALID),
        .S_AXI_rdata(smartconnect_M00_AXI_RDATA),
        .S_AXI_rready(smartconnect_M00_AXI_RREADY),
        .S_AXI_rresp(smartconnect_M00_AXI_RRESP),
        .S_AXI_rvalid(smartconnect_M00_AXI_RVALID),
        .S_AXI_wdata(smartconnect_M00_AXI_WDATA),
        .S_AXI_wready(smartconnect_M00_AXI_WREADY),
        .S_AXI_wstrb(smartconnect_M00_AXI_WSTRB),
        .S_AXI_wvalid(smartconnect_M00_AXI_WVALID),
        .active0_async(eth_0_active),
        .active1_async(eth_1_active),
        .clk(source_200Mhz_clk),
        .eth0_up_async(eth_0_stat_rx_aligned_0),
        .eth1_up_async(eth_1_stat_rx_aligned_0),
        .resetn(source_200Mhz_resetn),
        .resetn_0_out(sys_control_resetn_0_out),
        .resetn_1_out(sys_control_resetn_1_out));
  assign hbm_cattrip = 1'h1;
endmodule
