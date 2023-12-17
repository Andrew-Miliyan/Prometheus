#!/bin/bash
sudo ufw allow 9090/tcp  
sudo apt-get install curl
curl  https://127.0.0.1:9090 #  <your_server_ip>:9090 