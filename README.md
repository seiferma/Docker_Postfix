# Docker_Postfix
[![](https://github.com/seiferma/Docker_Postfix/actions/workflows/docker-publish.yml/badge.svg?branch=main)](https://github.com/seiferma/Docker_Postfix/actions?query=branch%3Amain+)
[![](https://img.shields.io/github/issues/seiferma/Docker_Postfix.svg)](https://github.com/seiferma/Docker_Postfix/issues)
[![](https://img.shields.io/github/license/seiferma/Docker_Postfix.svg)](https://github.com/seiferma/Docker_Postfix/blob/main/LICENSE)

Docker image encapsulating a Postfix mail server. Mount your configuration at `/postfix-cfg`. The files will be copied to `/etc/postfix` and override existing ones. All files located in `/postfix-cfg/hashed` will be hashed on startup.
