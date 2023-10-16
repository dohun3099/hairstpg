#!/bin/bash

# 사용자로부터 몸무게(kg) 입력 받기
read -p "몸무게(kg)를 입력하세요: " weight

# 사용자로부터 신장(m) 입력 받기
read -p "신장(m)를 입력하세요: " height

# BMI 계산
bmi=$(echo "scale=2; $weight / ($height * $height)" | bc)

# BMI 결과 출력
echo "계산된 BMI: $bmi"

# 비만 여부 판단
if (( $(echo "$bmi >= 18.5 && $bmi < 25" | bc -l) )); then
  echo "정상 체중입니다."
else
  echo "정상 체중이 아닙니다."
fi
