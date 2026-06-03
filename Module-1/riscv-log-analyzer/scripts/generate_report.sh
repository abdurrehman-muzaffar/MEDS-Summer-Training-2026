#!/bin/bash

mkdir -p output

REPORT="output/report.txt"

echo "RISC-V Log Analysis Report" > "$REPORT"
echo "Generated: $(date)" >> "$REPORT"
echo "" >> "$REPORT"

for file in test_data/*.log
do
    echo "==================================" >> "$REPORT"
    echo "FILE: $file" >> "$REPORT"
    bash scripts/analyze.sh "$file" >> "$REPORT" 2>&1 || true
    echo "" >> "$REPORT"
done

echo "Report generated at $REPORT"