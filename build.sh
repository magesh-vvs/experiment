#!/bin/bash
set -e

echo "Starting build process..."
mkdir -p output
echo "This is a build artifact" > output/build.txt
zip -r output/build.zip output/build.txt
echo "Build completed."
