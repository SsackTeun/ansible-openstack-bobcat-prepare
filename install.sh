#!/bin/bash
python3 -m venv venv/
. venv/bin/activate
echo ". venv/bin/activate" > activate

pip install -r requirements.txt

# pip 업그레이드
pip install -U pip

# ansible 설치
#pip install 'ansible-core>=2.14,<2.16'
pip install 'ansible-core>=2.14,<2.16'

# yum 패키지 설치
dnf install -y gcc git python3-libselinux libffi-devel openssl-devel openssl net-tools traceroute vim unzip iputils sshpass python3-devel 

# ansible collection
ansible-galaxy collection install containers.podman --force

git clone https://github.com/tomasr/molokai.git ./molokai
mkdir ~/.vim/colors
cp ./molokai/colors/molokai.vim ~/.vim/colors/
echo  "colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
" >> ~/.vimrc
rm -rf molokai/
