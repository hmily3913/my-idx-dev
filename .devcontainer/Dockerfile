FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y curl wget unzip net-tools bash && \
    rm -rf /var/lib/apt/lists/*

# 可选：创建工作目录
# RUN mkdir -p /home/user
WORKDIR /home/user/frp_0.62.1_linux_amd64
