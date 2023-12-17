#!/bin/bash
sudo systemctl enable prometheus
sudo systemctl daemon-reload
sudo systemctl start node_exporter.service
sudo systemctl restart prometheus.service
sudo systemctl start prometheus
sudo systemctl status prometheus
