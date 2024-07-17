## Playbook 
### 00_ssh_keygen.yml
* Function : RSA KEY 를 생성하여, 노드에 복사하여 제어노드에 패스워드 없이 접근가능하게 하는 목적
* Usage : `ansible-playbook -u root -k 00_ssh_keygen.yml`
* required: ssh connection password

### 01_reposync.yml
* Function : repo를 생성 후, reposync 로 다운받음
* Usage : 
* 1. `ansible-playbook 01_reposync.yml`
* 2. `group_vars/repository.yml` 을 수정하면, /etc/yum.repos.d/ 에 생성되는 저장소를 추가하거나 제거할 수 있음

### 02_1_make_image_list_and_pull.yml
* Function : group_vars/registry.yml & kolla_image tag 에 해당하는모든 이미지 리스트를 저장하고 pull 
* Usage :
* 1. `ansible-playbook 02_1_make_image_list_and_pull.yml`
* 2. `group_vars/registry.yml 수정

### 02_2_image_save_to_file.yml
* Function : 해당 노드에 있는 이미지 전부 file 로 저장
* 1. `ansible-playbook 02_2_image_save_to_file.yml`   
 
