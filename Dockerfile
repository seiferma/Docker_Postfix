FROM alpine:latest

ARG POSTFIX_VERSION

RUN apk update && \
    apk upgrade
RUN apk add --no-cache \
        postfix=$POSTFIX_VERSION \
        ca-certificates \
        libsasl \
        cyrus-sasl \
        cyrus-sasl-crammd5 \
        cyrus-sasl-digestmd5 \
        cyrus-sasl-gs2 \
        cyrus-sasl-gssapiv2 \
        cyrus-sasl-login \
        cyrus-sasl-ntlm \
        cyrus-sasl-scram && \
    mkdir /etc/sasl2 && \
    touch /etc/postfix/aliases && \
    postmap /etc/postfix/aliases

ADD entrypoint.sh /
ENV CFG_DIR=/postfix-cfg

ENTRYPOINT ["/entrypoint.sh"]
CMD ["postfix"]
