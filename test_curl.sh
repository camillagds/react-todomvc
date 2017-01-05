#!/bin/bash
max=10
for (( i=1; i <= $max; ++i ))
do
    echo "Test $i"
	curl -I react.local
	docker-compose logs
done