# sshdpl

Host que autentica con un servidor `ldapserver.edt.org` y `kserver.edt.org`. El host tiene usuarios locales `local01..06`.
Los usuarios ldap-kerberos son `pere, jordi, anna, ..., user01..06 ` y pueden conectarse con un login normal de `su` y tambien por ssh.

```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net mynet -d jorgepastorr/ldapserver19
docker run --rm --name kserver.edt.org -h kserver.edt.org --net mynet -d jorgepastorr/k19:kserver
docker run --rm --name sshd.edt.org -h sshd.edt.org --net mynet -d jorgepastorr/k19:khostpl
```