FROM golang:1.18 AS buildando
WORKDIR /app
COPY . ./
#SHELL [ "/bin/sh" ]
#SHELL [ "/bin/python" ]
RUN go mod init hello
RUN go build -o /app/hello

FROM alpine:3.15.9
COPY --from=buildando /app/hello /app/hello
ENV APP="hello_word"
ARG GIROPOPS="strigus"
ENV GIROPOPS=$GIROPOPS
VOLUME [ "/app/dados" ]

RUN echo "O giropops é: $GIROPOPS"
CMD [ "/app/hello" ]