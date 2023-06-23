FROM golang:1.16

EXPOSE 8000

WORKDIR /usr/src/app

COPY . .
RUN go build
RUN go test ./...

ENV REQUEST_ORIGIN=http://localhost:5001
ENV PORT=8000

CMD ./server