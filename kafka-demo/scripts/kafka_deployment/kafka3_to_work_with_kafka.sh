#!/usr/bin/env bash
#run consumers in group
docker exec -it kafka /bin/kafka-console-consumer --topic demo-topic --group demo-group --bootstrap-server kafka:9092
