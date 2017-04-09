#!/bin/bash
# By Jakub Burzyński 2017
# Quickly setup basic set of software after fresh installation.


# Make sure this script is not run with sudo
if [ $(id -u) -eq 0 ]
then
    echo "ERROR: This script should not be run as sudo or root."
    exit
fi

#Generate SSH key if it doesn't exist
if [ ! -r "$HOME/.ssh/id_rsa" ]
then
    ssh-keygen -N '' -t rsa -f ~/.ssh/id_rsa
    ssh-add ~/.ssh/id_rsa
fi


# Update and upgrade
sudo apt-get update -y

# Install useful stuff
sudo apt-get install -y git             # control version system
sudo apt-get install -y subversion      # another CVS
sudo apt-get install -y vim             # the best in-terminal editor

sudo apt-get install -y sqlitebroweser  # sql browser GUI
sudo apt-get install -y nmap            # nmap network tool

sudo apt-get install -y tree            # tree command
sudo apt-get install -y mc              # midnight commander
sudo apt-get install -y meld            # meld diff tool

sudo apt-get install -y cmake           # cross platform build system
sudo apt-get install -y qtcreator       # dev IDE

sudo apt-get install -y gparted         # disk partitioning tool
sudo apt-get install -y steam           # gaming stuff

sudo apt-get install -y libsfml-dev
sudo apt-get install -y libboost-dev-all
sudo apt-get install -y libgtest-dev

echo System setup complete.
