# Lecture 6 — Timing & Verification

## Real World Timing

In theory, signals change instantly.  
In reality, everything has delay.

- Caused by wires and transistors  
- Depends on voltage, temperature, etc.  

## Types of Delay

### Propagation Delay (tpd)
- Maximum delay  
- Time for output to fully settle  

### Contamination Delay (tcd)
- Minimum delay  
- Time when output just starts changing  

## Path Analysis

### Critical Path (Longest)
- Slowest path in circuit  
- Limits maximum speed  

### Shortest Path
- Fastest path  
- Important for hold timing  

## Glitches

- Output may change multiple times before settling  
- Happens due to different path delays  

Doesn’t usually break logic but wastes power  

## Sequential Timing

For flip-flops to work properly:

### Setup Time
- Data must be stable **before** clock edge  

### Hold Time
- Data must stay stable **after** clock edge  

If violated → metastability (unpredictable output)

## Clock Skew

- Clock does not reach all parts at same time  
- Causes timing issues  

## Important Formulas

### Setup Condition

Tc ≥ tpcq + tpd + tsetup  

### Hold Condition

tccq + tcd ≥ thold  

## Example Idea

Max frequency depends on longest delay:

More delay → lower frequency  
Less delay → higher speed  

## Fixing Problems

- Setup issue → reduce clock speed  
- Hold issue → add delay (buffers)  

## Verification

Used to check if design works.

### Testbench
- Simulates circuit  
- Applies inputs  

### Golden Model
- Expected correct output  
- Used for comparison  

## Quick Summary

- Real circuits have delay  
- Critical path → speed limit  
- Setup & hold are very important  
- Clock skew affects timing  
- Testbench checks correctness  
