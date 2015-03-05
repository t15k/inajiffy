Bootstrap scripts
=================

Small collection of scripts for quickly getting some service up and running on
a bot.

Zookeeper
---------
    $ curl https://raw.githubusercontent.com/t15k/inajiffy/master/zookeeper/boot.sh | bash

Kafka
-----
    $ export ZK_CONNECT="172.31.18.110:2181" && export BROKER_ID=1
    $ curl https://raw.githubusercontent.com/t15k/inajiffy/master/kafka/boot.sh | bash
