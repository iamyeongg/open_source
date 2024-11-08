#!/bin/sh

name=$1
info=$2

db_file="DB.txt"

if [ -f "$db_file" ]; then
  echo "$name $info" >> "$db_file"
else
  echo "--my friends--" > "$db_file"
  echo "$name $info" >> "$db_file"
fi

