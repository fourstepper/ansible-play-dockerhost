#!/usr/bin/env bash

if [ $upgrade ]; then
    UPGRADE="-e upgrade=true";
fi

# ansible-playbook -i inventory.ini -u root playbook.yml --vault-password-file=~/.ansible/personal_secret.txt $UPGRADE
ansible-playbook -i inventory.ini -u root playbook.yml --vault-password-file=<(op read --account my.1password.com "op://Private/Ansible vault - Personal/password") $UPGRADE
