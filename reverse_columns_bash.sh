#!/bin/bash
export src_wd=/home/xxxx/src_data
export tgt_wd=/home/xxxx/transformed_data
for filename in *.csv; do
    paste  -d, <(cut -d, -f -2 "$filename") <(rev "$filename" | cut -d, -f -7 | rev) > "$tgt_wd"/"$filename"
done
