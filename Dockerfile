FROM golang:latest

LABEL maintainer="romanitalian <romanitalian.net@gmail.com>"
WORKDIR /app

RUN groupadd -g 61000 vasya
RUN useradd -g 61000 -l -M -s /bin/false -u 61000 vasya

COPY cmd/. ./
RUN go mod download
COPY . .
RUN go build -o main .
EXPOSE 8080

USER vasya
CMD ["./main"]
