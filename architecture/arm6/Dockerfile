FROM arm32v6/alpine
RUN apk update
RUN apk add unbound

COPY unbound.conf /etc/unbound/unbound.conf

RUN unbound-checkconf

CMD ["unbound"]
