FROM alpine:3.18.2

COPY BRACMAT_* /tmp/
RUN apk update && \
    apk add wget && \
    wget -O /usr/local/bin/bracmat https://github.com/BartJongejan/Bracmat/releases/download/v.$(cat /tmp/BRACMAT_VERSION)/bracmat-Linux && \
    chmod +x /usr/local/bin/bracmat && \
    apk del wget
