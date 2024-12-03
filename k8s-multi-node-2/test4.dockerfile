FROM alpine:3.18

RUN apk update && apk add --no-cache \
    mysql-client \
    bash \
    curl \
    build-base \
    gcc \
    make

ENV MYSQL_ROOT_PASSWORD=rootpassword


EXPOSE 3306

CMD ["mysqld"]
