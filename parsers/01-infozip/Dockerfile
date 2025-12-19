# Original work Copyright (c) [Yufan You and so on] 2025
# Original work licensed under the Apache License, Version 2.0 (the "Apache-2.0 License");
# You may obtain a copy of the Apache-2.0 License at:
#   http://www.apache.org/licenses/LICENSE-2.0

# Modified work Copyright (c) [Fendy/WHU] [2025-2026]
# Modified work licensed under the MIT License (the "MIT License");
# You may obtain a copy of the MIT License at:
#   https://opensource.org/licenses/MIT

# This file contains modifications to the original ZipDiff codebase (https://github.com/ouuan/ZipDiff).
# Modifications include:
#   1. Compile the info-zip (the unzip60) from the source code instead of installing by the apk package manager.

# Unless required by applicable law or agreed to in writing, software
# distributed under the Apache-2.0 License and MIT License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the respective licenses for the specific language governing permissions and limitations.

FROM alpine:3.20 AS base
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && apk add --no-cache gcc make musl-dev lcov gzip
WORKDIR /workspace

FROM base AS file_prepare
COPY unzip60 /workspace/unzip60
COPY unzip unzip-all.sh /workspace/

FROM file_prepare AS build
RUN cd /workspace/unzip60 && make -f ./unix/Makefile generic

ENTRYPOINT ["./unzip-all.sh"]
