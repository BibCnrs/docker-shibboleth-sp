FROM debian:jessie

MAINTAINER BibCNRS <bibcnrs@inist.fr>

RUN apt-get update \
  && apt-get -y install apache2 libapache2-mod-shib2 \
  && apt-get clean

RUN a2enmod shib2

# generate ssl keys to be able to start the shibd service
# but these keys have to be replaced by officials ones at
# configuration step
RUN cd /etc/shibboleth/ && shib-keygen

COPY ./httpd-foreground /usr/local/bin/

EXPOSE 80

CMD ["httpd-foreground"]