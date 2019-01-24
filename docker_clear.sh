#!/bin/bash 

echo "=== running containers ==="
RUNNING=$(docker ps -qa)
echo "$RUNNING"

echo "=== stopping containers ==="
if [ "$RUNNING" != "" ]
then
	docker stop $RUNNING
fi

echo
echo "=== removing containers ==="
docker container prune -f
echo
echo "=== pruning networks ==="
docker network prune -f
echo
echo "=== pruning volumes ==="
docker volume prune -f

