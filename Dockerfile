FROM alpine:3.6
MAINTAINER Benton Drew <benton.s.drew@drewantech.com>
RUN apk add --no-cache openssl && \
  mkdir /home/user
WORKDIR /home/user
ENTRYPOINT ["openssl"]
