#!/bin/bash

# crear usuarios
kadmin.local -q "addprinc -pw admin admin"
for num in {01..08}
do
    # usuarios solo kerberos
    kadmin.local -q "addprinc -pw kuser$num kuser$num"
    # usuarios ldap
    kadmin.local -q "addprinc -pw kuser$num user$num"
done

users="jordi marta anna pere pau"
for user in $users
do
    kadmin.local -q "addprinc -pw k$user $user"
done