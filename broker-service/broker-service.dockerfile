FROM golang:1.22.4-alpine3.20 as builder

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN CGO_ENABLED=0 go build -o brokerApp ./cmd/api

RUN chmod +x /app/brokerApp

CMD ["/app/brokerApp"]