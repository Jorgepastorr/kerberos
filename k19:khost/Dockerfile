FROM fedora:27
LABEL autor="@jorgepastorr"
LABEL description="cliente kerveros"

RUN dnf -y install krb5-workstation passwd

RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh

WORKDIR /opt/docker
CMD [ "/opt/docker/startup.sh" ]