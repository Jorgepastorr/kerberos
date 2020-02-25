#!/bin/bash

cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/system-auth /etc/pam.d/

for num in {01..06}
do
    useradd local$num
    useradd kuser$num

    echo "local$num" | passwd local$num --stdin
done

users="jordi marta anna pere pau"
for user in $users
do
    useradd $user
done

# configuración sshd
ssh-keygen -A
cp /opt/docker/sshd_config /etc/ssh/

