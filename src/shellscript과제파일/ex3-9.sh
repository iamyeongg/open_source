#!/bin/sh


name=$1

db_file="DB.txt"


if [ ! -f "$db_file" ]; then
  echo "$db_file 파일이 존재하지 않습니다."
  exit 1
fi


grep -i "$name" "$db_file"


if [ $? -ne 0 ]; then
  echo "$name 에 대한 정보를 찾을 수 없습니다."
fi

