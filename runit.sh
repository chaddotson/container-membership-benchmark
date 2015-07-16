#!/bin/sh

./benchmark.sh "python list.py" 100
./benchmark.sh "python set.py" 100
./benchmark.sh "python frozenset.py" 100
./benchmark.sh "python dict.py" 100

if [ -x $(which pypy) ]; then
    ./benchmark.sh "pypy list.py" 100
    ./benchmark.sh "pypy set.py" 100
    ./benchmark.sh "pypy frozenset.py" 100
    ./benchmark.sh "pypy dict.py" 100
fi


