import subprocess
import os

# Nexus Repository 정보
nexus_url = "http://10.130.39.42:8081/repository/python-pip/"
username = "admin"
password = "P@ssw0rd"

# twine을 사용하여 pip-package 디렉토리의 파일을 업로드
try:
    subprocess.run([
        'twine', 'upload',
        '--repository-url', nexus_url,
        '-u', username,
        '-p', password,
        'pip-package/*'
    ], check=False)
    print("패키지가 성공적으로 업로드되었습니다.")
except subprocess.CalledProcessError as e:
    print(f"패키지 업로드 실패: {e}")
