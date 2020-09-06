FROM alpine:edge
LABEL maintainer=sylvain@huguet.me
LABEL me.huguet.author="Sylvain Huguet"

RUN apk add --no-cache --update oath-toolkit-oathtool openconnect

COPY entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]