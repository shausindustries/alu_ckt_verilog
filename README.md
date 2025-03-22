The following is the project based on Verilog. I have designed an ALU (Arithmetic Logic Unit). This project signifies the flow from a behavioural model (Functional Definition) to a structural mode (logic gate design).
This is good from a learning perspective as it is not an optimal or an efficient way of VLSI design. There are tools like Synopsis Design Compiler, Yosys etc that synthesis the logic gate netlist for behavioural model,
this is done because of the size and complexity of the modern computers.

The table followed by my 4-bit alu is:
| Opc | Function      |
|-----|---------------|
| 000 | Addition      |
| 001 | Subtraction   |
| 010 | Multiplication|
| 011 | Comparison    |
| 100 | AND Logic     |
| 101 | OR Logic      |
| 110 | XOR Logic     |
| 111 | NAND Logic    |

 
A few errors have also been resolved, like the multiplexer structures etc.
You can find the simulation and the testbench file in alu.sim folder.
A snippet of the schematic and the waveforms have also been provided.

To install and rebuild the synthesis:
- Clone the repository
- Cd to the path of the tcl_script
- Then run the command: source create_project.tcl
