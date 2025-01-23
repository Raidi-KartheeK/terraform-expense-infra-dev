#!/bin/bash

component=$1
enivronment=$2
echo "component: $component, Enivronment: $enivronment"
dnf install ansible -y
ansible-pull -i localhost, -u https://github.com/Raidi13/expense-ansible-roles-tf.git main.yaml -e component=$component -e enivronment=$enivronment
