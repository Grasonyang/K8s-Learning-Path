FROM mysql:8.0 AS mysql-init

ENV MYSQL_ROOT_PASSWORD=rootpassword

FROM alpine:3.18

RUN apk update && apk add --no-cache \
    mysql-client \
    bash \
    curl

COPY --from=mysql-init /etc/mysql/ /etc/mysql/

ENV MYSQL_ROOT_PASSWORD=rootpassword

EXPOSE 3306

CMD ["mysqld"]

RUN apt-get update  
RUN apt-get install -y curl vim  
RUN apt-get clean  
RUN apt-get update && apt-get install -y curl vim \
    && apt-get clean