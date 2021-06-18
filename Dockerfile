FROM alpine:3.12
ENV PYTHONUNBUFFERED=1
RUN apk update \
    && apk add --no-cache ansible=2.9.18-r0 sshpass bash \
    && apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python \
    && python3 -m ensurepip \
    && pip3 install --no-cache --upgrade pip setuptools
