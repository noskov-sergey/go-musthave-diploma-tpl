FROM ubuntu:18.04

LABEL author='synoskov'

COPY cmd/accrual/accrual_linux_amd64 .

RUN chmod +x accrual_linux_amd64

CMD ["./accrual_linux_amd64"]