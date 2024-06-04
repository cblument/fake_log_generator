FROM ubuntu:22.04

LABEL org.opencontainers.image.source=https://github.com/cblument/fake_log_generator
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl && rm -rf /var/lib/apt/lists/*

RUN curl -s -L https://github.com/mingrammer/flog/releases/download/v0.4.4/flog_0.4.4_linux_amd64.tar.gz | tar xzf - -C /usr/local/bin flog