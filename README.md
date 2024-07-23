### 1. pre_tasks.yml 
- 로컬 호스트와 prepare(inventory host) 사이의 ssh 연결 자동화

### 2. prepare.yml - Main Task 1 - 외부망에서 꼭 작업해야하는 tasks 를 수행
- repository download
- container image(namespace:kolla 🐨) download
- python-package (미완성)

### 3. run_install_requirements.sh - dnf package 의존성
- bash run_install_requirements.sh

### 4. requirements.txt - python pip 의존성
- pip install -r requirements.txt

