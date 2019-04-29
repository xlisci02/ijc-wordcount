#!/bin/bash

sum=0
e=`ls -1 *.gcov 2>/dev/null | wc -l`

if [ $(($e)) -ne 0 ]; then
	for j in `cat *.gcov | grep lcount | cut -d"," -f2`
	#for j in `cat htab_bucket_count.c.gcov | grep lcount | cut -d"," -f2`
	do
		# echo $(($j))
		let sum=$sum+$(($j))
	done
fi

echo $sum
