#!/bin/bash
cd /tmp
rm api
curl -LO https://github.com/jusan-singularity/track-devops-systemd-api/releases/download/v0.1/api
chmod 755 api

git init
git clone https://github.com/kzhanbolat/api.git
mv api.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start api
sudo systemctl status api
