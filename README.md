**_ALU:_**
An ALU (Arithmetic Logic Unit) is one of the most crucial components required in a CPU. ALU alone is an
electronic device which is responsible for performing arithmetic calculations and logical operations on
the input data.


**_Project:_**
The following is a project based on Verilog. I have designed a 4-bit ALU, which signifies the flow from a Behavioural Model (Functional Definition) 
to a Structural Model (logic gate design). This is good from a learning perspective as it is not an optimal or an efficient way of VLSI design. 
There are tools like Synopsis Design Compiler, Yosys etc that synthesise the logic gate netlist for a behavioural model,
this is done because of the size and complexity of the modern computers.

**_Operation:_**

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
A snippet of the schematic and the waveforms has also been provided.

**_Installation:_**
To install and rebuild the synthesis:
- Clone the repository
- Cd to the path of the tcl_script
- Then run the command: source create_project.tcl
