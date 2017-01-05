#!/bin/bash
max=10
for (( i=1; i <= $max; ++i ))
do
    echo "Test $i"
	curl -I web.local
	docker-compose logs
done