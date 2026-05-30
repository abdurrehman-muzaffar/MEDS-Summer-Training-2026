#!/bin/bash

echo "Checking required tools..."

for tool in bash grep awk sed sort uniq; do
    if command -v "$tool" >/dev/null 2>&1; then
        echo "[OK] $tool"
    else
        echo "[MISSING] $tool"
    fi
done