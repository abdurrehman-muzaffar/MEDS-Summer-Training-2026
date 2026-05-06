# Lecture 4 — FSM, FPGA & Verilog Basics

## Finite State Machines (FSM)

FSM is a system with:
- states  
- inputs  
- outputs  
- transitions  

## FSM Design Steps

1. Draw state diagram (circles + arrows)  
2. Make state table  
3. Assign binary values to states  
4. Write logic equations  
5. Build circuit using flip-flops + logic  

## Moore vs Mealy

### Moore Machine
- Output depends only on state  
- More stable  

### Mealy Machine
- Output depends on state + input  
- Faster but can have glitches  

## State Encoding

We represent states using bits.

### Binary Encoding
- Uses minimum bits  
- Example: 4 states → 2 bits  

### One-Hot Encoding
- One flip-flop per state  
- Only one bit = 1 at a time  
- Easier and faster  

## FPGA Basics

FPGA = hardware you can reprogram.

Main parts:
- LUTs → act like logic gates  
- Switches → connect things  
- I/O blocks → connect to outside  

## CAD Design Flow

Steps to go from code to hardware:

1. Write Verilog  
2. Synthesis  
3. Place & Route  
4. Generate Bitstream  

## Verilog Basics

Verilog is used to describe hardware.

- Starts with `module`  
- Ends with `endmodule`  

👉 Important:
Hardware runs **in parallel**, not line-by-line like software.

## Important Rules

- Always use reset in FSM  
- All state changes happen on clock edge  
- Number of bits needed:
  
States → bits = log₂(states)

## Example Idea

Traffic light system:

- State 1 → Green  
- State 2 → Yellow  
- State 3 → Red  

System changes state based on input (like traffic sensor).

## Quick Summary

- FSM = states + transitions  
- Moore → output = state  
- Mealy → output = state + input  
- FPGA = reprogrammable hardware  
- Verilog = hardware description language  
