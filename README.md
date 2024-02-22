# RISC-V implementation verilog

This is the resord of implemetation of RISC-V in verilog. The project is based on the book "Computer Organization and Design RISC-V Edition" by David A. Patterson and John L. Hennessy.

The project is a single cycle RISC-V implementation. 

Let's start with the basic components of the RISC-V architecture.

First let's implement the basic components of the RISC-V architecture. The basic components are:
1. ALU
2. Register File
3. Control Unit
4. Instruction Memory (syncronous memory)
    
    Note that in the data_in serves to flash the memory with the instructions.
    and as I'm implementing RV32E which reduces the integer register count to 16 general-purpose registers, (x0–x15), where x0 is a dedicated zero register.
5. Data Memory (syncronous memory)
6. Program Counter (PC)

    Note that the choise of the PC (PC+4 or PC+ImmExt) will be done by the control unit, where a module will take the control signals and the current PC and will output the next PC.

7. Sign Extender : This module is responsible for selecting the immidiate from the instruction word and extending the immediate value of the instruction to 32 bits.