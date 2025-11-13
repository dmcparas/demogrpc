#!/bin/bash
# Wait for Zookeeper (in the same container, we can start it directly)
echo "Starting Zookeeper..."
/etc/confluent/docker/run &   # Starts Zookeeper in background

# Wait for Zookeeper to be ready
while ! nc -z localhost 2181; do
  sleep 1
done

echo "Starting Kafka..."
exec /etc/confluent/docker/run  # Starts Kafka
