FROM multiarch/debian-debootstrap:armel-stretch
RUN apt-get update && apt-get upgrade -y
RUN apt-get install unbound -y

COPY unbound.conf /etc/unbound/unbound.conf

RUN unbound-checkconf

CMD ["unbound"]
