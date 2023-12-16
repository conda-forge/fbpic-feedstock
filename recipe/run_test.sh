#!/usr/bin/env bash

set -eu -x -o pipefail

export NUMBA_THREADING_LAYER=omp
export MKL_NUM_THREADS=2
export NUMBA_NUM_THREADS=2

# Python: pytest
$PYTHON -m pytest -s -vvvv --ignore="tests/unautomated" tests/
