// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module top_level (
  pcie0_refclk_clk_p,
  pcie0_refclk_clk_n,
  pcie_mgt_rxn,
  pcie_mgt_rxp,
  pcie_mgt_txn,
  pcie_mgt_txp,
  qsfp0_clk_clk_n,
  qsfp0_clk_clk_p,
  qsfp0_gt_grx_n,
  qsfp0_gt_grx_p,
  qsfp0_gt_gtx_n,
  qsfp0_gt_gtx_p,
  qsfp1_gt_grx_n,
  qsfp1_gt_grx_p,
  qsfp1_gt_gtx_n,
  qsfp1_gt_gtx_p,
  qsfp1_clk_clk_n,
  qsfp1_clk_clk_p,
  pcie_perst_l,
  qsfp0_led,
  qsfp1_led,
  hbm_cattrip
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie0_refclk CLK_P" *)
  (* X_INTERFACE_MODE = "slave pcie0_refclk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie0_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input [0:0]pcie0_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie0_refclk CLK_N" *)
  input [0:0]pcie0_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *)
  (* X_INTERFACE_MODE = "master pcie_mgt" *)
  input [7:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *)
  input [7:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *)
  output [7:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *)
  output [7:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_N" *)
  (* X_INTERFACE_MODE = "slave qsfp0_clk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_clk, CAN_DEBUG false, FREQ_HZ 161132812" *)
  input qsfp0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_P" *)
  input qsfp0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_N" *)
  (* X_INTERFACE_MODE = "master qsfp0_gt" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_gt, CAN_DEBUG false" *)
  input [3:0]qsfp0_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_P" *)
  input [3:0]qsfp0_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_N" *)
  output [3:0]qsfp0_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_P" *)
  output [3:0]qsfp0_gt_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_N" *)
  (* X_INTERFACE_MODE = "master qsfp1_gt" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_gt, CAN_DEBUG false" *)
  input [3:0]qsfp1_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_P" *)
  input [3:0]qsfp1_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_N" *)
  output [3:0]qsfp1_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_P" *)
  output [3:0]qsfp1_gt_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_N" *)
  (* X_INTERFACE_MODE = "slave qsfp1_clk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_clk, CAN_DEBUG false, FREQ_HZ 161132812" *)
  input qsfp1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_P" *)
  input qsfp1_clk_clk_p;
  (* X_INTERFACE_IGNORE = "true" *)
  input pcie_perst_l;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]qsfp0_led;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]qsfp1_led;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]hbm_cattrip;

  // stub module has no contents

endmodule
