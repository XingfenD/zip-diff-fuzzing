# Copyright (c) [Fendy/WHU] [2025-2026]
# Licensed under the MIT License (the "MIT License");
# You may obtain a copy of the MIT License at:
#   https://opensource.org/licenses/MIT

FROM debian:12-slim AS apt_updated
COPY debian.sources /etc/apt/sources.list.d 

RUN sed -i 's|https://|http://|g' /etc/apt/sources.list.d/debian.sources && \
    apt-get update && \
    apt-get install -y ca-certificates && \
    rm -rf /var/lib/apt/lists/* && \
    sed -i 's|http://|https://|g' /etc/apt/sources.list.d/debian.sources && \
    apt-get update
