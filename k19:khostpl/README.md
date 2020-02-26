# khostpl

Host que autentica con un servidor `ldapserver.edt.org` y `kserver.edt.org`. El host tiene usuarios locales `local01..06`.
Los usuarios ldap-kerberos son `pere, jordi, anna, ..., user01..06 ` y pueden conectarse con un login normal de `su`


```bash
docker run --rm --name ldapserver.edt.org -h ldapserver.edt.org --net mynet -d jorgepastorr/ldapserver:19group
docker run --rm --name kserver.edt.org -h kserver.edt.org --net mynet -d jorgepastorr/k19:kserver
docker run --rm --name khost.edt.org -h khost.edt.org --net mynet -it jorgepastorr/k19:khostpl
```