FROM alpine:3.12

RUN apk update && apk add --no-cache ansible=2.9.18-r0
ENTRYPOINT ["/usr/bin/ansible-playbook"]