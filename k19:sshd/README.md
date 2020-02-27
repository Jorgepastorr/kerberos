# sshd

servidor sshd que autentica con un servidor `kserver.edt.org`. El host tiene usuarios locales `local01..06, kuser01..06` que autentican mediante kerberos.


La ip de los servidores se tiene que añadir manualmente en el archivo `/etc/hosts` la ip y dominio de ldapserver y el kserver.

Ejemplo:
```bash
3.91.49.124 kserver.edt.org 
```

```bash
docker run --rm --name ldapserver.edt.org -h ldapserver.edt.org --net mynet -d jorgepastorr/ldapserver19
docker run --rm --name kserver.edt.org -h kserver.edt.org --net mynet -d jorgepastorr/k19:kserver
docker run --rm --name sshd.edt.org -h sshd.edt.org --net mynet -d jorgepastorr/k19:sshd
```