#!/bin/sh
set -e

# Translate the circuit and prepare the build
verilator -Wall --cc --trace counter.sv --exe counter_tb.cpp

# Build the simulation executable
make -j -C obj_dir/ -f Vcounter.mk Vcounter

# Run the simulation
obj_dir/Vcounter