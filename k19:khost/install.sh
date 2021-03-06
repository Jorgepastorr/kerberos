#!/bin/bash

cp /opt/docker/krb5.conf /etc/krb5.conf

for num in {01..06}
do
    useradd local$num
    useradd kuser$num

    echo "local$num" | passwd local$num --stdin
done
