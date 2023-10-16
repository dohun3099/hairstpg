#!/bin/bash

# DB 파일명
db_file="DB.txt"

# DB 파일이 존재하지 않으면 새로 작성
if [ ! -e "$db_file" ]; then
  touch "$db_file"
fi

if [ -z "$1" ]; then
  echo "사용법: $0 <텍스트>"
  exit 1
fi

search_text="$1"

while IFS= read -r line; do
  if [[ "$line" == *"$search_text"* ]]; then
    echo "검색 결과: $line"
  fi
done < "$db_file"
