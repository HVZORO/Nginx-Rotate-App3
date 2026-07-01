#!/bin/bash

echo "Stopping old rotation..."

pkill -f rotate_pages.sh || true

echo "Starting new rotation..."

nohup /home/ubuntu/nginx-rotate-app2/webpages/rotate_pages.sh \
> /home/ubuntu/nginx-rotate-app2/rotation.log 2>&1 &

echo "Started"

