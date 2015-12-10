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

# redirect logs to stdout
RUN ln -sf /proc/self/fd/1 /var/log/apache2/access.log
RUN ln -sf /proc/self/fd/1 /var/log/apache2/error.log

COPY ./httpd-foreground /usr/local/bin/
CMD [ "httpd-foreground" ]

EXPOSE 80