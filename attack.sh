#!/bin/bash
# Author: Liang Gong
# Modified by: Sar Champagne Bielert (CodePath)
# Modified by: Andrew Burke (CodePath)

# These lines help the output print in color!
RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

### Step 1: Start the server
echo -e "\t[${GREEN}start vulnerable server${NC}]: ${BLUE}hftp${NC}"

echo "Starting Server"
nohup node scripts/start-server.js > server.log 2>&1 &
vulnpid=$!

### Step 2: Wait for the server to get started

echo "Waiting 2 seconds.."

sleep 2

echo -e "\t[${GREEN}server root directory${NC}]: `pwd`"


### Step 3: Perform directory attack

ATTACK_PATH="${1:-http://localhost:8888/general/reports.txt}"

echo "Starting attack on ${ATTACK_PATH}"

node scripts/attack.js "$ATTACK_PATH"

### Step 4: Clean up the vulnerable npm package's process

kill -9 $vulnpid
