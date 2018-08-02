#!/usr/bin/bash

TODAY=$(date "+%Y%m%d")
target=execution_trigger_${TODAY}_01
END=7
WAITING_SEC=600

for i in $(seq 1 ${END});
do
  if [ -e ./${target} ]; then
    echo "### flag found. run digdag >>> "
    digdag run task_transfer.dig
    rm -rf .digdag/
    break
  else
    if [ ${i} -eq ${END} ]; then
      echo "### flag not found. send mail ... "
      cat lookup_mail.txt | sendmail -i -t
    else
      echo "### waiting count ... "${i}" /$((${END} - 1))"
      sleep ${WAITING_SEC}
    fi
  fi
done