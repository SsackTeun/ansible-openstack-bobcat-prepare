#!/bin/bash

# 확인 및 설정
TARGET_DIR="/etc/kolla/"
OLD_VALUE="658b788c-4b23-11ef-a0a8-0050568259a4"
NEW_VALUE="e3b8dec0-4d49-11ef-a83c-0050568259a4"

# 디렉토리 존재 확인
if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Target directory $TARGET_DIR does not exist."
    exit 1
fi

# 문자열 대치
find "$TARGET_DIR" -type f | while read -r file; do
    # 파일의 내용을 확인하고 문자열을 대치
    if grep -q "$OLD_VALUE" "$file"; then
        echo "Replacing '$OLD_VALUE' with '$NEW_VALUE' in $file"
        sed -i "s/$OLD_VALUE/$NEW_VALUE/g" "$file"
    fi
done

echo "Replacement completed."

