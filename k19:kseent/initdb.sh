#!/bin/bash

# Configuracion kerberos
cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf

# acls de acceso al server kerberos
cp /opt/docker/kadm5.acl /var/kerberos/krb5kdc/kadm5.acl

# crear base de datos de principals
kdb5_util create -s -P masterkey