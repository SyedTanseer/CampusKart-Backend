#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Installing dependencies..."
npm install

echo "Building the project..."
npm run build

# Check if dist folder exists
if [ ! -d "./dist" ]; then
  echo "Error: Build failed - dist folder not found"
  exit 1
fi

echo "Build completed successfully!"
