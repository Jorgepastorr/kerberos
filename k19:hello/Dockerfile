FROM fedora:27
LABEL autor="@jorgepastorr"
LABEL description="server kerveros"

RUN dnf -y install httpd nmap

RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh

EXPOSE 80

WORKDIR /opt/docker
CMD [ "/opt/docker/startup.sh" ]