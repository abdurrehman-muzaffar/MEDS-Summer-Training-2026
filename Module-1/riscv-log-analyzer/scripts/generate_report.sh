#!/bin/bash

mkdir -p output

REPORT="output/report.txt"

echo "RISC-V Log Analysis Report" > "$REPORT"
echo "Generated: $(date)" >> "$REPORT"
echo "" >> "$REPORT"

for file in test_data/*.log
do
    echo "Processing $file" >> "$REPORT"
    grep "SUMMARY" "$file" >> "$REPORT" || true
    echo "" >> "$REPORT"
done

echo "Report generated at $REPORT"