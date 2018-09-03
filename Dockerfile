FROM debian:stretch
MAINTAINER Sylther sylvain@thery.org

ENV LANG C.UTF-8

RUN apt -y update
RUN apt install -y gnupg apt-transport-https ca-certificates

RUN echo "deb http://qgis.org/debian-ltr stretch main" >> /etc/apt/sources.list
RUN gpg --keyserver keyserver.ubuntu.com --recv CAEB3DC3BDF7FB45
RUN gpg --export --armor CAEB3DC3BDF7FB45 | apt-key add -
RUN apt update && \
    apt install -y qgis python-pip saga qgis-server python-qgis qgis-provider-grass \
    locales locales-all && \
    rm -rf /var/lib/apt/lists/* && \
    pip install tailer &&\ 
    pip install xlwt
RUN apt -y upgrade 
    
#--no-install-recommends

#locales
ENV LC_ALL fr_FR.UTF-8
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR.UTF-8

# Called when the Docker image is started in the container
ADD start.sh /start.sh
RUN chmod 0755 /start.sh

CMD /start.sh
