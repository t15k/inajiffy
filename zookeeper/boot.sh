#/bin/bash

curl -O http://mirror.netcologne.de/apache.org/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz
tar xzf zookeeper-3.4.6.tar.gz

mkdir -p data

echo "tickTime=2000
dataDir=`pwd`/data
clientPort=2181
" > zookeeper-3.4.6/conf/zoo.cfg

zookeeper-3.4.6/bin/zkServer.sh start zoo.cfg
