#!/bin/bash

ansible-playbook 20_cephadm_bootstrap.yml
ansible-playbook 21_copy_cephadm_pub_key.yml
ansible-playbook 22_cephadm_add_host.yml    
ansible-playbook 23_cephadm_add_labels.yml  
ansible-playbook 24_cephadm_add_osd.yml 
