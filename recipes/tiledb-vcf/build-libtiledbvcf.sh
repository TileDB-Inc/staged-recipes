#!/bin/sh

set -exo pipefail

mkdir libtiledbvcf-build && cd libtiledbvcf-build
cmake \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_BUILD_TYPE=Release \
  ../libtiledbvcf

make -j ${CPU_COUNT}
make install-libtiledbvcf