#!/usr/bin/env bash

set -e

echo "Running Week 01 checks..."

output1=$(echo "2" | ./main)
echo "$output1" | grep -q "Total: 6000"

output2=$(echo "0" | ./main)
echo "$output2" | grep -q "Invalid quantity"

output3=$(echo "-3" | ./main)
echo "$output3" | grep -q "Invalid quantity"

echo "All checks passed."
echo "Checkpoint code: W01-CPP-CAFE-PASS"
