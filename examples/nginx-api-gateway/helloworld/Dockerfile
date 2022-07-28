# This Dockerfile runs the helloworld server from
# https://grpc.io/docs/quickstart/go.html

FROM golang
RUN go get -u google.golang.org/grpc
WORKDIR $GOPATH/src/google.golang.org/grpc/examples/helloworld

EXPOSE 50051
CMD ["go", "run", "greeter_server/main.go"] 
