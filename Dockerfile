FROM node:carbon-alpine
RUN     apk update \
    &&  apk add nginx bind-tools curl wget nmap procps tcpdump busybox-extras mtr openssh-client postgresql-client mysql-client rsync jq git iputils lftp netcat-openbsd socat iproute2 net-tools bash perl-net-telnet iperf3 ethtool apache2-utils vim redis
RUN adduser -S app
USER app
CMD [ "sh" ]
