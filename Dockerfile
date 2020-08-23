FROM golang:1.15

LABEL maintainer="romanitalian <romanitalian.net@gmail.com>"
WORKDIR /app

RUN groupadd -g 61000 vasya
RUN useradd -g 61000 -l -M -s /bin/false -u 61000 vasya

COPY app/. .
RUN go mod download
RUN go build -o main .

USER vasya
CMD ["./main"]
