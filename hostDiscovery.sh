#!/bin/bash


for i in $(seq 2 254); do
  timeout 1 bash -c "ping -c 1 10.10.11.$i > /dev/null 2>&1" && echo "Host 10.10.11.$i - ACTIVE" &
done; wait
