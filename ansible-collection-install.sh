#!/bin/bash

# 파일에서 컬렉션 목록을 읽어서 설치하는 스크립트
input="installed_collections.txt"
while IFS= read -r line
do
  # 컬렉션 이름 추출
  collection=$(echo $line | awk '{print $1}')
  version=$(echo $line | awk '{print $2}')
  # 컬렉션 설치
  if [ -z "$version" ]; then
    ansible-galaxy collection install "$collection"
  else
    ansible-galaxy collection install "$collection:$version"
  fi
done < "$input"

