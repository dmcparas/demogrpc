#!/bin/bash
# wait for Zookeeper
echo "Waiting for Zookeeper..."
while ! nc -z localhost 2181; do
  sleep 1
done
echo "Zookeeper is up, starting Kafka..."
exec /etc/confluent/docker/run
