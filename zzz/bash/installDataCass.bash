#!/bin/bash
USER=hubert@sweetyhigh.com
PWD=Rapture4koala
echo "deb https://${USER}:${PWD}%40debian.datastax.com/enterprise stable main" | sudo tee -a /etc/apt/sources.list.d/datastax.sources.list
curl -L https://debian.datastax.com/debian/repo_key | sudo apt-key add -
sudo apt-get update
#sudo apt-get -y install dse-full