## Playbook 
### 00_ssh_keygen.yml
* Function : RSA KEY 를 생성하여, 노드에 복사하여 제어노드에 패스워드 없이 접근가능하게 하는 목적
* Usage : `ansible-playbook -u root -k 00_ssh_keygen.yml`
* required: ssh connection password

### 01_reposync.yml
* Function : repo를 생성 후, reposync 로 다운받음
* Usage : `ansible-playbook 01_reposync.yml`
* required : `group_vars/repository.yml` 을 수정
