# 8-to-3 Priority Encoder Implementation

A comprehensive Verilog HDL implementation of an 8-to-3 priority encoder featuring both behavioral and structural modeling approaches, complete with thorough verification and timing analysis.

## 📋 Project Overview

This project demonstrates professional VLSI/RTL design methodology by implementing a priority encoder that converts 8 input lines to a 3-bit binary output, where input 7 has the highest priority and input 0 has the lowest priority. When multiple inputs are active simultaneously, the encoder outputs the binary representation of the highest priority active input.

## 🚀 Key Features

- **Dual Implementation Approaches**: Both behavioral (case-based) and structural modeling
- **Comprehensive Verification**: Complete testbench covering all edge cases and priority scenarios  
- **Professional Documentation**: Industry-standard design flow and documentation
- **EDA Tool Integration**: Optimized for Xilinx Vivado and ModelSim simulation
- **Timing Analysis**: Detailed propagation delay and performance characterization

## 🏗️ Architecture

### Behavioral Model (`priority_encoder_behav.v`)
- Uses `casez` statements with don't-care conditions for efficient priority logic
- Combinational logic with `always @(*)` block
- Includes validity flag for input status indication

### Structural Model (`priority_encoder_struct.v`) 
- Implements priority logic using conditional assignment operators
- Gate-level thinking with assign statements
- Demonstrates alternative RTL coding style

### Comprehensive Testbench (`priority_encoder_tb.v`)
- **Edge Case Testing**: All-zero input conditions
- **Boundary Testing**: Individual input verification  
- **Priority Verification**: Multiple simultaneous input scenarios
- **Model Comparison**: Automated verification between behavioral and structural implementations
- **Waveform Generation**: VCD file output for detailed timing analysis

## 📁 Project Structure

```
priority_encoder_8to3/
├── src/
│   ├── priority_encoder_behav.v    # Behavioral model implementation
│   ├── priority_encoder_struct.v   # Structural model implementation
│   └── priority_encoder_tb.v       # Comprehensive testbench
├── sim/
│   ├── waveforms/                  # Simulation waveform captures
│   └── results/                    # Simulation output files
├── docs/
│   └── design_report.md           # Detailed technical documentation
└── README.md                      # This file
```

## 🛠️ Tools & Technologies

- **HDL**: Verilog HDL
- **Simulation**: Xilinx Vivado 2018.1, ModelSim-Intel FPGA
- **Verification**: Custom testbench with automated checking
- **Documentation**: Professional technical reporting

## ⚡ Quick Start

### Prerequisites
- Xilinx Vivado (2018.1 or later)
- ModelSim-Intel FPGA Edition
- Basic knowledge of Verilog HDL

### Running the Simulation

1. **Clone the Repository**
   ```bash
   git clone https://github.com/vtboss/priority_encoder_8to3.git
   cd priority_encoder_8to3
   ```

2. **Compile in ModelSim**
   ```tcl
   vlog src/priority_encoder_behav.v
   vlog src/priority_encoder_struct.v  
   vlog src/priority_encoder_tb.v
   ```

3. **Run Simulation**
   ```tcl
   vsim priority_encoder_tb
   add wave *
   run -all
   ```

4. **View Results**
   - Check console output for functional verification results
   - Analyze waveforms in ModelSim Wave window
   - Review timing characteristics and signal transitions

## 📊 Simulation Results

The testbench provides comprehensive verification including:

- ✅ **Functional Verification**: All 256 possible input combinations tested
- ✅ **Priority Logic Validation**: Highest priority input always dominates output
- ✅ **Model Equivalence**: Behavioral and structural models produce identical results
- ✅ **Timing Characterization**: Propagation delays measured and documented
- ✅ **Edge Case Handling**: Proper response to all-zero and all-one inputs

## 🎯 Learning Outcomes

This project demonstrates proficiency in:

- **RTL Design Methodologies**: Multiple modeling approaches in Verilog
- **Verification Techniques**: Systematic testbench development and validation
- **EDA Tool Usage**: Professional simulation and analysis workflows  
- **Digital Logic Design**: Priority encoding and combinational circuit implementation
- **Technical Documentation**: Industry-standard project documentation practices

## 📈 Performance Characteristics

- **Logic Depth**: Optimized combinational logic implementation
- **Propagation Delay**: Characterized across all input-output paths
- **Resource Utilization**: Efficient logic utilization for FPGA implementation
- **Scalability**: Design principles applicable to larger encoder implementations

## 🔧 Customization & Extensions

The design can be easily extended for:
- **Parameterizable Width**: Configurable input/output bit widths
- **Additional Features**: Enable signals, interrupt handling, power optimization
- **Advanced Verification**: Constrained random testing, functional coverage analysis
- **Implementation Variants**: Registered outputs, asynchronous operation

## 📚 Documentation

For detailed technical analysis, implementation methodology, and performance characterization, see:
- [Design Report](docs/design_report.md) - Complete technical documentation
- [Simulation Guide](docs/simulation_guide.md) - Step-by-step simulation instructions

## 🏆 Professional Impact

This project showcases essential skills for:
- **VLSI Design Engineer** roles
- **RTL Design** positions  
- **Verification Engineer** opportunities
- **FPGA Development** careers

**Technologies Demonstrated**: Verilog HDL • Digital Design • Functional Verification • EDA Tools • RTL Synthesis • Timing Analysis

---

**Author**: vtboss  
**Course**: Digital Design Laboratory  
**Institution**: Electronics and Communication Engineering  
**Tools**: Xilinx Vivado 2018.1, ModelSim-Intel FPGA

*This project represents professional-level VLSI design methodology and serves as a foundation for advanced digital system implementation.*