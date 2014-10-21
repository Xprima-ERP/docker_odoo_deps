FROM ubuntu:14.04
MAINTAINER Sebastien Delisle <seb0del@gmail.com>

RUN echo "deb http://apt.anybox.fr/openerp common main" >> /etc/apt/sources.list
RUN apt-get update
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y --force-yes openerp-server-system-build-deps
