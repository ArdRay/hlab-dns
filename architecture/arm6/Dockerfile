FROM multiarch/debian-debootstrap:armel-wheezy
RUN apt update
RUN apt install unbound

COPY unbound.conf /etc/unbound/unbound.conf

RUN unbound-checkconf

CMD ["unbound"]
