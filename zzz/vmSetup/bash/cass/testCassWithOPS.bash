#!/bin/bash

# oracle java
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

sudo apt-get install -y oracle-java8-installer

# open java
#sudo apt-get update
#sudo apt-get -y install default-jdk

# cass
USER=hubertwwong@gmail.com
PWD=1Password
echo "deb https://${USER}:${PWD}%40debian.datastax.com/enterprise stable main" | sudo tee -a /etc/apt/sources.list.d/datastax.sources.list
curl -L https://debian.datastax.com/debian/repo_key | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install dse-full
#sudo service dse start

# opscenter
sudo apt-get -y install opscenter
#sudo service opscenterd start

# installing apache to check ports
sudo apt-get install -y apache2

# dstax agent
sudo apt-get install -y datastax-agent

# ops 
curl --user hubertwwong@gmail.com:1Password -L http://downloads.datastax.com/enterprise/opscenter.tar.gz | tar xz
#https://docs.datastax.com/en/latest-opscenter/opsc/install/opscInstallTar_t.html
