#!/bin/bash

exe=$1
procs=(8 16 32 64 128)
for i in ${procs[@]}
do
	echo `srun -n $i $exe` 
done
