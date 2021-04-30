#!/bin/bash

out=$1
threads=(1 2 4 8 12 16 20 24 28 32)
export OMP_SCHEDULE="guided"
for t in ${threads[@]}
do 
	export OMP_NUM_THREADS=$t

	# compute average bandwidth
	acc=0
	bw=()
	for i in {1..5} 
	do
		b=`./bin/stream | grep Copy: | awk '{print $2}'`
		bw+=( $b )
		acc=`echo $acc $b | awk '{print $1 + $2}'`

	done
	avg=`echo $acc | awk '{print $1 / 5.0}'`

	# compute standard deviation of sample
	sos=0
	for b in ${bw[@]}
	do
		sos=`echo $b $avg $sos | awk '{print $3 + ($1 - $2) ^ 2}'`
	done
	std=`echo $sos | awk '{print sqrt($1 / 5.0)}'`

	echo "$t $avg $std" >> $out 
done
