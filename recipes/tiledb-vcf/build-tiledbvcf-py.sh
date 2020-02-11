#!/bin/bash

set -e
set -x

export TILEDBVCF_CMAKE_PREFIX_PATH="${PREFIX}"
export TILEDBVCF_FORCE_EXTERNAL_HTSLIB="OFF"

$PYTHON setup.py install --tiledb="$PREFIX" --single-version-externally-managed --record record.txt
