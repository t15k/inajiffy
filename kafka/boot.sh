#!/bin/bash

: ${ZK_CONNECT?"Need to set ZK_CONNECT and BROKER_ID"}
: ${BROKER_ID?"Need to set ZK_CONNECT and BROKER_ID"}

curl -O "http://ftp-stud.hs-esslingen.de/pub/Mirrors/ftp.apache.org/dist/kafka/0.8.2.0/kafka_2.11-0.8.2.0.tgz"
tar xzf kafka_2.11-0.8.2.0.tgz
mkdir -p data

echo "broker.id=$BROKER_ID
log.dirs=`pwd`/data
zookeeper.connect=$ZK_CONNECT
" > kafka.cfg

kafka_2.11-0.8.2.0/bin/kafka-server-start.sh -daemon kafka.cfg
