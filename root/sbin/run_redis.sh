#! /bin/bash -x

#taskset 8 redis-server /etc/redis.conf
taskset 8 redis-server /etc/redis-master.conf
#redis-server /etc/redis-slave.conf

