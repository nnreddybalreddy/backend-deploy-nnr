#!/bin/bash
component=$1
environment=$2
app_Version=$3
sudo dnf install ansible -y
pip3.9 install botocore boto3
#ansible-pull -i localhost, -U https://github.com/NarendraNReddy/expense-ansible-roles-tf.git main.yaml -e component=$component -e env=$environment

#ansible-pull -i localhost, -U https://github.com/NarendraNReddy1/expense-ansible-roles-tf.git main.yaml -e component=$component -e env=$environment -e appVersion=$app_Version
ansible-pull -i localhost, -U https://github.com/NarendraNReddy1/expense-ansible-roles-tf-jenkins.git main.yaml -e component=$component -e env=$environment -e appVersion=$app_Version