#!/bin/bash
awk 'BEGIN {FS="\t"} {count[$1]++} END {for (host in count) print host, count[host]}' | sort -k2,2nr | head -n 11
