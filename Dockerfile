FROM golang:latest

LABEL maintainer="romanitalian <romanitalian.net@gmail.com>"
WORKDIR /app

RUN useradd -ms /bin/bash vasya
RUN chown -R vasya /app
ENV HOME /home/vasya
USER vasya

COPY cmd/. ./
RUN go mod download
COPY . .
RUN go build -o main .
EXPOSE 8080
CMD ["./main"]
