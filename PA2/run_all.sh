#!/bin/bash
circuits=("c432" "c499" "c880" "c1355" "c2670" "c3540" "c6288" "c7552")
for circuit in "${circuits[@]}"; do
    echo $circuit
    ./src/atpg sample_circuits/$circuit.ckt >out/$circuit.out
    ./bin/golden_atpg sample_circuits/$circuit.ckt >out/$circuit.ref
done
