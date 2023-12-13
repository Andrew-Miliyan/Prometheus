#!/bin/bash
sudo systemctl enable prometheus
sudo systemctl start prometheus
sudo systemctl status prometheus
