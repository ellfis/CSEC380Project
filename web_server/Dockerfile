############################################################
# Dockerfile to build Apache2 container images
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Evan Craska

################## BEGIN INSTALLATION ######################
# Install Apache2
# Ref: http://httpd.apache.org/docs/2.4/install.html

# Update
RUN apt-get update

# Install Apache2 package
RUN apt-get install -y apache2

##################### INSTALLATION END #####################

# Expose the webserver port
EXPOSE 80

# Put in the web files
COPY ./index.html /var/www/html/index.html
COPY ./config.php /var/www/html/config.php
COPY ./login.php /var/www/html/login.php
COPY ./action_page.php /var/www/html/action_page.php

# Start the Apache service
CMD apachectl -D FOREGROUND
