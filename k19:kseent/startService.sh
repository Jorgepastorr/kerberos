#!bin/bash

# iniciar servicio tickets
/usr/sbin/krb5kdc
# iniciar servicio de server
/usr/sbin/kadmind -nofork
