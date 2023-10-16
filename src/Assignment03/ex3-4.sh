#!/bin/bash

# 사용자로부터 "yes" 또는 "no" 입력 받기 (대소문자 구분 없이)
read -p "리눅스가 재밌나요? (yes / no): " response

# 입력값을 모두 소문자로 변환
response_lower=$(echo "$response" | tr '[:upper:]' '[:lower:]')

# 입력값이 유효한지 확인
if [[ "$response_lower" == *yes* || "$response_lower" == "y" ]]; then
  echo "멋져요! 리눅스는 정말 재밌습니다."
elif [[ "$response_lower" == *no* || "$response_lower" == "n" ]]; then
  echo "아쉽군요. 리눅스는 강력하고 다양한 운영 체제입니다."
else
  echo "유효하지 않은 입력입니다. 'yes' 또는 'no'를 입력하세요."
fi
