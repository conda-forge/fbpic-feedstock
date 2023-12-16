@echo on

set "NUMBA_THREADING_LAYER=omp"
set "MKL_NUM_THREADS=2"
set "NUMBA_NUM_THREADS=2"

:: Python: pytest
%PYTHON% -m pytest -s -vvvv --ignore="tests\unautomated" tests\
if errorlevel 1 exit 1
