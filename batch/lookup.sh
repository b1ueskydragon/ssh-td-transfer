#!/usr/bin/bash

target=trigger_$(date "+%Y%m%d")_01
END=6

for i in $(seq 1 $END);
do
	if [ -e /SAMPLE_DIR/$target ]; then
		echo "### Flag found. run digdag..."
		digdag run task_transfer.dig
		rm -rf .digdag/
		break
	else
		echo "### waiting count..."$i
		sleep 600
		continue
	fi
done