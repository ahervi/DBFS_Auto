#!/bin/bash
sudo apt update
sudo apt install auditd -y
if [[ ! $(auditctl -l | grep /usr/bin/docker) ]]; then
       echo "Writing to rules"
       echo "-w /usr/bin/docker -k docker" >> /etc/audit/rules.d/audit.rules
fi
service auditd restart
exit
