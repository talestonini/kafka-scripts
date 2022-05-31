#!/bin/bash

cd $DEV_HOME/tools/kafka/current
./bin/zookeeper-server-start.sh config/zookeeper.properties&
sleep 5
./bin/kafka-server-start.sh config/server.properties&
sleep 5

cd $DEV_HOME/tools/confluent/current
./bin/schema-registry-start etc/schema-registry/schema-registry.properties&
