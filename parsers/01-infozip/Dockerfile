FROM alpine:3.20

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && apk add --no-cache gcc make musl-dev

WORKDIR /usr/src/unzip60

COPY unzip60/ .

RUN make -f ./unix/Makefile generic

ENTRYPOINT ["./start.sh"]