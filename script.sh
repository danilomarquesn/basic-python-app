#!/bin/bash
sudo apt-get update -y
sudo apt-get install git ansible -y
git clone https://github.com/danilomarquesn/basic-python-app.git /tmp/python-application/
cd /tmp/python-application/
ansible-playbook playbook.yaml