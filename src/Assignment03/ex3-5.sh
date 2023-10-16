#!/bin/bash

# 내부 함수로 리눅스 명령어 실행
run_linux_command() {
  # 사용법을 표시하는 도움말 메시지
  help_message="사용법: $0 <command> [options]\n예: $0 ls -l"

  # 명령어가 전달되지 않았을 경우 도움말 메시지 출력
  if [ $# -eq 0 ]; then
    echo -e "명령어를 지정하세요.\n$help_message"
    return
  fi

  # 첫 번째 인자로 받은 명령어를 실행
  command="$1"
  shift # 첫 번째 인자 삭제

  # 명령어가 존재하는지 확인
  if ! command -v "$command" &> /dev/null; then
    echo "오류: '$command' 명령어를 찾을 수 없습니다."
    return
  fi

  # 명령어 실행
  "$command" "$@"
}

# 사용법 표시
if [ $# -eq 0 ]; then
  echo "내부 함수로 리눅스 명령어 실행"
  echo "사용법: $0 <command> [options]"
  echo "예: $0 ls -l"
  exit
fi

# 내부 함수 실행
run_linux_command "$@"
