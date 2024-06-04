FROM ubuntu:22.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl && rm -rf /var/lib/apt/lists/*

RUN curl -s -L https://github.com/mingrammer/flog/releases/download/v0.4.4/flog_0.4.4_linux_amd64.tar.gz | tar xzf - -C /usr/local/bin flog