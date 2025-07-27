#!/bin/bash

# Run 3 blockchain nodes on different ports

echo "Starting Node 1 (port 5000)..."
gnome-terminal -- bash -c "python node.py -p 5000; exec bash"

echo "Starting Node 2 (port 5001)..."
gnome-terminal -- bash -c "python node.py -p 5001; exec bash"

echo "Starting Node 3 (port 5002)..."
gnome-terminal -- bash -c "python node.py -p 5002; exec bash"
