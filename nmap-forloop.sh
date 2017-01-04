#!/bin/bash

hosts=( host1 host2 host3 )

for i in "${hosts[@]}"; do
    nmap $i
    sleep 5
done
