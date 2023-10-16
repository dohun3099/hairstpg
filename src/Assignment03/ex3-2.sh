#!/bin/bash

# 사용자로부터 두 숫자 입력 받기
read -p "첫 번째 숫자를 입력하세요: " num1
read -p "두 번째 숫자를 입력하세요: " num2

# 사용자로부터 연산자 입력 받기
read -p "덧셈 (+) 또는 뺄셈 (-) 연산을 선택하세요: " operator

# 입력된 연산자에 따라 계산 수행
if [ "$operator" = "+" ]; then
  result=$((num1 + num2))
  operator_text="덧셈"
elif [ "$operator" = "-" ]; then
  result=$((num1 - num2))
  operator_text="뺄셈"
else
  echo "유효하지 않은 연산자입니다."
  exit 1
fi

# 결과 출력
echo "$num1 $operator_text $num2 = $result"
