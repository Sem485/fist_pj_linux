#!/bin/bash
echo "Waiting for service to start"
#Создаем переменную счетик.
attempt=1
max_attempts=5 #чтобы скрипт не работал вечно
while [ $attempt -le $max_attempts ]; do
    echo "Try № $attempt: Checking service..."
    if [ $attempt -eq 3 ]; then
        echo "service run sucsesful"
        break
    fi
    echo "service not ready yet waiting ..."
    sleep 3
    attempt=$((attempt + 1))
done
if [ $attempt -gt $max_attempts ]; then
    echo "Error service not avallibal"
fi
