# Lecture 2 — Combinational Logic

## What is Combinational Logic?

Combinational logic is memoryless, meaning the output only depends on current inputs.

- No past values are stored  
- If input changes, output changes immediately (with small delay)

## Combinational vs Sequential

| Type | Memory | Depends On |
|------|--------|------------|
| Combinational | No | Current inputs |
| Sequential | Yes | Past + current inputs |

## Power in Digital Circuits

Whenever signals switch, power is used.

### Dynamic Power
- Happens when signals change (0 ↔ 1)  
- Due to charging/discharging  

### Static Power
- Happens even when nothing is changing  
- Caused by leakage  

### Formula

P ∝ C × V² × f  

- C = capacitance  
- V = voltage  
- f = frequency  

Lowering voltage reduces power the most.

## Boolean Algebra Basics

Used to describe logic using 0 and 1.

### Duality
Swap AND ↔ OR and 0 ↔ 1, expression still works.

### DeMorgan’s Law

(A · B)' = A' + B'  
(A + B)' = A' · B'  

Very useful for simplifying circuits.

## SOP and POS

### SOP (Sum of Products)
- Use rows where output = 1  
- OR of AND terms  

### POS (Product of Sums)
- Use rows where output = 0  
- AND of OR terms  

## Basic Blocks

### Decoder
- n inputs → 2ⁿ outputs  
- Only one output is active  

### Multiplexer (Mux)
- Selects one input from many  
- Works like a switch  

## Example

### Full Adder
Inputs: A, B, Cin  

- Sum = 1 if odd number of 1s  
- Carry = 1 if at least two inputs are 1  

## Important Rule

X·Y + X·Y' = X  

Helps simplify logic.

## Quick Summary

- Combinational = no memory  
- SOP = OR of ANDs  
- POS = AND of ORs  
- Decoder → selects output  
- Mux → selects input  
