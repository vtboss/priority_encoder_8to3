<img src="https://r2cdn.perplexity.ai/pplx-full-logo-primary-dark%402x.png" style="height:64px;margin-right:32px"/>

# README.md

# 8-to-3 Priority Encoder (Verilog HDL)

A clean, professional implementation of an 8-to-3 priority encoder demonstrating both behavioral and structural modeling, comprehensive verification, and timing analysis.

***

## Project Overview

This repository contains:

- **RTL Designs**
    - `priority_encoder_behav.v` – Behavioral model using `casez` for priority logic
    - `priority_encoder_struct.v` – Structural model using conditional assignments
- **Verification**
    - `priority_encoder_tb.v` – Testbench covering edge cases, single-bit tests, and multiple simultaneous inputs
    - Automatically compares behavioral and structural outputs and generates a VCD waveform file
- **Documentation**
    - `design_report.md` – Detailed design specification, verification strategy, simulation results, and performance analysis

***

## Quick Start

### Prerequisites

- Xilinx Vivado 2018.1 (or later)
- ModelSim-Intel FPGA Edition
- Basic Verilog HDL knowledge


### Clone and Run

```bash
git clone https://github.com/vtboss/priority_encoder_8to3.git
cd priority_encoder_8to3
```


#### Compile in ModelSim

```tcl
vlog src/priority_encoder_behav.v
vlog src/priority_encoder_struct.v
vlog src/priority_encoder_tb.v
```


#### Simulate

```tcl
vsim priority_encoder_tb
add wave *
run -all
```

- **Console output** shows pass/fail for each test case
- **Waveform window** displays signal transitions and priority resolution

***

## Design Highlights

- **Dual Modeling Approaches**
    - Behavioral: Clear, readable `casez` implementation
    - Structural: Explicit hardware-style conditional assignments
- **Comprehensive Verification**
    - Edge case: all zeros → valid=0
    - Boundary tests: each single input
    - Priority tests: multiple inputs → highest wins
    - Automated equivalence check
- **Waveform Analysis**
    - VCD file generated for timing inspection
    - Propagation delays and glitch verification

***

## Repository Structure

```
priority_encoder_8to3/
├── src/
│   ├── priority_encoder_behav.v
│   ├── priority_encoder_struct.v
│   └── priority_encoder_tb.v
├── sim/
│   ├── waveforms/            # VCD files and screenshots
│   └── results/              # Simulation logs
├── docs/
│   └── design_report.md
└── README.md
```


***

## Tools \& Technologies

- Verilog HDL
- ModelSim-Intel FPGA
- Xilinx Vivado 2018.1

***

## Learning Outcomes

- Master priority encoder design using Verilog
- Develop systematic testbenches and automated checks
- Perform waveform-based timing analysis
- Document professional VLSI projects

***

## Next Steps

- Parameterize for arbitrary input width
- Add SystemVerilog assertions or UVM for advanced verification
- Explore ASIC implementation and synthesis reports

***

**Author**: vtboss
**Institution**: Electronics \& Communication Engineering
**Date**: September 2025
<span style="display:none">[^1][^2][^3][^4]</span>

<div style="text-align: center">⁂</div>

[^1]: IMG_20250908_230939.jpg

[^2]: how-s-this_Act-like-a-digital-design-lab-instructo.docx

[^3]: Screenshot-6.jpg

[^4]: https://github.com/vtboss/priority_encoder_8to3

