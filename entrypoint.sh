#!/bin/sh

set -e

if [ "$1" == "postfix" ]; then
    ls -la /
    ls -la /postfix-cfg
    cp -rf "$CFG_DIR"/* /etc/postfix/
    find /etc/postfix/hashed -type f -regex '.*/[^.]\+' -maxdepth 1 -exec postmap {} \;
    chown root:root -R /etc/postfix/
    find /etc/postfix/ -type d -exec chmod 0750 {} \;
    find /etc/postfix/ -type f -exec chmod 0640 {} \;
    exec /usr/sbin/postfix -c /etc/postfix start-fg
else
    exec "$@"
fi
