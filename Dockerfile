FROM docker.elastic.co/logstash/logstash:8.15.0

COPY ./logstash.conf /usr/share/logstash/pipeline/logstash.conf
COPY ./postgresql-42.7.3.jar /usr/share/logstash/postgresql-42.7.3.jar