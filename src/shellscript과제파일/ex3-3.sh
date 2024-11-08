#!/bin/sh

weight=$1
height=$2

height_in_m=$(echo "$height / 100" | bc -l)

bmi=$(echo "$weight / ($height_in_m * $height_in_m)" | bc -l)

if [ $(echo "$bmi < 18.5" | bc -l) -eq 1 ]; then
  echo "저체중입니다."
elif [ $(echo "$bmi >= 18.5 && $bmi < 23" | bc -l) -eq 1 ]; then
  echo "정상 체중입니다."
else
  echo "과체중입니다."
fi

