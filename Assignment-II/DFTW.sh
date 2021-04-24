#!/bin/bash

out=$1
for t in 1 2 4 8 12 16 20 24 28 32
do
	./bin/DFTW $t >> $out
done
