#!/bin/bash

echo ">>> bootstrapAnsible.sh >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"


# vagrant path
VMSETUP_PATH=/vagrant/zzz/vmSetup

# if not root, run as root
# if (( $EUID != 0 )); then
#     sudo $VMSETUP_PATH/ansible/bootstrapAnsible.sh
#     exit
# fi

# debug
# i think this might work.

ls -al

# Username debugging.
_user="$(id -u -n)"
_uid="$(id -u)"
echo "User name : $_user"
echo "User name ID (UID) : $_uid"

# run ansible scripts
ansible-playbook site.yml