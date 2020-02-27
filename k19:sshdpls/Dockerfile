FROM fedora:27

LABEL version="0.1"
LABEL autor="@jorgepastorr"
LABEL subject="k19:khostpl"

RUN dnf install -y passwd nss-pam-ldapd authconfig \
                pam_krb5 krb5-workstation  \
                samba-client cifs-utils pam_mount \
                openssh openssh-server

RUN mkdir /opt/docker
WORKDIR /opt/docker/

COPY * /opt/docker/

RUN chmod +x /opt/docker/startup.sh

CMD /opt/docker/startup.sh