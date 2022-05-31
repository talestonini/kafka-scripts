#!/bin/bash

cd $DEV_HOME/tools/confluent/current
./bin/ksql-server-start etc/ksqldb/ksql-server.properties
