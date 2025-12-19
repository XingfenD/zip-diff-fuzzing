# Copyright (c) [Fendy/WHU] [2025-2026]
# Licensed under the MIT License (the "MIT License");
# You may obtain a copy of the MIT License at:
#   https://opensource.org/licenses/MIT

set -eu

source app.env

# $1 -- source code directory
# $2 -- zip filename
# $3 -- output directory

lcov -c -d "$1" -o "$3"/"$2".covinfo