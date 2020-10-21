FROM alpine:latest

RUN apk update \
    && apk add --no-cache ansible=2.9.14-r0 sshpass openjdk8-jre