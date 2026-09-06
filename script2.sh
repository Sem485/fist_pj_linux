#!/bin/bash
echo "Waiting starting Data Base..."
attempt=1
max_attempts=5

until [ $attempt -gt $max_attempts ]; do
    echo "Try connect to Data Base..."
    sleep 3
    if [ $attempt -eq 4 ]; then
        echo "Data Base ready for working"
        break
    fi    
    echo "Data Base not ready yet, please wait"
    attempt=$((attempt + 1))
done

if [ $attempt -gt $max_attempts ]; then
    echo "Error: Data Base not avallibal now"
fi