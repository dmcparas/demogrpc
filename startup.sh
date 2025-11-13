#!/bin/sh
# Wait for Zookeeper to be ready
echo "Waiting for Zookeeper on localhost:2181..."
while ! nc -z localhost 2181; do
  sleep 1
done
echo "Zookeeper is up, starting Kafka..."

# Start Kafka
exec /etc/confluent/docker/run
