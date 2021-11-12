FROM alpine:3.14

RUN apk update && apk add git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
