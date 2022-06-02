#!/bin/bash

# the following env vars should only be available for kafka, not for zookeeper, otherwise ports will clash!
#export PROMETHEUS_HOME=$DEV_HOME/tools/prometheus
#export KAFKA_OPTS="-javaagent:${PROMETHEUS_HOME}/jmx_prometheus_javaagent-0.17.0.jar=5555:${PROMETHEUS_HOME}/kafka_broker.yml"

cd $DEV_HOME/tools/kafka/current
./bin/zookeeper-server-start.sh config/zookeeper.properties&
sleep 5
./bin/kafka-server-start.sh config/server.properties&
sleep 5

cd $DEV_HOME/tools/confluent/current
./bin/schema-registry-start etc/schema-registry/schema-registry.properties&
