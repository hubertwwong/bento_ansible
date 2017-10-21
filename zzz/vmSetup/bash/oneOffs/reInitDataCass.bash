#!/bin/bash
sudo service dse stop
sudo rm -rf /var/lib/cassandra/*
sudo service dse start