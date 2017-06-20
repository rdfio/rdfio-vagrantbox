#!/bin/bash
for n in 100 1000 10000; do
	now=$(date "+%Y-%m-%d.%H:%M")
	echo "--------------------------------------------------------------------------------" | tee -a import_log.txt
	echo "$now: Starting to import $n triples ..." | tee -a import_log.txt;
	echo "--------------------------------------------------------------------------------" | tee -a import_log.txt
	./restoredb.sh
	sleep 1
	{ /usr/bin/time -f '%e s' php rdfio-maintenance/importRdf.php --chunksize 100 --indata "testperf_"$n".nt"; } 2>&1 | tee -a import_log.txt
	sleep 1
done;

