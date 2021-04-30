#!/bin/bash

out=$1
threads=(32)
schedule=("static" "guided" "dynamic")
for t in ${threads[@]}
do 
	export OMP_NUM_THREADS=$t

	for s in ${!schedule[@]}
	do
		export OMP_SCHEDULE=${schedule[$s]} 
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

		echo "$s $avg $std" >> $out 
	done
done
