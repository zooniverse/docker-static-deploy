FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y curl && \
    curl https://deb.nodesource.com/setup | bash - && \
    apt-get install -y nodejs git ruby ruby-dev build-essential automake \
        autoconf && \
    apt-get clean && \
    gem install jekyll

ADD deploy.sh /

ENTRYPOINT [ "/deploy.sh" ]
