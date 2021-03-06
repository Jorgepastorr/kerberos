#!/bin/bash

# Configuracion kerberos
cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf


case $1 in
    "initdb") 
        bash /opt/docker/initdb.sh 
        cp /opt/docker/kadm5.acl /var/kerberos/krb5kdc/kadm5.acl;;
    "initdbedt") 
        bash /opt/docker/initdb.sh
        bash /opt/docker/createUsers.sh
        cp /opt/docker/kadm5.acl /var/kerberos/krb5kdc/kadm5.acl;;
    "kadmin") 
        shift
        kadmin.local "$@" ;;
    # 4) echo " cuatro " ;;
    # *) echo "opcion incorrecta " ;;
esac

# iniciar servicio tickets
/usr/sbin/krb5kdc
# iniciar servicio de server
/usr/sbin/kadmind -nofork

