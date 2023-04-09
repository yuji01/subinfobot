FROM golang:alpine
RUN apk add --no-cache git && \
    git clone https://github.com/wu-mx/subinfobot/ && \
    cd subinfobot && \
    go get && \
    go build
WORKDIR /subinfobot
CMD ["./subinfobot"]
