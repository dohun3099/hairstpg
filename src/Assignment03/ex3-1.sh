#!/bin/bash

# 사용자로부터 숫자 입력 받기
read -p "출력할 횟수를 입력하세요: " num

# 입력된 숫자만큼 "Hello, World!" 출력
for ((i=1; i<=num; i++)); do
  echo "Hello, World!"
done
