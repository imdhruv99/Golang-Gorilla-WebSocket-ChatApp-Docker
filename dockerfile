FROM golang:1.13.5

RUN mkdir /app

COPY conf   /app/conf
COPY static /app/static
ADD . /app

WORKDIR /app

RUN go build  .

CMD [ "/app/main" ]