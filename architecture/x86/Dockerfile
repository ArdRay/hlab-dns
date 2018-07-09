FROM alpine:3.8
RUN apk update
RUN apk add unbound

COPY config/unbound.conf /etc/unbound/unbound.conf

RUN unbound-checkconf

CMD ["unbound"]
