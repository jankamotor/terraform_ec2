#!/bin/bash
echo "*** Installing apache2"
sudo apt update -y
sudo apt upgrade -y
sudo apt install apache2 -y
sudo systemctl apache2
sudo systemctl enable apache2
echo "*** Completed Installing apache2"
