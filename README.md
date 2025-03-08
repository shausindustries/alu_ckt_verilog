The following is the project based on Verilog. I have designed an ALU (Arithmetic Logic Unit).
Till now only a raw schematic was developed, now some updates are being made. Recently it was provided it's own testbench to simulated.
The table followed by my 4-bit alu is:
 ____   _______________ 
| 000 | Addition        |
| 001 | Subtraction     |
| 010 | Multiplication  |
| 011 | Comparison      |
| 100 | AND Logic       |
| 101 | OR Logic        |
| 110 | XOR Logic       |
| 111 | NAND Logic      |
 _____  ________________
 
A few errors have also been resolved, like the multiplexer structures etc.
You can find the simulation and the testbench file in alu.sim folder.
A snippet of the schematic and the waveforms have also been provided.
