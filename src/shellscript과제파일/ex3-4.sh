#!/bin/sh

echo "리눅스가 재미있나요? (yes / no)"
read answer

case "$answer" in
  "Y"|"yes"|"YES"|"Yes")
    echo "리눅스를 즐기고 계시네요!"
    ;;
  "nonono"|"N"| "no"|"NO"|"No")
    echo "리눅스가 어렵게 느껴질 수 있어요. 계속 연습해 보세요!"
    ;;
  *)
    echo "yes or no로 입력해 주세요."
    ;;
esac

