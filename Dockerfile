#Dockerfile centos-with-ssh
# 选择一个已有的os镜像作为基础
FROM ubuntu:16.04

# 镜像的作者
MAINTAINER wuyl <yunlai.wu@qq.com>

# 安装python-pip和libsodium18软件包，并且在pip下安装shadowsocks 2.8.2
RUN apt-get update && \
    apt-get install -y python-pip libsodium18
RUN pip install shadowsocks==2.8.2

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/ssserver"]