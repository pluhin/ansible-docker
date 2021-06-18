FROM alpine:latest
ENV PYTHONUNBUFFERED=1
RUN apk update \
    && apk add --no-cache ansible=2.9.14-r0 sshpass \
    && apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python \
    && python3 -m ensurepip \
    && pip3 install --no-cache --upgrade pip setuptools
