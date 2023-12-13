#!/bin/bash
sudo ufw allow 9090/tcp  
sudo apt-get install curl
curl  https://192.168.209.24:9090 #  <your_server_ip>:9090 
