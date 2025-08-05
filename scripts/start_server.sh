#!/bin/bash

PORT=80

if lsof -t -i:$PORT > /dev/null; then
    echo "Killing tasks on $PORT..."
    kill -9 $(lsof -t -i:$PORT)
else
    echo "No task found on $PORT."
fi

sleep 2

echo "Starting server on port $PORT..."
node /home/ec2-user/app/app.js > /home/ec2-user/app/app.log 2>&1 &
if [ $7 -eq 0 ]; then
    echo "Server started. Verify logs on /home/ec2-user/app/app.log"
else
    echo "Failed to start server. Verify logs on /home/ec2-user/app/app.log for more details."
fi
