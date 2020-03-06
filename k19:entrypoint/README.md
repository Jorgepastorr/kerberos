# kserver

Servidor kerveros con usuarios `kuser01..06, user01..06, pere, marta, jordi...`


```bash
docker run --rm --name kserver.edt.org -h kserver.edt.org -v krb5-data:/var/kerberos --net mynet -d jorgepastorr/k19:kserver
docker run --rm --name kserver.edt.org -h kserver.edt.org -v krb5-data:/var/kerberos --net mynet -d jorgepastorr/k19:kserver [initdb|initdbedt|kadmin]
```

Entrypoint kserver
Modificar l’script startup.sh del servidor Kerberos per actuar com a entrypoint amb els
següents arguments possibles:

- res : ​ engegar el servei kerberos usant la base de dades existent actualment (el volum).
- initdb : ​ inicialitza la base de dades.¡ i engega el servei.
- initdbedt : ​ inicialitza la base de dades de kerberos amb els principals per defecte i engega el servei.
- kadmin ​ : executa kadmin-local passant-li la resta de parametres que es rebin en l’execució del container.