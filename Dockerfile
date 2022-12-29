FROM ubuntu:latest
RUN apt-get update && apt-get install net-tools iputils-ping iproute2 iptables -y && apt-get clean
ADD polevpn_server /root/polevpn_server
EXPOSE 443
USER root
WORKDIR /root/polevpn_server
ENTRYPOINT ./start.sh
