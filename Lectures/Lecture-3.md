# Lecture 3 — Sequential Logic & Memory

## Logical Completeness

Some gates are enough to build any circuit.

- AND, OR, NOT → complete set  
- NAND alone → also complete  
- NOR alone → also complete  

NAND and NOR are very important in real designs.

## ALU (Arithmetic Logic Unit)

ALU is the part of CPU that does calculations.

- Inputs: A, B  
- Control: Function select (F)  
- Output: result  

Example:
- F = AND → performs AND  
- F = ADD → performs addition  

Subtraction is done using:
A − B = A + (two’s complement of B)

## Tri-State Buffer

Normal signals:
- 0 or 1  

Tri-state adds:
- Z (high impedance)

Z means disconnected (not 0)

Used in buses where multiple devices share a wire.

Important:
Never enable two outputs on same wire → causes conflict.

## Sequential Logic

Sequential logic has memory.

- Output depends on past + current inputs  
- Uses storage elements  

## Latches

### SR Latch
- Built using cross-coupled gates  
- Stores 1 bit  

Invalid case exists → not reliable

### D Latch
- Fixes SR latch problem  
- Has Enable signal  

- Enable = 1 → output follows input  
- Enable = 0 → value is stored  

## Flip-Flops

Flip-flops are edge-based memory.

### D Flip-Flop
- Updates only on clock edge  
- Most commonly used  

Built using two latches (master-slave)

## Clock Concept

Clock controls when data updates.

- Rising edge → update happens  
- Keeps system synchronized  

All state changes happen on clock edge

## FSM (Finite State Machine)

System with states.

- Moves between states based on input  
- Uses clock  

Used in:
- control units  
- processors  

## Example

### Equality Checker
To check A == B:

- Compare each bit using XNOR  
- AND all outputs  

If result = 1 → numbers are equal  

## Important Points

- Z ≠ 0 (it means disconnected)  
- Latch → level sensitive  
- Flip-flop → edge triggered  
- NAND/NOR can build everything  

## Quick Summary

- Sequential logic = memory  
- ALU = performs operations  
- Tri-state = allows shared wires  
- Flip-flop = main storage element  
- Clock = controls updates  
