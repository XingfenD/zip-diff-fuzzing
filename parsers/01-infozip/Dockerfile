# Copyright (c) [Fendy/WHU] [2025-2026]
# Licensed under the MIT License (the "MIT License");
# You may obtain a copy of the MIT License at:
#   https://opensource.org/licenses/MIT

FROM alpine:3.20 AS base
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && apk add --no-cache gcc make musl-dev lcov gzip
WORKDIR /workspace

FROM base AS file_prepare
COPY unzip60 /workspace/unzip60
COPY unzip unzip-all.sh coverage.sh app.env /workspace/

FROM file_prepare AS build
RUN cd /workspace/unzip60 && make -f ./unix/Makefile generic

ENTRYPOINT ["./unzip-all.sh"]
