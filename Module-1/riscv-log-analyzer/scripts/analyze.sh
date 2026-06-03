#!/bin/bash

set -euo pipefail

show_help() {
    echo "Usage: $0 <logfile>"
    echo "Example: $0 test_data/sample_fail.log"
}

if [ $# -lt 1 ]; then
    show_help
    exit 1
fi

LOGFILE="$1"

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found"
    exit 1
fi

PASS_COUNT=$(grep -c "\[PASS\]" "$LOGFILE" || true)
FAIL_COUNT=$(grep -c "\[FAIL\]" "$LOGFILE" || true)
SKIP_COUNT=$(grep -c "\[SKIP\]" "$LOGFILE" || true)

TOTAL=$((PASS_COUNT + FAIL_COUNT + SKIP_COUNT))

if [ "$TOTAL" -gt 0 ]; then
    PASS_RATE=$(awk "BEGIN {printf \"%.2f\", ($PASS_COUNT/$TOTAL)*100}")
else
    PASS_RATE=0
fi

echo "===== RISC-V Log Analysis ====="
echo "File: $LOGFILE"
echo "Total Tests : $TOTAL"
echo "Passed      : $PASS_COUNT"
echo "Failed      : $FAIL_COUNT"
echo "Skipped     : $SKIP_COUNT"
echo "Pass Rate   : $PASS_RATE %"

echo
echo "Failed Tests:"
grep "TEST FAIL" "$LOGFILE" | awk -F': ' '{print $2}' | awk '{print $1}' || true

if [ "$FAIL_COUNT" -gt 0 ]; then
    exit 1
else
    exit 0
fi