#! /bin/sh

./wait-for-it.sh $PG_HOST:$PG_PORT -t 60
./wait-for-it.sh $ELASTICSEARCH_HOST:$ELASTICSEARCH_PORT -t 60
./wait-for-it.sh $REDIS_HOST:$REDIS_PORT -t 60

APP_DIR="app/$APP_NAME"

CURRENT_DIR=$(pwd)

printf "In $CURRENT_DIR \n Running server... in $APP_DIR\n"
