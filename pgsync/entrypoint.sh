#!/usr/bin/env bash

wait-for-it $PG_HOST:5432 -t 60
wait-for-it $REDIS_HOST:6379 -t 60
wait-for-it $ELASTICSEARCH_HOST:9200 -t 60

bootstrap --config ./schema.json
pgsync --config ./schema.json --daemon