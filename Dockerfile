FROM python:3
ARG WORKDIR=/app
RUN mkdir -p $WORKDIR
ADD ./plato $WORKDIR
WORKDIR $WORKDIR
RUN pip install git+https://github.com/toluaina/pgsync.git
COPY ./docker/wait-for-it.sh wait-for-it.sh
ARG APP_NAME=plato
ENV APP_NAME=$APP_NAME
COPY ./docker/runserver.sh runserver.sh
RUN chmod +x wait-for-it.sh
RUN chmod +x runserver.sh