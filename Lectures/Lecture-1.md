# Lecture 1 — Fundamentals, Transistors & Logic Gates

## Why this lecture matters
This lecture builds the foundation of how computers actually work.  
At the lowest level, everything reduces to simple electrical behavior.

## The Transformation Hierarchy

A problem doesn’t directly run on hardware. It goes through multiple layers:

1. Problem — what we want to solve  
2. Algorithm — logical steps  
3. Program — written code (C, Python, etc.)  
4. ISA (Instruction Set Architecture) — interface between software and hardware  
5. Microarchitecture — internal CPU design  
6. Logic — gates like AND, OR, NOT  
7. Devices — transistors  
8. Physics — movement of electrons  

**Key idea:** Software eventually becomes electrical signals.

## Transistors as Switches

Transistors behave like ON/OFF switches.

### NMOS
- Turns ON when input = 1  
- Turns OFF when input = 0  
- Pulls output toward 0  

### PMOS
- Turns ON when input = 0  
- Turns OFF when input = 1  
- Pulls output toward 1  
- Has a bubble in diagrams  

## CMOS Logic

CMOS uses both NMOS and PMOS together.

- Pull-up network (PMOS) → connects to 1  
- Pull-down network (NMOS) → connects to 0  

This combination is efficient and avoids unnecessary power loss.

## Example: NOT Gate (Inverter)

### Case 1: Input = 0
- PMOS ON  
- NMOS OFF  
- Output = 1  

### Case 2: Input = 1
- PMOS OFF  
- NMOS ON  
- Output = 0  

## Important Definitions

**Instruction Set Architecture (ISA)**  
Defines what instructions hardware can execute. It is the interface between software and hardware.

**Microarchitecture**  
The internal implementation of the ISA. Different processors can share the same ISA but have different designs.

**Logic Gates**  
Basic circuits that implement Boolean functions like AND, OR, NOT, NAND.

## Key Rules

- PMOS pulls output to 1  
- NMOS pulls output to 0  
- Bubble symbol means inversion  
- PMOS passes strong 1  
- NMOS passes strong 0  

## Common Mistakes

- Confusing NMOS and PMOS behavior  
- Ignoring the inversion bubble  
- Creating short circuits (both networks ON)  
- Thinking AND is simpler than NAND in CMOS  

## Quick Summary

- Transistors act as switches  
- CMOS = PMOS + NMOS  
- NMOS turns ON with 1  
- PMOS turns ON with 0  
- All computing ultimately depends on these basics  
