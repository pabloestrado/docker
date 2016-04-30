FROM debian:8

MAINTAINER Pavlo Romaniuk pabloestrado@gmail.com

# Install jinja2 cli processing tool
RUN apt-get update
RUN apt-get -f -y install supervisor nano mc python-pip
RUN pip install envtpl

RUN  apt-get -f -y remove python-pip && apt-get -f -y autoremove


ADD tpl /usr/local/bin/tpl
ADD entrypoint.sh /entrypoint.sh
ADD service.conf.tpl /etc/supervisor/conf.d/service.conf.tpl

RUN chmod 755 /usr/local/bin/tpl && chmod 755 /entrypoint.sh

RUN useradd nonpriv 			# Add default non-privileged user for running services

# Paste initial supervisor variables here
ENV SV_NAME service 			# Name of service
ENV SV_CMD /bin/bash 			# Path to service executable
ENV SV_PARAMS "" 				# Run service with specified params
ENV SV_DIR /tmp					# Run in directory
ENV SV_LOG /var/log/service.log	# Log path
ENV SV_USER nonpriv				# Run service as user



# Create common supervisor service 

#RUN tpl /etc/supervisor/conf.d/service.conf

ENV PS1 "$(tput setaf 2)[Docker]$(tput sgr0) $(tput setaf 1)\u@\h $(tput sgr0) \w$ "


ENTRYPOINT /entrypoint.sh