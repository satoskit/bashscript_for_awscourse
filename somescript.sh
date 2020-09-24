#!/bin/bash

if [ $(whoami) != root ]; then
  echo "You are running as $(whoami). Please run as a root or sudo."
  exit
fi

apt install nginx -y

myname="Satomi"

sed -i "14 s/Welcome to nginx/$myname/" /var/www/html/index.nginx-debian.html
