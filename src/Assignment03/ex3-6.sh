#!/bin/bash

# 사용자로부터 폴더 이름 입력 받기
read -p "폴더 이름을 입력하세요: " folder_name

# 폴더가 존재하지 않으면 생성
if [ ! -d "$folder_name" ]; then
  mkdir "$folder_name"
  echo "폴더 '$folder_name'를 생성했습니다."
fi

# 5개의 파일 생성 (예를 들어, 파일1.txt, 파일2.txt, ...)
for i in {1..5}; do
  touch "$folder_name/파일$i.txt"
  echo "파일$i.txt를 생성했습니다."
done

# 파일들을 압축
tar -czvf "$folder_name.tar.gz" "$folder_name"
echo "파일들을 압축했습니다: $folder_name.tar.gz"

# 새로운 폴더를 생성하여 압축 해제
new_folder="extracted_$folder_name"
mkdir "$new_folder"
tar -xzvf "$folder_name.tar.gz" -C "$new_folder"
echo "압축을 해제하여 새로운 폴더 '$new_folder'를 생성했습니다."
