##

FROM alpine:latest

WORKDIR /root
COPY xf.sh /root/xf.sh

RUN set -ex \
    && apk add --no-cache tzdata openssl ca-certificates \
    && chmod +x /root/xf.sh

CMD [ "/root/xf.sh" ]
