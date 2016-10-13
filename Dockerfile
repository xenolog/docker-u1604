FROM ubuntu:16.04
MAINTAINER Sergey Vasilenko <stalk@makeworld.ru>
RUN apt-get update
RUN TERM=screen apt-get install -y apt-utils dialog
RUN TERM=screen apt-get install -y software-properties-common iputils-ping iproute2 tcpdump traceroute bridge-utils iputils-arping ethtool vim-tiny ssh tmux curl less
RUN locale-gen en_US.UTF-8
RUN export LANG=en_US.UTF-8
RUN cd /root && curl -L https://raw.githubusercontent.com/xenolog/docker-u1604/master/files/tmux.conf -o .tmux.conf
RUN cd /usr/local/bin && curl -L https://github.com/kelseyhightower/confd/releases/download/v0.11.0/confd-0.11.0-linux-amd64 -o confd && chmod +x confd
RUN mkdir -p /etc/confd/{conf.d,templates}
