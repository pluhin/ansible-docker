FROM alpine

RUN apk update && apk add --no-cache ansible=2.9.14-r0
ENTRYPOINT ["/usr/bin/ansible-playbook"]