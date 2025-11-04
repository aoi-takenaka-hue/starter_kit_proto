#! /bin/bash

today=$(date +%Y年%m月%d日)
echo "今日は${today}です"

fruits=(
  バナナ
  りんご
  モンキー
)

echo "果物は ${fruits[@]} "
echo "最初の果物は ${fruits[0]} "
echo "果物の数 ${#fruits[@]} "
echo "果物は ${fruits[*]} "