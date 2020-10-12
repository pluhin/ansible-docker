FROM alpine:latest

RUN apk update \
    && apk add --no-cache ansible=2.9.9-r0 sshpass