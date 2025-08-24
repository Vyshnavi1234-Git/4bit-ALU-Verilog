# 4-bit ALU in Verilog (Vivado Project)

## 📌 Project Overview
This project implements a **4-bit Arithmetic and Logic Unit (ALU)** in Verilog using **Xilinx Vivado**.  
The ALU performs basic arithmetic and logical operations depending on the 2-bit control input `SEL`.

---

## ⚡ Features
- **Inputs:**
  - `A[3:0]`, `B[3:0]` → Operands
  - `SEL[1:0]` → Operation selector
- **Operations Supported:**
  - `00` → Addition
  - `01` → Subtraction
  - `10` → Bitwise AND
  - `11` → Bitwise OR
- **Outputs:**
  - `RESULT[3:0]` → Output result
  - `CARRY` → Carry flag (for add/sub)

---


