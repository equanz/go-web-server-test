FROM golang:1.11-alpine

# if workdir is not existed create directory automatically
WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]

