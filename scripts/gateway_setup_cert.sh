#!/bin/bash

sudo apt update
sudo apt install snapd
sudo snap install core
sudo snap refresh core

sudo snap install --classic certbot

sudo ln -s /snap/bin/certbot /usr/bin/certbot

sudo certbot --nginx -d tildenest.space -d www.tildenest.space --cert-name tildenest.space

nginx -s reload
