#!/bin/bash

ok_count=0
total_runs=1234

for ((i=1; i<=total_runs; i++)); do
    output=$(./qatest run)

    if [[ "$output" == "END" ]]; then
        break
    elif [[ "$output" == "fizz" ]]; then
        ((ok_count++))
    fi
done

echo "$ok_count/$total_runs"
