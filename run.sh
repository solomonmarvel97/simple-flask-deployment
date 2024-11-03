#!/bin/bash

# Check if virtual environment "venv" exists
if [ ! -d "venv" ]; then
  echo "Creating virtual environment..."
  python3 -m venv venv
else
  echo "Virtual environment already exists."
fi

# Activate the virtual environment
source venv/bin/activate

# Install requirements
if [ -f "requirements.txt" ]; then
  echo "Installing requirements..."
  pip3 install -r requirements.txt
else
  echo "requirements.txt not found. Skipping requirements installation."
fi

# Run the main Python file
echo "Running main.py..."
python3 main.py
