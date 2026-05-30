#!/bin/bash

LOGFILE=$1

if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile>"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "File not found: $LOGFILE"
    exit 1
fi

PASS_COUNT=$(grep -c "PASS" "$LOGFILE")
FAIL_COUNT=$(grep -c "FAIL" "$LOGFILE")
ERROR_COUNT=$(grep -c "ERROR" "$LOGFILE")

echo "===== Log Analysis ====="
echo "File: $LOGFILE"
echo "PASS entries : $PASS_COUNT"
echo "FAIL entries : $FAIL_COUNT"
echo "ERROR entries: $ERROR_COUNT"