#!/bin/bash

# 사용자로부터 폴더 이름 입력 받기
read -p "폴더 이름을 입력하세요: " folder_name

# 폴더가 존재하지 않으면 생성
if [ ! -d "$folder_name" ]; then
  mkdir "$folder_name"
  echo "폴더 '$folder_name'를 생성했습니다."
fi

# 5개 이상의 파일 생성 (예를 들어, 파일1.txt, 파일2.txt, ...)
for i in {1..5}; do
  touch "$folder_name/파일$i.txt"
  echo "파일$i.txt를 생성했습니다."
done

# 파일 이름대로 하위 폴더 생성하고 각 폴더에 파일을 링크
for i in {1..5}; do
  subfolder_name="하위폴더$i"
  mkdir "$folder_name/$subfolder_name"
  ln -s "../파일$i.txt" "$folder_name/$subfolder_name/파일$i.txt"
  echo "하위 폴더 '$subfolder_name'를 생성하고 '파일$i.txt'에 대한 링크를 생성했습니다."
done
