#!/bin/bash

set -euo pipefail

base="$(dirname "$(dirname "$(realpath "$0")")")"
input_dir="${INPUT_DIR:-$base/evaluation/input}"
output_dir="${OUTPUT_DIR:-$base/evaluation/output}"

cd "$base"/parsers
echo "services:" > docker-compose.yml

for i in */; do
    cp "$base"/tools/unzip-all.sh "$base"/tools/parallel-unzip-all.sh "$base"/tools/testcase.sh "$i"
    parser=${i%/}
    echo "  $parser:
    build: $parser
    volumes:
      - $input_dir:/input:ro
      - $output_dir/$parser:/output" >> docker-compose.yml
done
