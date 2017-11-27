FROM golang:1.8.5

ADD . /go/src/app

WORKDIR /go/src/app/cmd/rtorrent_exporter

RUN go get -v
RUN go install -v

EXPOSE 9135

ENTRYPOINT [ "/go/bin/rtorrent_exporter" ]