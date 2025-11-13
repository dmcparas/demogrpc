#!/bin/bash
# Start Zookeeper in background
echo "Starting Zookeeper..."
zookeeper-server-start /etc/kafka/zookeeper.properties &

# Wait until Zookeeper is ready
while ! nc -z localhost 2181; do
  sleep 1
done

echo "Starting Kafka..."
exec /etc/confluent/docker/run
