FROM alpine

RUN apk update
ADD bot /bot
ENTRYPOINT ["/bot"]