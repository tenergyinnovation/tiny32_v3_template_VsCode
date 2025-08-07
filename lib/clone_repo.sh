#!/bin/bash
# This script clones a git repository

# Define the repository URL
REPO_URL1="https://github.com/tenergyinnovation/tiny32_v3.git"

# Define the target directory (optional)
TARGET_DIR="repository"

# Clone the repository
git clone $REPO_URL1

# Clone Debounce library to specific location in tiny32_v3
echo "Cloning Debounce library to tiny32_v3/src/Debounce..."
cd tiny32_v3/src || exit
git clone "https://github.com/wkoch/Debounce.git"
cd ../../

echo "Repositories cloned successfully."


