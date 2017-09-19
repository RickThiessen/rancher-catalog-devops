FROM debian:latest

# Maintainer information
MAINTAINER dsledge@appriss.com

# Install required packages and clean up
RUN apt-get update; apt-get -y install gcc make openssl libssl-dev libexpat1-dev expat wget tar; apt-get clean; apt-get autoclean; apt-get autoremove; mkdir /workspace; cd /workspace; useradd unbound; wget https://unbound.net/downloads/unbound-latest.tar.gz; tar -zxvf unbound-latest.tar.gz; cd unbound-*; ./configure && make && make install; mkdir /etc/unbound;

# Set the default workspace
WORKDIR /workspace

# Add bash script to setup unbound
ADD unbound.sh /workspace/

# Execute the unbound.sh script
CMD ["/workspace/unbound.sh"]
