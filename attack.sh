#!/bin/bash
# Mehedi Hassan — Directory Traversal Attack

# Step 1: Start vulnerable FTP server
echo "Starting FTP Server..."
nohup node scripts/start-server.js > server.log 2>&1 &
SERVER_PID=$!
sleep 2
echo "Server running (PID: $SERVER_PID)"

# Step 2: Set attack path
ATTACK_PATH="http://localhost:8888/general/reports.txt"

# Step 3: Launch attack
echo "Launching Directory Traversal attack on $ATTACK_PATH"
node scripts/attack.js "$ATTACK_PATH"

# Step 4: Stop the server
kill -9 $SERVER_PID
echo "Server stopped. Attack complete."
