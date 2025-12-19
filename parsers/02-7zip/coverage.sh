#!/bin/sh

# Copyright (c) [Fendy/WHU] [2025-2026]
# Licensed under the MIT License (the "MIT License");
# You may obtain a copy of the MIT License at:
#   https://opensource.org/licenses/MIT

set -eu

# $1 source code path
# $2 output coverinfo path
# $3 path prefix to replace in coverinfo

base=$(basename "$1")