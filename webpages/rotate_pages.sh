#!/bin/bash

TARGET="/var/www/html/index.html"
SRC_DIR="/home/ubuntu/nginx-rotate-app2/webpages"

PAGES=("index1.html" "index2.html" "index3.html")

DURATION=300
INTERVAL=2

END_TIME=$((SECONDS + DURATION))

while [ $SECONDS -lt $END_TIME ]
do
  for page in "${PAGES[@]}"
  do
    ln -sf "$SRC_DIR/$page" "$TARGET"
    sleep $INTERVAL

    if [ $SECONDS -ge $END_TIME ]; then
      break
    fi
  done
done
