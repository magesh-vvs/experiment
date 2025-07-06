#!/bin/bash
set -e

echo "Running tests..."
# Simulated test
if grep -q "build artifact" output/build.txt; then
    echo "Test passed!"
else
    echo "Test failed!"
    exit 1
fi
