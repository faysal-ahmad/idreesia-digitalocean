#!/bin/bash

curl -o ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ./ngrok.zip
sudo cp ngrok /usr/bin
sudo cp ngrok.service /etc/systemd/system/
systemctl enable ngrok.service