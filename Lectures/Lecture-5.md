# Lecture 5 — Verilog & Timing Basics

## Why HDL?

Normal languages (C, C++) run line by line.  
Hardware works in parallel.

That’s why we use HDL (like Verilog) to describe hardware behavior.

## Modeling Styles

### Structural
- Describes how components are connected  
- Like wiring gates together  

### Behavioral
- Describes what the circuit does  
- No need to show gates  

In practice, both are used together.

## Useful Verilog Syntax

### Bit Slicing
bus[7:0] → selects bits  

### Concatenation
{A, B} → joins signals  

### Replication
{4{A}} → repeats A four times  

### Numbers
4'b1001 → 4-bit binary number  

## always Block

Used for sequential logic.

Example:
always @(posedge clk)

Runs only when clock changes.

## reg vs wire

- wire → connection between signals  
- reg → holds value (used in always block)  

## Blocking vs Non-Blocking (Important)

### Blocking (=)
- Executes line by line  
- Used in combinational logic  

### Non-blocking (<=)
- Executes all at once  
- Used in sequential logic  

Never mix both in same block.

## Reset Types

### Asynchronous Reset
- Happens immediately  
- Independent of clock  

### Synchronous Reset
- Happens on clock edge  

## FSM in Verilog (3 Blocks)

Good design splits FSM into 3 parts:

1. State register (clocked)
2. Next state logic  
3. Output logic  

Makes design clean and easy to debug.

## Important Rules

- Use always @(*) for combinational logic  
- Cover all cases (use default)  
- Missing cases → unwanted latch  

## Quick Summary

- Verilog describes hardware (not software)  
- = → combinational  
- <= → sequential  
- FSM → use 3 blocks  
- always @(*) → combinational logic  
