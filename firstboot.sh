#!/bin/bash

echo 'root:reyes' | chpasswd
echo 'pi:reyes' | chpasswd

echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
systemctl enable ssh
systemctl start ssh

echo "alias ls='ls -al --color=auto'" >> /home/pi/.profile
echo "alias ls='ls -al --color=auto'" >> /root/.profile
