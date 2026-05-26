Lab 2: VHDL Code for Realizing Logic Gates

Objective
• To write VHDL code for basic logic gates: AND, OR, NOT, NAND, NOR, XOR, and
XNOR.
• To simulate each gate and verify its truth table using GTKWave.

Theory
Logic gates are the fundamental building blocks of all digital circuits. Each gate performs a
basic Boolean operation on one or more binary inputs to produce a single binary output.

Gate VHDL Operator Boolean Expression
AND   and           Y = A · B
OR    or            Y = A + B
NOT   not           Y = A
NAND   nand         Y = A · B
NOR   nor           Y = A + B
XOR   xor           Y = A ⊕ B
XNOR   xnor         Y = A ⊕ B

## Simulation Steps

To analyze all design files together, elaborate the design, run the testbench, and view the waveforms in GTKWave, execute the following commands in your terminal:

```bash
# 1. Analyze all VHDL design files and the testbench
ghdl -a and_gate.vhd or_gate.vhd not_gate.vhd nand_gate.vhd nor_gate.vhd xor_gate.vhd xnor_gate.vhd gates_tb.vhd

# 2. Elaborate the testbench entity
ghdl -e GATES_TB

# 3. Run the simulation and export the waveform to a VCD file
ghdl -r GATES_TB --vcd=simulation.vcd

# 4. Open the waveform in GTKWave for verification
gtkwave simulation.vcd

Expected Truth Table

A B AND OR NOT-A NAND NOR XOR XNOR
0 0 0    0  1     1    1   0   1
0 1 0    1  1     1    0   1   0
1 0 0    1  0     1    0   1   0
1 1 1    1  0     0    0   0   1

## Conclusion
In this lab, the behavioral and dataflow modeling styles of VHDL were successfully utilized
 to design and implement fundamental logic gates. By compiling the VHDL code and running the
 corresponding testbenches, the hardware descriptions were successfully translated into
 simulation waveforms. 

Using **GTKWave**, the timing diagrams and signal transitions were analyzed against theoretical
expectations. The simulation outputs perfectly matched the truth tables for
each gate (**AND, OR, NOT, NAND, NOR, XOR, and XNOR**), thereby validating the correctness
 of the VHDL code and confirming the successful realization of basic digital logic structures.
