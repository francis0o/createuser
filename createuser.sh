#!/bin/bash
#maintainence by Marucs.tsai
export PATH=$PATH:/usr/sbin/:/usr/bin
#username=$1
username=fsuser
# Create User Account by RedHat/CentOS/ubuntu
useradd -m $username
echo "$username:1qaz@WSX" |chpasswd
mkdir -p /home/$username/.ssh
chmod 700 /home/$username/.ssh && chown $username:$username /home/$username/.ssh
cp ./authorized_keys /home/$username/.ssh/authorized_keys
chmod 700 /home/$username/.ssh/authorized_keys
chown $username:$username /home/$username/.ssh/authorized_keys
