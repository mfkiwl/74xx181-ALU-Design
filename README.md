# 74xx181-ALU-Design
Verilog Design of Texas Instruments 74xx181 ALU

![ALU logic symbol (Courtesy of Texas Instruments Inc.)](https://drive.google.com/file/d/1FTod9c6sFGzS7F6legW2VIY83Q3p2A_5/view?usp=sharing)

# Working

A four-bit select code (S3–S0) and a mode bit (M) are used to decide the operation to be performed on data inputs as shown in Table 2.15. The mode and select code can provide up to 32 different functions as tabulated. As can be seen in the table, the functions are partitioned into two categories: logic and arithmetic. The arithmetic functions are further divided into two groups. Consider the logical operations, for which M = 1: when select = 0000, the four-bit ‘A’ input is complemented bit-wise and output in F. By changing M to 0, keeping select = 0000, and the carry input high, the output is A plus 1 (which means increment A). Similarly, other functions can be inferred.

# Function Table

![74xx181, ALU function table (Courtesy of Texas Instruments Inc.)](https://drive.google.com/open?id=1l11-hO4gwsPU8P6G_24bOFYJu1OpCAci)
