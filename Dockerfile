FROM golang:latest

WORKDIR $GOPATH/src/github.com/zachlatta/sshtron

RUN apt-get update && apt-get install openssh-client

ADD . .
RUN make

ENTRYPOINT ["./sshtron"]
