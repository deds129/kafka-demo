#!/usr/bin/env bash

#create topic with name demo-topic
/bin/kafka-topics --create --topic demo-topic --bootstrap-server kafka:9092

#show all topics
#/bin/kafka-topics --list --zookeeper zookeeper:2181 - deprecated
/bin/kafka-topics --list --bootstrap-server localhost:9092

#kafka help
#bin/kafka-topics --help

#show created topic description
#/bin/kafka-topics --bootstrap-server=localhost:9092 --describe --topic
/bin/kafka-topics --describe --topic demo-topic --bootstrap-server kafka:9092

#create few messages
/bin/kafka-console-producer --topic demo-topic --bootstrap-server kafka:9092
#then enter messages + ctrl + C

#read created messages
#messages store 7 days by default
/bin/kafka-console-consumer --topic demo-topic --from-beginning --bootstrap-server kafka:9092

#add 3 partitions in topic with name demo-topic
#/bin/kafka-topics --zookeeper zookeeper:2181 --alter --topic demo-topic --partitions 3 -deprecated
/bin/kafka-topics --bootstrap-server localhost:9092 --alter --partitions 3 --topic demo-topic
#show updated topic description / will be 3 topics
/bin/kafka-topics --describe --topic demo-topic --bootstrap-server kafka:9092

#run consumers in group
/bin/kafka-console-consumer --topic demo-topic --group demo-group --bootstrap-server kafka:9092

