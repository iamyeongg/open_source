#!/bin/sh

folder_name=$1

if [ ! -d "$folder_name" ]; then
  echo "$folder_name 폴더가 존재하지 않습니다. 폴더를 생성합니다."
  mkdir "$folder_name"
else
  echo "$folder_name 폴더가 이미 존재합니다."
fi

cd "$folder_name"

touch file0.txt file1.txt file2.txt file3.txt file4.txt

echo "생성된 파일:"
ls file*.txt

tar -cvf files.tar file0.txt file1.txt file2.txt file3.txt file4.txt

echo "압축된 파일:"
ls files.tar

new_folder="extracted_files"
if [ ! -d "$new_folder" ]; then
  mkdir "$new_folder"
fi

mv files.tar "$new_folder"
cd "$new_folder"
tar -xvf files.tar

echo "압축 해제된 파일:"
ls file*.txt





