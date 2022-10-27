# Kafka Binary Cheatsheet

Assuming everything is run from kafka root folder of kafka binaries. Using a localhost broker.

## GROUPS

### list groups
```bash
./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list --all-groups
```

### get group offset list
```bash
./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group <group> --all-topics
```

### reset group offset to topic
```bash
./bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --reset-offsets --group <group> --topic <topic> --to-earliest --execute
```


## TOPICS
### list topics
```bash
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --list
```

### describe topic
```bash
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic <topic>

#topic offsets(regardless of consumers):
./bin/kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list localhost:9092 --time -1 --topic <topic>
#return topic:partition:offset
```

## create
```bash
./bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --topic <topic> --replication-factor 1 --partitions 3
```

## CONSUMERS
```bash
./bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic <topic> [--from-beginning|--offset <offset_start> --partition <partition>] --property print.key=true --property key.deserializer=org.apache.kafka.common.serialization.ByteArrayDeserializer
```

## PRODUCER

## LOCAL BROKER

### Start zookeeper
```bash
./bin/zookeeper-server-start.sh config/zookeeper.properties
```

### Start broker
```bash
./bin/kafka-server-start.sh config/server.properties
```
