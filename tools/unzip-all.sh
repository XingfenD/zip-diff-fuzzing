#!/bin/sh

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
#   1. Change the execable from unzip to /workspace/unzip

# Unless required by applicable law or agreed to in writing, software
# distributed under the Apache-2.0 License and MIT License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the respective licenses for the specific language governing permissions and limitations.

set -eu

cd /input

for i in *; do
    mkdir -p /output/"$i"
    if ! timeout 1m /workspace/unzip "$(realpath "$i")" /output/"$i"; then
        while ! rm -rf /output/"$i"; do echo "Failed to rm -rf /output/$i"; done
        touch /output/"$i"
    fi
done
