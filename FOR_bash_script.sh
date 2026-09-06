#!/bin/bash
#for цикл как работает
echo "Starting check all servers..."
echo "............................."
servers=("bd-server" "web-server" "cache-server" "public-server")
for server in "${servers[@]}"; do #перебор заданных серверов, цикт в этом
echo "connecting to servers..."
sleep 3 #для имитации проверки
echo "Connect complete"
echo ""
done
echo "All server working"
#ЧЕКНУЛ ВСЕ РАБОТАЕТ
