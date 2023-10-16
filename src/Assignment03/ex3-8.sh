#!/bin/bash

# DB 파일명
db_file="DB.txt"

# DB 파일이 존재하지 않으면 새로 작성
if [ ! -e "$db_file" ]; then
  touch "$db_file"
fi

while true; do
  clear
  echo "1. 정보 추가"
  echo "2. DB 초기화 (모든 데이터 삭제)"
  echo "3. 나가기"
  read -p "선택하실 작업을 입력하세요 (1/2/3): " choice

  case $choice in
    1)
      # 정보 추가
      read -p "팀원의 이름을 입력하세요: " name
      read -p "팀원의 생일 또는 전화번호를 입력하세요: " info
      echo "$name: $info" >> "$db_file"
      echo "정보가 DB.txt에 추가되었습니다."
      ;;
    2)
      # DB 초기화 (모든 데이터 삭제)
      > "$db_file"
      echo "DB.txt의 모든 데이터가 삭제되었습니다."
      ;;
    3)
      # 나가기
      echo "프로그램을 종료합니다."
      exit
      ;;
    *)
      echo "잘못된 선택입니다. 다시 입력하세요."
      ;;
  esac

  read -p "계속하려면 Enter 키를 누르세요..."
done
