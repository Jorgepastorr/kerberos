#!/bin/bash

for num in {01..06}
do
    useradd local$num
   #  useradd kuser$num

    echo "local$num" | passwd local$num --stdin
done


authconfig --enableshadow --enablelocauthorize \
   --enableldap \
<<<<<<< HEAD
   --ldapserver='ldap.edt.org' \
=======
   --ldapserver='ldapserver.edt.org' \
>>>>>>> 9f8e20cffe84a27cd6d5865d79ae08832c2621c8
   --ldapbase='dc=edt,dc=org' \
   --enablekrb5 --krb5kdc='kserver.edt.org' \
   --krb5adminserver='kserver.edt.org' --krb5realm='EDT.ORG' \
   --enablemkhomedir \
   --updateall

cp /opt/docker/krb5.conf /etc/krb5.conf

# cp /opt/docker/system-auth /etc/pam.d/system-auth
# cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml
