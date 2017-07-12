FROM alpine:3.6
MAINTAINER Benton Drew <benton.s.drew@drewantech.com>
RUN apk add --no-cache openssl && \
  addgroup -S -g 224 openssl_user && \
  adduser -u 224 -S -G openssl_user -h /home/openssl_user -s /sbin/nologin -D openssl_user && \
  chown -R openssl_user:openssl_user /home/openssl_user
USER openssl_user
WORKDIR /home/openssl_user
ENTRYPOINT ["openssl"]
