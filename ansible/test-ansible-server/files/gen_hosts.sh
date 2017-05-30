#!/bin/bash

#Generate a list of hosts fro ansible from the hosts driectory which each container will log its ip address withthe environment variable it belongs to HOSTTYPE!

cd /opt/data

SOURCE='/opt/data/hosts'
DEST='/opt/data/playbooks/hosts'
TMP='/opt/data/tmp'
mkdir -p -m 775 $SOURCE
mkdir -p -m 775 $TMP
rm -fR $TMP/*
for s in `ls -1 $SOURCE`; do
	stype=${s%-*}
	if [ ! -e ${TMP}/${stype} ]; then 
		echo "[$stype]" > ${TMP}/${stype}
	fi
	cat $SOURCE/$s >> ${TMP}/${stype} 
	echo "$s processed"
done

#now glue the hostlists togather to make the complete hosts file.
cat $TMP/* > $DEST

