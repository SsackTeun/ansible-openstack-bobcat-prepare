#!/bin/bash
# 1. dnf(yum) 패키지 설치
dnf install -y gcc git python3-libselinux libffi-devel openssl-devel openssl net-tools traceroute vim unzip iputils sshpass python3-devel

# 2. python 가상환경 생성 (파이썬 패키지를 프로젝트 단위로 관리가 가능하기 때문에 사용)
python3 -m venv venv/ # 가상환경 생성
. venv/bin/activate  # 가상환경 활성화 : deactivte 입력시 빠져나옴

# 3. pip 모듈 업그레이드
pip install -U pip

# 4. 파이썬 패키지 설치
pip install -r requirements.txt

# 5. 앤서블 설치
pip install 'ansible-core>=2.14,<2.16'

# 6. 앤서블 컨테이너 모듈 강제 설치 (모듈이 설치가 되어 있음에도, 없다고 에러날 때가 있어 넣어둠)
ansible-galaxy collection install containers.podman --force

# 7. vim 테마 설치(선택)
git clone https://github.com/tomasr/molokai.git ./molokai
mkdir -p /root/.vim/colors/
cp ./molokai/colors/molokai.vim /root/.vim/colors/
echo  "colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
" >> ~/.vimrc
rm -rf molokai/
