FROM ubuntu:14.04
MAINTAINER Sebastien Delisle <seb0del@gmail.com>

RUN echo "deb http://apt.anybox.fr/openerp common main" >> /etc/apt/sources.list
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes openerp-server-system-build-deps postgresql-client-common postgresql-client-9.3 wget

RUN wget http://download.gna.org/wkhtmltopdf/0.12/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb
RUN dpkg -i wkhtmltox-0.12.1_linux-trusty-amd64.deb
RUN cp /usr/local/bin/wkhtmltopdf /usr/bin
RUN cp /usr/local/bin/wkhtmltoimage /usr/bin
