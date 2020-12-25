#!/bin/bash

terraform output | grep rds | sed -e 's/ =/:/' | sed -e 's/"//g' |sort > ../simple-node-mysql-app-ansible/roles/node-app/defaults/main.yml

rm ../simple-node-mysql-app-ansible/hosts

terraform output |grep ec2 |cut -d\" -f2 > ../simple-node-mysql-app-ansible/hosts
