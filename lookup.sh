#!/usr/bin/bash

target=sample_trigger_$(date "+%Y%m%d")_01
END=6

for i in $(seq 1 $END);
do
	if [ -e ./$target ]; then
		digdag run task_transfer.dig
		break
	else
		echo "waiting..."$i
		sleep 600
		continue
	fi
done
