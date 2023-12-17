#!/bin/bash
sudo systemctl daemon-reload
sudo systemctl start node_exporter.service
sudo systemctl restart prometheus.service
sudo systemctl enable prometheus
sudo systemctl start prometheus
sudo systemctl status prometheus
