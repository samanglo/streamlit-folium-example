#!/bin/bash
# Exit on any error
set -e

# Navigate to the repository directory
cd "$DEPLOYMENT_SOURCE"

# Setup Python environment
echo "Creating Python virtual environment"
python -m venv --copies myenv
source myenv/bin/activate

# Upgrade pip and install requirements
echo "Upgrading pip"
pip install --upgrade pip

echo "Installing requirements from requirements.txt"
pip install -r requirements.txt

# Add additional build or deployment commands here
# For example, run a Django migration or collect static files

# Deactivate virtual environment
deactivate

