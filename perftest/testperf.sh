#!/bin/bash
for n in 100 200 300 400 500 600 700 800 900 1000 2000 3000 4000 5000 6000 7000 8000 9000 10000; do
	echo "--------------------------------------------------------------------------------" >> import_log.txt
	echo "Starting to import $n triples ..." >> import_log.txt;
	echo "--------------------------------------------------------------------------------" >> import_log.txt
	./restoredb.sh
	sleep 1
	{ /usr/bin/time -f '%e seconds' php rdfio-maintenance/importRdf.php --indata "testperf_"$n".nt"; } &>> import_log.txt
	sleep 1
done;

