#!/usr/bin/env sh

if [ upgrade ]; then
    UPGRADE="-e upgrade=true";
fi

ansible-playbook -i inventory.ini -u root playbook.yml --vault-password-file=~/.ansible/personal_secret.txt $UPGRADE
