#!/bin/bash
a=$(mktemp)
find /path/to/dir -type f | shuf -n $(shuf -i200000-300000 -n1) >$a
while IFS='' read -r l || [[ -n "$l" ]]; do
    cp "$l" /path/to/out/dir
done <$a


find /path/to/dir -type f | shuf -n $(shuf -i200000-300000 -n1) |\
tr '\n' '\0' | xargs -0 -n1 cp -t /path/to/out/dir


find ./ -type f | shuf -n $(shuf -i50000-100000 -n1) |\
tr '\n' '\0' | xargs -0 -n1 cp -t /mnt/1891d811-2584-43fe-8168-97e68e40d511/datasets/photo-ac-sub-50k/
