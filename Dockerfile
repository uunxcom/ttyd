##

FROM alpine:latest

WORKDIR /root
COPY xf.sh /root/xf.sh

RUN set -ex \
    && apk add --no-cache tzdata openssl ca-certificates \
    && mkdir -p /root/ttyd \
    && chmod +x /root/xf.sh

CMD [ "/root/xf.sh" ]
