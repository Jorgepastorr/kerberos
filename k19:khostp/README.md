# khostp

Host que autentica con un servidor `kserver.edt.org`. El host tiene usuarios locales `local01..06, kuser01..06`.
Estos usuarios locales los local autentican en modo unix y los kuser autentican en kerberos.


```bash
docker run --rm --name kserver.edt.org -h kserver.edt.org --net mynet -d jorgepastorr/k19:kserver
docker run --rm --name khost.edt.org -h khost.edt.org --net mynet -it jorgepastorr/k19:khostpl
```