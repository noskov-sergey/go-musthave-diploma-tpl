FROM golang:1.20.3-alpine AS builder

COPY github.com/noskov-sergey/go-musthave-diploma-tpl/cmd/accrual/ . github.com/noskov-sergey/go-musthave-diploma-tpl/accrual/source/
WORKDIR github.com/noskov-sergey/go-musthave-diploma-tpl/accrual/source/

RUN go mod download
RUN go build -o ./bin/accrual cmd/accrual/accrual_windows_amd64


FROM alpine:latest

WORKDIR /root/

COPY --from=builder go-musthave-diploma-tpl/source/bin/accrual .

CMD ["./accrual"]