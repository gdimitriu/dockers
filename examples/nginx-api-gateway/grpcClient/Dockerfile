# BASE Image
FROM debian:buster-slim

RUN apt-get update
RUN apt-get install golang-go python3 python-pip git

RUN go get google.golang.org/grpc
RUN git clone -b v1.14.1 https://github.com/grpc/grpc
RUN pip install grpcio-tools

CMD ["/bin/bash"]
