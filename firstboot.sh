#!/bin/bash

# Change passwords. More info here: https://stackoverflow.com/questions/714915/using-the-passwd-command-from-within-a-shell-script
echo 'root:raspberry' | chpasswd
echo 'pi:raspberry' | chpasswd

# Permit root login. More info here: https://raspberrypi.stackexchange.com/questions/48056/how-to-login-as-root-remotely
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

# Enable SSH. More info here: https://www.raspberrypi.org/documentation/remote-access/ssh/
systemctl enable ssh
systemctl start ssh

# Setting profile configuration. More info here: https://www.tecmint.com/understanding-shell-initialization-files-and-user-profiles-linux/
echo "alias ls='ls -al --color=auto'" >> /home/pi/.profile
echo "alias ls='ls -al --color=auto'" >> /root/.profile
