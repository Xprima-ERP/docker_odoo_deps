FROM ubuntu:14.04
MAINTAINER Sebastien Delisle <seb0del@gmail.com>

RUN echo "deb http://apt.anybox.fr/openerp common main" >> /etc/apt/sources.list
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes openerp-server-system-build-deps postgresql-client-common postgresql-client-9.3
