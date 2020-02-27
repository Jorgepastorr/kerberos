# khostpl

Host que autentica con un servidor `ldapserver.edt.org` y `kserver.edt.org`. El host tiene usuarios locales `local01..06`.
Los usuarios ldap-kerberos son `pere, jordi, anna, ..., user01..06 ` y pueden conectarse con un login normal de `su`

<<<<<<< HEAD
Ejemplo:
```bash
3.91.49.124 kserver.edt.org ldap.edt.org
```
=======
>>>>>>> 9f8e20cffe84a27cd6d5865d79ae08832c2621c8

```bash
docker run --rm --name ldapserver.edt.org -h ldapserver.edt.org --net mynet -d jorgepastorr/ldapserver19
docker run --rm --name kserver.edt.org -h kserver.edt.org --net mynet -d jorgepastorr/k19:kserver
docker run --rm --name khost.edt.org -h khost.edt.org --net mynet -it jorgepastorr/k19:khostpl
```