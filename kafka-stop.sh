#!/bin/bash

cd $DEV_HOME/tools/confluent/current
./bin/schema-registry-stop&
sleep 10

cd $DEV_HOME/tools/kafka/current
./bin/kafka-server-stop.sh&
sleep 10
./bin/zookeeper-server-stop.sh&
