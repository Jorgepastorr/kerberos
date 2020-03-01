FROM fedora:27
LABEL autor="@jorgepastorr"
LABEL description="server kerveros"

RUN dnf -y install krb5-server krb5-workstation

RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh

WORKDIR /opt/docker
ENTRYPOINT [ "/opt/docker/startup.sh" ]