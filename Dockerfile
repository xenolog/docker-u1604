FROM ubuntu:16.04
MAINTAINER Sergey Vasilenko <stalk@makeworld.ru>
RUN apt-get update
RUN TERM=screen apt-get install -y apt-utils dialog
RUN TERM=screen apt-get install -y software-properties-common iputils-ping iproute2 tcpdump traceroute bridge-utils iputils-arping ethtool vim-tiny ssh tmux
RUN locale-gen en_US.UTF-8
RUN export LANG=en_US.UTF-8
