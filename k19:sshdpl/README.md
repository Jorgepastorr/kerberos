# sshdpl

Host que autentica con un servidor `ldapserver.edt.org` y `kserver.edt.org`. El host tiene usuarios locales `local01..06`.
Los usuarios ldap-kerberos son `pere, jordi, anna, ..., user01..06 ` y pueden conectarse con un login normal de `su` y tambien por ssh.

La ip de los servidores se tiene que añadir manualmente en el archivo `/etc/hosts` la ip y dominio de ldapserver y el kserver.

Ejemplo:
```bash
3.91.49.124 kserver.edt.org ldapserver.edt.org
```

```bash
docker run --rm --name ldapserver.edt.org -h ldapserver.edt.org --net mynet -d jorgepastorr/ldapserver19
docker run --rm --name kserver.edt.org -h kserver.edt.org --net mynet -d jorgepastorr/k19:kserver
docker run --rm --name sshd.edt.org -h sshd.edt.org --net mynet -d jorgepastorr/k19:khostpl
```