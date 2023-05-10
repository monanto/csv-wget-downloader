#!/bin/bash

# Csv file
CSV_FILE="in.csv"

# Delmiter
DELIM=,

# Timeout seconds
TIMEOUT=15

# Directory where downloaded files will be stored
DIR="out"

if [[ ! -d "$DIR" ]];then
	mkdir $DIR
fi

if [[ ! -f "$CSV_FILE" ]];then
	echo "$CSV_FILE dont exist"
	exit 1
fi


while read LINE;do
	echo $LINE|grep -s http
	if [[ $? -eq 0 ]];then
		NAME="$(echo "$LINE"|awk -F "$DELIM" '{print $1}'|sed 's/^ *//g')"
		LINK="$(echo "$LINE"|awk -F "$DELIM" '{print $2}'|sed 's/^ *//g')"
		wget -O "$DIR"/"$NAME".jpg -q -t 2 --timeout=$TIMEOUT "$LINK"
		echo "Saved $DIR/$NAME".jpg
	fi


done < "$CSV_FILE"