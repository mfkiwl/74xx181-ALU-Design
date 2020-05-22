# 74xx181-ALU-Design-and-Synthesis
Verilog Design of 74xx181 ALU and its Synthesis on Lattice Ice40 FPGA using Yosys

![ALU logic symbol (Courtesy of Texas Instruments Inc.)](/pro.png)

*ALU logic symbol (Courtesy of Texas Instruments Inc.)*

# Working

A four-bit select code (S3–S0) and a mode bit (M) are used to decide the operation to be performed on data inputs as shown in the table. The mode and select code can provide up to 32 different functions as tabulated. As can be seen in the table, the functions are partitioned into two categories: logic and arithmetic. The arithmetic functions are further divided into two groups. Consider the logical operations, for which M = 1: when select = 0000, the four-bit ‘A’ input is complemented bit-wise and output in F. By changing M to 0, keeping select = 0000, and the carry input high, the output is A plus 1 (which means increment A). Similarly, other functions can be inferred.

# Function Table

![74xx181, ALU function table (Courtesy of Texas Instruments Inc.)](/table.png)

*74xx181, ALU function table (Courtesy of Texas Instruments Inc.)*

# Synthesis Report
