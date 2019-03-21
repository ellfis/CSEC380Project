############################################################
# Dockerfile to build MySQL container images
# Based on Ubuntu
############################################################

# Set the base image to official mysql
FROM mysql

# File Author / Maintainer
MAINTAINER Evan Craska

ENV MYSQL_ROOT_PASS pass

ENV MYSQL_DATABASE garbage

COPY ./scripts/ /docker-entrypoint-initdb.d/
