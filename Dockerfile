FROM alpine:3.12
RUN apk add --no-cache --upgrade bash postgresql-client
ADD entrypoint.sh .
RUN chmod u+x /entrypoint.sh
ENTRYPOINT [ "sh","entrypoint.sh" ]
