#!/bin/bash

echo "Stopping old rotation..."

pkill -f rotate_pages.sh || true

echo "Starting new rotation..."

nohup /home/ubuntu/main/webpages/rotate_pages.sh \
> /home/ubuntu/main/rotation.log 2>&1 &

echo "Started"

