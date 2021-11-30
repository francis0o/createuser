#!/bin/bash
#maintainence by Marucs.tsai

username=$1

# Create User Account by RedHat(CentOS)
/usr/sbin/useradd $username
mkdir -p /home/$username/.ssh
chmod 700 /home/$username/.ssh && chown $username:$username /home/$username/.ssh
/usr/bin/cp ./authorized_keys /home/$username/.ssh/authorized_keys
/usr/bin/chmod 700 /home/$username/.ssh/authorized_keys
chown $username:$username /home/$username/.ssh/authorized_keys
