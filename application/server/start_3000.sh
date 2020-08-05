#!/bin/bash
cd /opt/ksbc/fabric-contract-ABAC/application/server
lsof -nPi -sTCP:LISTEN
kill -9 $(lsof -nPi -sTCP:LISTEN |grep 3000 | awk '{print $2}')
node server > /opt/ksbc/fabric-contract-ABAC/application/server/log_port3000.txt 2>&1 &
sleep 5 ; lsof -nPi -sTCP:LISTEN

