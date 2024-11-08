#!/bin/sh

folder_name=$1

if [ ! -d "$folder_name" ]; then
  echo "$folder_name 폴더가 존재하지 않습니다. 폴더를 생성합니다."
  mkdir "$folder_name"
else
  echo "$folder_name 폴더가 이미 존재합니다."
fi

cd "$folder_name"

touch ${folder_name}1.txt ${folder_name}2.txt ${folder_name}3.txt ${folder_name}4.txt ${folder_name}5.txt

for file in ${folder_name}1.txt ${folder_name}2.txt ${folder_name}3.txt ${folder_name}4.txt ${folder_name}5.txt
do
  subfolder_name=$(basename "$file" .txt)
  if [ ! -d "$subfolder_name" ]; then
    mkdir "$subfolder_name"
  fi
  ln -s "../$file" "$subfolder_name/$file"
done

