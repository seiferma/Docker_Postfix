FROM alpine:latest

RUN VERSION=3.7.4-r0 && \
	apk add --no-cache \
        postfix \
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
	VERSION= && \
    mkdir /etc/sasl2 && \
    touch /etc/postfix/aliases && \
    postmap /etc/postfix/aliases

ADD entrypoint.sh /
ENV CFG_DIR=/postfix-cfg

ENTRYPOINT ["/entrypoint.sh"]
CMD ["postfix"]
