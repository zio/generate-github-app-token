FROM alpine:3.17.3

RUN apk add --no-cache --upgrade bash
RUN apk add --no-cache --upgrade jq
RUN apk add --no-cache --upgrade openssl
RUN apk add --no-cache --upgrade curl

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
