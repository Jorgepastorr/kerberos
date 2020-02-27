Se tiene que añadir manualmente en el archivo `/etc/hosts` la ip y dominio de ldapserver y el kserver.

Ejemplo:
```bash
3.91.49.124 kserver.edt.org ldap.edt.org
```

```bash
docker run --rm --name khost.edt.org -h khost.edt.org -it jorgepastorr/k19:khostpl
```