# 🔢  Arithmetic Logic Unit (ALU) using Verilog HDL

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![RTL Design](https://img.shields.io/badge/RTL-Design-green)
![EDA Playground](https://img.shields.io/badge/Simulator-EDA%20Playground-success)
![Verification](https://img.shields.io/badge/Verification-Self--Checking-orange)
![Project Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![License](https://img.shields.io/badge/License-MIT-yellow)

## 📖 Definition

An **Arithmetic Logic Unit (ALU)** is a fundamental digital circuit that performs arithmetic and logical operations on binary data. It is one of the core building blocks of a processor and executes operations based on a control signal.

This project implements a **Arithmetic Logic Unit (ALU)** using **Verilog HDL** with a modular RTL design approach. The design supports both arithmetic and logical operations and is functionally verified using a self-checking testbench.

---

## 🎯 Project Objective

The objective of this project is to design and verify a modular **1-Bit Arithmetic Logic Unit (ALU)** capable of performing arithmetic and logical operations using Verilog HDL. The project demonstrates RTL design, module integration, combinational logic implementation, and functional verification.

---

## 📚 Repository Contents

- RTL Source Code
- Self-Checking Testbench
- Project Documentation
- Simulation Waveforms
- Screenshots

---

## ⚙️ Functionality

The ALU performs one of eight operations depending on the 3-bit select input (`Sel`).

| Sel | Operation | Description |
|-----|-----------|-------------|
| 000 | AND | Performs bitwise AND of A and B |
| 001 | OR | Performs bitwise OR of A and B |
| 010 | XOR | Performs bitwise XOR of A and B |
| 011 | XNOR | Performs bitwise XNOR of A and B |
| 100 | Addition | Adds A, B and Carry-In (Cin) |
| 101 | Subtraction | Performs subtraction using two's complement logic |
| 110 | Comparator | Checks whether A is greater than B |
| 111 | NOT | Inverts operand A |

The ALU uses an **8×1 Multiplexer** to select the required output while generating the carry output (`Cout`) only during arithmetic operations.

---

## 🏛️ Architecture

The ALU follows a modular design methodology where individual functional modules perform specific operations. Their outputs are connected to an **8×1 Multiplexer**, which selects the final output based on the select signal (`Sel`).

```text
                    +----------------------+
 A ---------------->|                      |
                    |                      |
 B ---------------->|   Arithmetic Unit    |
                    |  (Adder/Subtractor)  |
 Cin--------------->|                      |
                    +----------------------+
                               |
                               v
                    +----------------------+
                    |      Logic Unit      |
                    | AND OR XOR XNOR NOT  |
                    |     Comparator       |
                    +----------------------+
                               |
                               v
                    +----------------------+
 Sel--------------->|       8×1 MUX        |-------> y
                    +----------------------+
                               |
                             Cout
```

---

## 🔄 Design Flow

1. Design individual RTL modules (Adder, Comparator, Multiplexer).
2. Implement logical operations using Verilog gate primitives.
3. Integrate all modules into the top-level ALU.
4. Develop a self-checking testbench.
5. Simulate the design using **EDA Playground**.
6. Analyze the generated waveforms using **EPWave**.
7. Verify all outputs against expected results.

---

## 📥 Inputs

| Signal | Width | Description |
|---------|-------|-------------|
| A | 1 bit | Operand A |
| B | 1 bit | Operand B |
| Cin | 1 bit | Carry Input |
| Sel | 3 bits | Operation Select |

---

## 📤 Outputs

| Signal | Width | Description |
|---------|-------|-------------|
| y | 1 bit | ALU Output |
| Cout | 1 bit | Carry Output (Generated only for arithmetic operations) |

---

## 🧪 Testbench Methodology

The ALU is verified using a **self-checking Verilog testbench**.

The testbench:

- Applies every possible value of **A**, **B**, and **Cin**
- Tests all **8 ALU operations**
- Calculates expected outputs internally
- Compares expected outputs with DUT outputs
- Reports **PASS** or **ERROR** automatically
- Terminates the simulation after executing all test cases

---

## 📊 Verification Summary

| Parameter | Value |
|-----------|-------|
| ALU Operations | 8 |
| Input Combinations | 8 |
| Total Test Cases | 64 |
| Verification Method | Self-Checking Testbench |
| Simulation Platform | EDA Playground |
| Waveform Viewer | EPWave |

---


## 💻 Tools Used

- Verilog HDL
- EDA Playground

---

**Repository Structure**
├── adder.v                    # Full Adder Sub-module
├── Substractor.v              # Subtractor Sub-module
├── comparator.v               # 1-bit Comparator Sub-module
├── mux81.v                    # 8x1 Multiplexer for operation selection
├── design code_top_module.v   # Top-level ALU Integration
├── testbench.v                # Self-checking Testbench Environment
└── README.md                  # Project Documentation

## 🛠️ Key Technologies

- Verilog HDL
- RTL Design
- Modular Design
- Combinational Logic
- Multiplexer-Based Output Selection
- Functional Verification
- Self-Checking Testbench
- Waveform Analysis

---

## ✅ Advantages

- Modular and reusable RTL architecture
- Supports both arithmetic and logical operations
- Synthesizable Verilog implementation
- Automatic functional verification
- Easy to scale to multi-bit ALUs
- Suitable for FPGA and ASIC design learning

---

## ❌ Limitations

- Supports only **1-bit** operations
- Does not generate status flags (Zero, Overflow, Sign, etc.)
- No shift or rotate operations
- No multiplication or division
- Comparator performs basic comparison only

---

## 🚀 Applications

- Processor Datapath Design
- CPU Arithmetic Logic Unit
- FPGA Prototyping
- ASIC Design
- Embedded Systems
- Digital Electronics Education
- RTL Design Practice
- VLSI Learning Projects

---

## 💡 Challenges Faced

- Integrating multiple RTL modules into a single top-level design
- Implementing operation selection using an 8×1 multiplexer
- Handling carry output only for arithmetic operations
- Developing a self-checking verification environment
- Verifying all possible input combinations

---

## 📈 Future Scope

This project can be extended by implementing:

- 4-Bit ALU
- 8-Bit ALU
- Parameterized N-Bit ALU
- Zero Flag
- Carry Flag
- Overflow Flag
- Sign Flag
- Shift and Rotate Operations
- Multiplication
- Division
- Barrel Shifter

---

## 🎓 Learning Outcomes

Through this project, I gained practical experience in:

- Verilog HDL Programming
- RTL Design
- Modular Hardware Design
- Combinational Logic Design
- Module Integration
- Functional Verification
- Self-Checking Testbench Development
- Simulation using EDA Playground


---

## 📌 Key Takeaways

- Designed a modular **1-Bit ALU** using Verilog HDL.
- Integrated reusable RTL modules into a complete design.
- Implemented **8 arithmetic and logical operations**.
- Verified functionality using a self-checking testbench.
- Performed exhaustive verification across ** test cases**.
- Strengthened understanding of RTL design and digital verification methodologies.

---

## 🌟 Project Highlights

- ✔️ Modular RTL implementation
- ✔️ Eight ALU operations
- ✔️ Self-checking verification environment
- ✔️ Exhaustive testing ( test cases)
- ✔️ Simulated using EDA Playground
- ✔️ Clean, readable, and reusable Verilog code

---

## 🙌 Acknowledgements

This project was developed as part of my learning journey in **Digital Design** and **Verilog HDL**. It strengthened my understanding of RTL design, modular hardware development, and functional verification using industry-relevant concepts.

---

## 👩‍💻 Author

**Saakshi Jenweri**

Electronics and Communication Engineering(ECE)

**Areas of Interest:** Digital Design • RTL Design • VLSI • ASIC Design • Functional Verification

**GitHub:** https://github.com/SiliconSprintX

**LinkedIn:** https://www.linkedin.com/in/saakshi-l



---

## 📄 License

This project is licensed under the **MIT License**. See the **LICENSE** file for more details.

---

⭐ **If you found this project useful, consider giving it a Star!**
