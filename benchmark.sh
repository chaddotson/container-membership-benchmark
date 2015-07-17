#!/bin/sh

printf "Running $1 $2x - "

for i in {1..$2}; do time -p $1; done 2>&1 | grep ^real | sed -e s/.*m// | awk '{sum += $2} END { print "average: " sum / NR "s"}'


