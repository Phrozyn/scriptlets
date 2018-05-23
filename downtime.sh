#!/bin/bash

# To use this file simply call ./downtime.sh hostlist period note
# where hostlist is a file with hosts one on each line, period is either
# a future hour, or in absolute values like "2 hours", and note is why you
# are downtiming the host.

hostfile=$1
period=$2
note=$3

cat "$hostfile" | while read line; do
  sudo /data/bin/nagiosctl downtime $line "$period" "$note"
done
