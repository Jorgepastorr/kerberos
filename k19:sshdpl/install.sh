#!/bin/bash

for num in {01..06}
do
    useradd local$num
   #  useradd kuser$num

    echo "local$num" | passwd local$num --stdin
done

# configuración sshd
ssh-keygen -A
cp /opt/docker/sshd_config /etc/ssh/

# configuracion ldap, kerberos
authconfig --enableshadow --enablelocauthorize \
   --enableldap \
   --ldapserver='ldap.edt.org' \
   --ldapbase='dc=edt,dc=org' \
   --enablekrb5 --krb5kdc='kserver.edt.org' \
   --krb5adminserver='kserver.edt.org' --krb5realm='EDT.ORG' \
   --enablemkhomedir \
   --updateall

cp /opt/docker/krb5.conf /etc/krb5.conf

# cp /opt/docker/system-auth /etc/pam.d/system-auth
# cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml

# echo -e "admin\naddprinc -randkey host/sshd.edt.org\nktadd host/sshd.edt.org\nquit\n" | /usr/bin/kadmin -p admin

kadmin -p admin -w admin -q "addprinc -randkey host/sshd.edt.org"
kadmin -p admin -w admin -q "ktadd host/sshd.edt.org"