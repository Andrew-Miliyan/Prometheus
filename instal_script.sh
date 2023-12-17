#!/bin/bash

## Update System Packages
sudo apt update

## Create a System User for Prometheus
sudo groupadd --system prometheus
sudo useradd -s /sbin/nologin --system -g prometheus prometheus

## Create Directories for Prometheus
sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus

## Download Prometheus and Extract Files
wget https://github.com/prometheus/prometheus/releases/download/v2.43.0/prometheus-2.43.0.linux-amd64.tar.gz ##
tar vxf prometheus*.tar.gz

 ## Navigate to the Prometheus Directory
cd prometheus*/


## Configuring Prometheus


##Configuring Prometheus
sudo mv prometheus /usr/local/bin
sudo mv promtool /usr/local/bin
sudo chown prometheus:prometheus /usr/local/bin/prometheus
sudo chown prometheus:prometheus /usr/local/bin/promtool

## Move the Configuration Files & Set Owner
sudo mv consoles /etc/prometheus
sudo mv console_libraries /etc/prometheus
sudo mv prometheus.yml /etc/prometheus
sudo chown prometheus:prometheus /etc/prometheus
sudo chown -R prometheus:prometheus /etc/prometheus/consoles
sudo chown -R prometheus:prometheus /etc/prometheus/console_libraries
sudo chown -R prometheus:prometheus /var/lib/prometheus
sudo mv prometheus.service /etc/systemd/system  
sudo wget https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-amd64.tar.gz
sudo useradd -M -r -s /sbin/nologin node_exporter
sudo mv -f node_exporter.service /etc/systemd/system
sudo mv -f prometheus.yml /etc/prometheus 
sudo systemctl start node_exporter.service
sudo systemctl start node_exporter.service
sudo systemctl restart prometheus.service
sudo systemctl daemon-reload
