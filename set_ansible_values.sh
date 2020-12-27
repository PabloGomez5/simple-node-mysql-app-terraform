#!/bin/bash

echo "---" > ../simple-node-mysql-app-ansible/roles/node-app/defaults/main.yml
echo "http_port: 80" >> ../simple-node-mysql-app-ansible/roles/node-app/defaults/main.yml

terraform output | grep rds | sed -e 's/ =/:/' | sed -e 's/"//g' |sed -e 's/:3306//' |sort >> ../simple-node-mysql-app-ansible/roles/node-app/defaults/main.yml

rm -f ../simple-node-mysql-app-ansible/hosts

echo "[all]" > ../simple-node-mysql-app-ansible/hosts
terraform output |grep ec2 |cut -d\" -f2 > ../simple-node-mysql-app-ansible/hosts
