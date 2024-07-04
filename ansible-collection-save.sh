#!/bin/bash
ansible-galaxy collection list | grep -E '^(Name|community\.|ansible\.|other\.prefix\.)' > installed_collections.txt

